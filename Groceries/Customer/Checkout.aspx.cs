﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.Drawing;
using System.Net.NetworkInformation;
using System.Xml.Linq;
using Org.BouncyCastle.Utilities.Collections;
using System.Reflection;
using System.Windows.Forms;
using System.Data.Common;
using static System.Windows.Forms.VisualStyles.VisualStyleElement.ListView;

namespace Groceries.Customer
{
    public partial class Checkout : System.Web.UI.Page
    {
        string cs = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                // Replace with the actual ID of the customer whose address you want to retrieve
                int customerID = Convert.ToInt32(Session["user"]); 

                AddressDataSource.SelectCommand =
                "SELECT Address.AddressID, Address.SavedName, Address.SavedContact, Address.Street, Address.State, Address.Postcode, Address.City " +
                " FROM Address" +
                " INNER JOIN Customers ON Address.CustomerID = Customers.CustomerID" +
                " WHERE Address.CustomerID = " + customerID;
            }
        }

        protected void btnCheckout_Click(object sender, EventArgs e)
        {
            string name = txtName.Text;
            string contact = txtContact.Text;
            string street = txtStreet.Text;
            string city = txtCity.Text;
            string state = txtState.Text;
            string code = txtPostalCode.Text;
            bool namepass= false, contactpass=false, streetpass=false, citypass=false, statepass=false, codepass=false;

            if(name == "")
            {
                LabelErrorName.Text = "Name cannot be empty";
            }
            else
            {
                LabelErrorName.Text = "";
                namepass = true;
            }
            if(contact == "")
            {
                LabelErrorContact.Text = "Contact cannot be empty";
            }
            else
            {
                LabelErrorContact.Text = "";
                contactpass = true;
            }
            if(street == "")
            {
                LabelErrorStreet.Text = "Street cannot be empty";
            }
            else
            {
                LabelErrorStreet.Text = "";
                streetpass = true;
            }
            if(city == "")
            {
                LabelErrorCity.Text = "City cannot be empty";
            }
            else
            {
                LabelErrorCity.Text = "";
                citypass = true;
            }
            if(state == "")
            {
                LabelErrorState.Text = "State cannot be empty";
            }
            else
            {
                LabelErrorState.Text = "";
                statepass = true;
            }
            if(code == "")
            {
                LabelErrorCode.Text = "Postal code cannot be empty";
            }
            else
            {
                LabelErrorCode.Text = "";
                codepass = true;
            }

            if(namepass && contactpass && streetpass && citypass && statepass && codepass)
            {
                using (SqlConnection con = new SqlConnection(cs))
                {
                    //SQL Command for read data
                    SqlCommand readCmd;
                    SqlDataReader dataReader;
                    String readSql;
                    int idcount = 0;


                    con.Open();

                    readSql = "Select AddressID from Address";
                    readCmd = new SqlCommand(readSql, con);
                    dataReader = readCmd.ExecuteReader();
                    while (dataReader.Read())
                    {
                        idcount++;
                    }
                    idcount += 1;
                    dataReader.Close();
                    readCmd.Dispose();

                    //string customerID = Session["CustomerID"].ToString();
                    int customerID = Convert.ToInt32(Session["user"]);

                    string query = "INSERT INTO Address (AddressID, SavedName, SavedContact, Street, State, PostCode, City, CustomerID) VALUES (" + idcount + ",'" + txtName.Text + "','" + txtContact.Text + "','" + txtStreet.Text + "','" + txtState.Text + "','" + txtPostalCode.Text + "','" + txtCity.Text + "','" + customerID.ToString() + "')";
                    SqlCommand command = new SqlCommand(query, con);
                    command.ExecuteNonQuery();
                    con.Close();
                }
                PanelAddAddress.Visible = false;
                Response.Write("<script>alert('Delivery Address Added Successfully')</script>");
                Response.Redirect("Checkout.aspx");
            }
           
        }

        protected void AddressGridView_SelectedIndexChanged(object sender, EventArgs e)
        {
            // Get the currently selected row using the SelectedRow property.
            GridViewRow row = AddressGridView.SelectedRow;
            int selectedID = int.Parse(row.Cells[0].Text);

            Session["address"] = selectedID;
        }

        protected void btnProceedPayment_Click(object sender, EventArgs e)
        {
            if(AddressGridView.SelectedIndex == -1)
            {
                LabelErrorAddress.Text = "Please select an address";
            }
            else
            {
                Response.Redirect("~/Customer/PaymentGateway.aspx");
            }   
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            PanelAddAddress.Visible = true;
        }

        protected void btnCloseModal_Click(object sender, EventArgs e)
        {
            PanelAddAddress.Visible = false;
        }
    }
}