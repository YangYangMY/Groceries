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
            string email = (string)Session["Email"];
            // Check if the user is authenticated
            if (!string.IsNullOrEmpty(email))
            {
                SqlConnection con;
                string strCon = "Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\\GoceriesDatabase.mdf;Integrated Security=True;";

                using (con = new SqlConnection(strCon))
                {
                    con.Open();
                    using (SqlCommand command = new SqlCommand("SELECT CustomerName FROM Customers WHERE ([EmailAddress] = @Email)", con))
                    {
                        command.Parameters.AddWithValue("@Email", email);
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