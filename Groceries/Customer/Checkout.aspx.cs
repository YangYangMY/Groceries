using System;
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

namespace Groceries.Customer
{
    public partial class Checkout : System.Web.UI.Page
    {
        string cs = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                int customerID = 1; // Replace with the actual ID of the customer whose address you want to retrieve
                using (SqlConnection con = new SqlConnection(cs))
                {
                    con.Open();
                    string query = "SELECT * FROM Address WHERE CustomerID = @CustomerID"; 
                    SqlCommand command = new SqlCommand(query, con);
                    command.Parameters.AddWithValue("@CustomerID", customerID);
                    SqlDataReader reader = command.ExecuteReader();
                    if (reader.Read())
                    {
                        txtName.Text = reader["SavedName"].ToString();
                        txtContact.Text = reader["SavedContact"].ToString();
                        txtStreet.Text = reader["Street"].ToString();
                        txtState.Text = reader["State"].ToString();
                        txtPostalCode.Text = reader["PostCode"].ToString();
                        txtCity.Text = reader["City"].ToString();
                    }
                    reader.Close();
                    con.Close();
                }
            }
        }

        protected void btnCheckout_Click(object sender, EventArgs e)
        {
            using (SqlConnection con = new SqlConnection(cs))
            {
                //string customerID = Session["CustomerID"].ToString();
                int customerID = 1;
                con.Open();
                string query = "INSERT INTO Address (SavedName, SavedContact, Street, State, PostCode, City, CustomerID) VALUES (@Name, @Contact, @Street, @State,  @PostalCode, @City, @CustomerID)";
                SqlCommand command = new SqlCommand(query, con);
                command.Parameters.AddWithValue("@Name", txtName.Text);
                command.Parameters.AddWithValue("@Contact", txtContact.Text);
                command.Parameters.AddWithValue("@Street", txtStreet.Text);
                command.Parameters.AddWithValue("@State", txtState.Text);
                command.Parameters.AddWithValue("@PostalCode", txtPostalCode.Text);
                command.Parameters.AddWithValue("@City", txtCity.Text);
                command.Parameters.AddWithValue("@CustomerID", customerID.ToString());
                command.ExecuteNonQuery();
                con.Close();
            }
            Response.Write("<script>alert('Delivery Address Added Successfully')</script>");
            Response.Redirect("Checkout.aspx");
        }

        protected void AddressGridView_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}