using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml.Linq;

namespace Groceries
{
    public partial class HomePage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            // Retrieve the email session variable
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
                        lblWelcomeMsg.Text = "Welcome, " + customerName + " .";
                    }
                }

                // The user is authenticated, display a welcome message
                PanelCustLoginSuccess.Style.Add("display", "block");

                // Set the panel to disappear after 5 seconds

                string script = "setTimeout(function() { document.getElementById('" + PanelCustLoginSuccess.ClientID + "').style.display = 'none'; }, 5000);";
                ScriptManager.RegisterStartupScript(this, GetType(), "PanelDisappearScript", script, true);

            }
        }
    }
}