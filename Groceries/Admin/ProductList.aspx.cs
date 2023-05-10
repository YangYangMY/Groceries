using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Drawing;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using static System.Windows.Forms.VisualStyles.VisualStyleElement.ListView;
using System.Xml.Linq;

namespace Groceries.Admin.Product
{
    public partial class ProductList : System.Web.UI.Page
    {
        //Open and Link database
        SqlConnection con;
        string strCon = "Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\\GoceriesDatabase.mdf;Integrated Security=True;";

        //for check row
        static int selectedID = 0;

        protected void Page_Load(object sender, EventArgs e)
        {

        }


        protected void ButtonCancel_Click(object sender, EventArgs e)
        {
            PanelEditProduct.Visible = false;
            PanelProductTable.Visible = true;
        }

        protected void ButtonUpdate_Click(object sender, EventArgs e)
        {
            //Reading Data input
            String name = TextBoxName.Text;
            String category = ddlProductCategory.SelectedValue;
            String desc = TextBoxDesc.Text;
            int stock = 0;
            decimal price = 0;
            if (!string.IsNullOrEmpty(TextBoxStock.Text) && int.TryParse(TextBoxStock.Text, out int parsedStock))
            {
                stock = parsedStock;
            }
            if (!string.IsNullOrEmpty(TextBoxPrice.Text) && decimal.TryParse(TextBoxPrice.Text, out decimal parsedPrice))
            {
                price = parsedPrice;
            }
            bool namePass = false, descPass = false, stockPass = false, pricePass = false;

            //Open and Link database
            SqlConnection con;
            string strCon = "Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\\GoceriesDatabase.mdf;Integrated Security=True;";
            con = new SqlConnection(strCon);
            con.Open();

            //Command for update
            SqlCommand Updatecmd;
            SqlDataAdapter Updateadapter = new SqlDataAdapter();
            String Updatesql = "";

            //VALIDATION
            if (name.Length == 0)
            {
                LabelErrorProductName.Text = "Product name cannot be empty";
                namePass = false;
            }
            else if (name.Length < 3)
            {
                LabelErrorProductName.Text = "Product name should be at least 3 characters";
                namePass = false;
            }
            else
            {
                LabelErrorProductName.Text = "";
                namePass = true;
            }
            if (desc.Length < 5)
            {
                LabelErrorDescription.Text = "Description is too short";
                descPass = false;
            }
            else
            {
                LabelErrorDescription.Text = "";
                descPass = true;
            }
            if (stock <= 0)
            {
                LabelErrorStock.Text = "Stock should be more than 0.";
                stockPass = false;
            }
            else
            {
                LabelErrorStock.Text = "";
                stockPass = true;
            }
            if (price <= 0)
            {
                LabelErrorPrice.Text = "Price should be more than RM 0.";
                pricePass = false;
            }
            else
            {
                LabelErrorPrice.Text = "";
                pricePass = true;
            }


            if (namePass && descPass && stockPass && pricePass)
            {
                //Update Data
                Updatesql = "UPDATE Products SET ProductName='" + name + "',Description='" + desc + "',UnitPrice='" + price + "',UnitInStock='" + stock + "',CategoryID=" + category + " WHERE ProductID=" + selectedID;
                Updatecmd = new SqlCommand(Updatesql, con);
                Updateadapter.InsertCommand = new SqlCommand(Updatesql, con);
                Updateadapter.InsertCommand.ExecuteNonQuery();
                Updatecmd.Dispose();


                PanelEditProduct.Visible = false;
                PanelProductTable.Visible = true;

                con.Close();
                Response.Redirect(Request.RawUrl);
            }

        }

        protected void GridViewProductList_SelectedIndexChanged(object sender, EventArgs e)
        {
            //Open and Link database
            SqlConnection con;
            string strCon = "Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\\GoceriesDatabase.mdf;Integrated Security=True;";
            con = new SqlConnection(strCon);
            con.Open();

            //SQL Command for read data
            SqlCommand readCmd;
            SqlDataReader dataReader;
            String readSql;
            int idcount = 1;

            // Get the currently selected row using the SelectedRow property.
            GridViewRow row = GridViewProductList.SelectedRow;
            selectedID = int.Parse(row.Cells[0].Text);

            //Initialise value
            string productname = null;
            string productdescription = null;
            string productprice = null;
            string productstock = null;
            string categoryid = null;

            //Read other data
            readSql = "Select * from Products";
            readCmd = new SqlCommand(readSql, con);
            dataReader = readCmd.ExecuteReader();
            while (dataReader.Read())
            {

                if (idcount == selectedID)
                {
                    productname = dataReader.GetValue(1).ToString();
                    productdescription = dataReader.GetValue(2).ToString();
                    productprice = dataReader.GetValue(3).ToString();
                    productstock = dataReader.GetValue(4).ToString();
                    categoryid = dataReader.GetValue(6).ToString();
                    break;
                }
                else
                {
                    idcount++;
                }
            }
            dataReader.Close();
            readCmd.Dispose();
            con.Close();

            //Set value accordingly
            TextBoxName.Text = productname;
            TextBoxDesc.Text = productdescription;
            ddlProductCategory.SelectedValue = categoryid;
            TextBoxPrice.Text = productprice;
            TextBoxStock.Text = productstock;

            PanelEditProduct.Visible = true;
            PanelProductTable.Visible = false;
        }
    }
}