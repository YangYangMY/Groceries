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
                    //SqlCommand cmd = con.CreateCommand();
                    //cmd.CommandType = CommandType.Text;
                    //cmd.CommandText = "SELECT CustomerID FROM Customers WHERE EmailAddress='" + Session["user"] + "'";
                    //cmd.ExecuteNonQuery();
                    //DataTable dt = new DataTable();
                    //SqlDataAdapter da = new SqlDataAdapter(cmd);
                    //da.Fill(dt);
                    //foreach(DataRow dr in dt.Rows)
                    //{
                    //    SqlCommand cmd1 = con.CreateCommand();
                    //    cmd1.CommandType = CommandType.Text;
                    //    cmd1.CommandText = "INSERT INTO [Order](OrderID,CustomerID, OrderDate, TotalPrice) VALUES ('" + Session["orderID"] + "', '" + Session["user"] + "', '" + DateTime.Now.ToString("dd-MM-yyyy HH:mm:ss") + "','" + Session["finaltotal"] + "')";
                    //    cmd1.ExecuteNonQuery();

                    DataTable dt;
                    dt = (DataTable)Session["buyitems"];
                    for (int i = 0; i <= dt.Rows.Count - 1; i++)
                    {
                        String updatepass = "INSERT INTO OrderItem(OrderID, ProductID, Quantity, Price) VALUES('" + Session["orderID"] + "', '" + dt.Rows[i]["ProductID"] + "', '" + dt.Rows[i]["Quantity"] + "', '" + dt.Rows[i]["Price"] + "')";
                    }


                }

            }
        }

    }
}
