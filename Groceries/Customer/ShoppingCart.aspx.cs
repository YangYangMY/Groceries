﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

namespace Groceries.Customer
{
    public partial class ShoppingCart : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                DataTable dt = new DataTable();
                DataRow dr;
                dt.Columns.Add("no");
                dt.Columns.Add("ProductID");
                dt.Columns.Add("ProductName");
                dt.Columns.Add("UnitPrice");
                dt.Columns.Add("Quantity");
                dt.Columns.Add("totalprice");


                if (Request.QueryString["id"] != null)
                {
                    if (Session["Buyitems"] == null)
                    {
                        dr = dt.NewRow();
                        String mycon = "Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\\GoceriesDatabase.mdf;Integrated Security=True;";
                        SqlConnection scon = new SqlConnection(mycon);
                        //String myquery = "select ProductID, ProductName, UnitPrice from Products where ProductID=" + Request.QueryString["id"];
                        String myquery = "select ProductID, ProductName, UnitPrice from Products where ProductID ='" + Request.QueryString["id"] + "'";
                        SqlCommand cmd = new SqlCommand();
                        cmd.CommandText = myquery;
                        cmd.Connection = scon;
                        SqlDataAdapter da = new SqlDataAdapter();
                        da.SelectCommand = cmd;
                        DataSet ds = new DataSet();
                        da.Fill(ds);
                        dr["no"] = 1;
                        dr["ProductID"] = ds.Tables[0].Rows[0]["ProductID"].ToString();
                        dr["ProductName"] = ds.Tables[0].Rows[0]["ProductName"].ToString();
                        dr["Quantity"] = Request.QueryString["Quantity"];
                        dr["UnitPrice"] = ds.Tables[0].Rows[0]["UnitPrice"].ToString();
                        Decimal unitprice = Convert.ToDecimal(ds.Tables[0].Rows[0]["UnitPrice"].ToString());
                        int quantity = Convert.ToInt16(Request.QueryString["Quantity"].ToString());
                        decimal totalprice = unitprice * quantity;
                        dr["totalprice"] = totalprice;

                        dt.Rows.Add(dr);
                        GridView1.DataSource = dt;
                        GridView1.DataBind();

                        Session["buyitems"] = dt;
                        GridView1.FooterRow.Cells[4].Text = "Total Amount";
                        GridView1.FooterRow.Cells[5].Text = grandtotal().ToString();
                        Response.Redirect("ShoppingCart.aspx");
                    }
                    else
                    {
                        dt = (DataTable)Session["buyitems"];
                        int sr;
                        sr = dt.Rows.Count;
                        dr = dt.NewRow();
                        String mycon = "Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\\GoceriesDatabase.mdf;Integrated Security=True;";
                        SqlConnection scon = new SqlConnection(mycon);
                        String myquery = "select ProductID, ProductName, UnitPrice from Products where ProductID ='" + Request.QueryString["id"] + "'";
                        SqlCommand cmd = new SqlCommand();
                        cmd.CommandText = myquery;
                        cmd.Connection = scon;
                        SqlDataAdapter da = new SqlDataAdapter();
                        da.SelectCommand = cmd;
                        DataSet ds = new DataSet();
                        da.Fill(ds);
                        dr["no"] = sr + 1;
                        dr["ProductID"] = ds.Tables[0].Rows[0]["ProductID"].ToString();
                        dr["ProductName"] = ds.Tables[0].Rows[0]["ProductName"].ToString();
                        dr["UnitPrice"] = ds.Tables[0].Rows[0]["UnitPrice"].ToString();
                        dr["Quantity"] = Request.QueryString["Quantity"];
                        Decimal unitprice = Convert.ToDecimal(ds.Tables[0].Rows[0]["UnitPrice"].ToString());
                        int quantity = Convert.ToInt16(Request.QueryString["Quantity"].ToString());
                        decimal totalprice = unitprice * quantity;
                        dr["totalprice"] = totalprice;

                        dt.Rows.Add(dr);
                        GridView1.DataSource = dt;
                        GridView1.DataBind();

                        Session["buyitems"] = dt;
                        GridView1.FooterRow.Cells[7].Text = "Total";
                        GridView1.FooterRow.Cells[8].Text = grandtotal().ToString();
                        Response.Redirect("ShoppingCart.aspx");
                    }
                }
                else
                {
                    dt = (DataTable)Session["buyitems"];
                    GridView1.DataSource = dt;
                    GridView1.DataBind();
                    if (GridView1.Rows.Count > 0)
                    {
                        GridView1.FooterRow.Cells[7].Text = "Total";
                        GridView1.FooterRow.Cells[8].Text = grandtotal().ToString();
                    }
                }
            }

        }

        //grandtotal function
        public decimal grandtotal()
        {
            DataTable dt = new DataTable();
            dt = (DataTable)Session["buyitems"];
            int nrow = dt.Rows.Count;
            int i = 0;
            decimal totalprice = 0;
            while (i < nrow)
            {
                totalprice = totalprice + Convert.ToDecimal(dt.Rows[i]["totalprice"].ToString());
                i = i + 1;
            }
            return totalprice;
        }

        protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            DataTable dt = new DataTable();
            dt = (DataTable)Session["buyitems"];

            for (int i = 0; i <= dt.Rows.Count - 1; i++)
            {
                int sr;
                int sr1;
                string qdata;
                string dtdata;
                sr = Convert.ToInt32(dt.Rows[i]["no"].ToString());
                TableCell cell = GridView1.Rows[e.RowIndex].Cells[0];
                qdata = cell.Text;
                dtdata = sr.ToString();
                sr1 = Convert.ToInt32(qdata);

                if (sr == sr1)
                {
                    dt.Rows[i].Delete();
                    dt.AcceptChanges();
                    break;
                }
            }
            for (int i = 1; i <= dt.Rows.Count; i++)
            {
                dt.Rows[i - 1]["no"] = i;
                dt.AcceptChanges();
            }
            Session["buyitems"] = dt;
            Response.Redirect("ShoppingCart.aspx");

        }

        protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
        {
                DataTable dt = new DataTable();
                dt = (DataTable)Session["buyitems"];
                int index;
                bool bIsConverted = int.TryParse(e.CommandArgument.ToString(), out index);


                if (e.CommandName == "Increment")
                {
                    GridViewRow row = (GridViewRow)((Control)e.CommandSource).NamingContainer;
                    int rowIndex = row.RowIndex;

                    // Increment the quantity for the corresponding row
                    int quantity = Convert.ToInt32(GridView1.Rows[rowIndex].Cells[5].Text);
                    quantity++;
                    GridView1.Rows[rowIndex].Cells[5].Text = quantity.ToString();

                    // Update the total price for the corresponding row
                    decimal unitprice = Convert.ToDecimal(GridView1.Rows[rowIndex].Cells[3].Text);
                    decimal totalprice = unitprice * quantity;
                    GridView1.Rows[rowIndex].Cells[8].Text = totalprice.ToString();
                    //GridView1.FooterRow.Cells[8].Text = grandtotal().ToString();

                    dt.Rows[rowIndex]["Quantity"] = quantity.ToString();
                    dt.Rows[rowIndex]["totalprice"] = totalprice.ToString();
                    
                    Session["buyitems"] = dt;
                    GridView1.FooterRow.Cells[8].Text = grandtotal().ToString();


            }
                else if (e.CommandName == "Decrement")
                {

                    GridViewRow row = (GridViewRow)((Control)e.CommandSource).NamingContainer;
                    int rowIndex = row.RowIndex;

                    // Decrement the quantity for the corresponding row
                    int quantity = Convert.ToInt32(GridView1.Rows[rowIndex].Cells[5].Text);
                    quantity--;
                    GridView1.Rows[rowIndex].Cells[5].Text = quantity.ToString();

                    // Update the total price for the corresponding row
                    decimal unitprice = Convert.ToDecimal(GridView1.Rows[rowIndex].Cells[3].Text);
                    decimal totalprice = unitprice * quantity;
                    GridView1.Rows[rowIndex].Cells[8].Text = totalprice.ToString();
                    GridView1.FooterRow.Cells[8].Text = grandtotal().ToString();

                    if (quantity < 1)
                    {
                        // Call GridView1_RowDeleting
                        GridViewDeleteEventArgs deleteArgs = new GridViewDeleteEventArgs(rowIndex);
                        GridView1_RowDeleting(sender, deleteArgs);
                    }

                }
           
          
        }
    }
}