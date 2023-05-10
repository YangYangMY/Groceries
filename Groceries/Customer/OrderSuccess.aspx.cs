using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.Net.NetworkInformation;
using System.Xml.Linq;

namespace Groceries.Customer
{
    public partial class OrderSuccess : System.Web.UI.Page
    {
        string cs = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            using (SqlConnection con = new SqlConnection(cs))
            {
                con.Open();
                string orderID = Request.QueryString["order"];

                if (orderID == Session["orderID"].ToString())
                {
                    //, '" + dt.Rows[i]["Price"] + "'
                    //'" + Session["user"] + "',

                    DataTable dt;
                    dt = (DataTable)Session["buyitems"];
                    String updateCart = "INSERT INTO [Order](OrderID,OrderDate, TotalPrice, CustomerID,AddressID) VALUES ('" + Session["orderID"] + "',  '" + DateTime.Now.ToString("dd-MM-yyyy HH:mm:ss") + "','" + Session["finaltotal"] + "','" + Session["user"] + "','" + Session["address"] + "')";
                    SqlConnection s = new SqlConnection(cs);
                    s.Open();
                    SqlCommand cmd = new SqlCommand();
                    cmd.CommandText = updateCart;
                    cmd.Connection = con;
                    cmd.ExecuteNonQuery();
                    s.Close();
                    for (int i=0; i<=dt.Rows.Count-1; i++) {
                        String updateCartItem = "INSERT INTO OrderItem(OrderID, ProductID, Quantity) VALUES('" + Session["orderID"] + "', '" + dt.Rows[i]["ProductID"] + "', '" + dt.Rows[i]["Quantity"] + "')";
                        s.Open();
                        SqlCommand cmd1 = new SqlCommand();
                        cmd1.CommandText = updateCartItem;
                        cmd1.Connection = s;
                        cmd1.ExecuteNonQuery();
                        s.Close();
                    }   

                }
                Session.Remove("buyitems");
                Session.Remove("finaltotal");

            }
        }

    }
}
