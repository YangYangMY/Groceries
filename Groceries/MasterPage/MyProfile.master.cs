using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Groceries.MasterPage
{
    public partial class MyProfile : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            // Retrieve the email session variable
            int custID = (int)Session["user"];

            // Check if the user is authenticated
            if (Session["user"] != null && !String.IsNullOrEmpty(Session["user"].ToString()))
            {
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
        }
    }
}