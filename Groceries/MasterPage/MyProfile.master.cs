using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Configuration;

namespace Groceries.MasterPage
{
    public partial class MyProfile : System.Web.UI.MasterPage
    {
        string cs = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
           

            // Check if the user is authenticated
            if (Session["user"] != null && !String.IsNullOrEmpty(Session["user"].ToString()))
            {
                int custID = (int)Session["user"];

                SqlConnection con;
                string strCon = "Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\\GoceriesDatabase.mdf;Integrated Security=True;";

                using (con = new SqlConnection(strCon))
                {
                    con.Open();
                    using (SqlCommand command = new SqlCommand("SELECT CustomerName FROM Customers WHERE ([CustomerID] = @user)", con))
                    {
                        command.Parameters.AddWithValue("@user", custID);
                        string customerName = (string)command.ExecuteScalar();
                        // Do something with the data, such as displaying it in a label or textbox
                        lblName.Text = customerName;
                    }
                }

            }

        }

        protected void btnSignOut_Click(object sender, EventArgs e)
        {
            
            // Clear the session
            Session.Abandon();
            PanelConfirmSignOut.Visible = true;
            //Response.Redirect("~/Customer/HomePage.aspx");

            //saved shopping cart into database

            //DataTable dt;
            //dt = (DataTable)Session["buyitems"];

            //for (int i = 0; i <= dt.Rows.Count - 1; i++)
            //{
            //    String savedCart = "INSERT INTO SavedCart(no,ProductID,ProductName,UnitPrice,Quantity,TotalPrice,CustomerID) VALUES(" + dt.Rows[i]["no"] + ", " + dt.Rows[i]["ProductID"] + ", '" + dt.Rows[i]["ProductName"] + "'," + dt.Rows[i]["UnitPrice"] + ", " + dt.Rows[i]["Quantity"] + "," + dt.Rows[i]["TotalPrice"] + ",'" + Session["user"] + "')";
            //    SqlConnection s = new SqlConnection(cs);
            //    s.Open();
            //    SqlCommand cmd = new SqlCommand();
            //    cmd.CommandText = savedCart;
            //    cmd.Connection = s;
            //    cmd.ExecuteNonQuery();
            //    s.Close();
            //}


        }
    }
}