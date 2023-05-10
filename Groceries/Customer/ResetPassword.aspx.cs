using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Drawing;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Groceries.Customer
{
    public partial class ResetPassword : System.Web.UI.Page
    {
        //Open and Link database
        SqlConnection con;
        string strCon = "Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\\GoceriesDatabase.mdf;Integrated Security=True;";

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void FormView1_PageIndexChanging(object sender, FormViewPageEventArgs e)
        {

            // Define the query to update the user's password
            string updateQuery = "UPDATE Customers SET Password = @newPassword WHERE EmailAddress = @email";

            // Get the user's username and new password (for example, from a password reset form)
            string Email = txtEmail.Text; // replace with the user's actual username
            string NewPassword = txtConPass.Text; // replace with the user's desired new password

            // Open a connection to the database
            using (con = new SqlConnection(strCon))
            {
                con.Open();

                // Create a command object with the update query and parameters
                using (SqlCommand command = new SqlCommand(updateQuery, con))
                {
                    command.Parameters.AddWithValue("@email", Email);
                    command.Parameters.AddWithValue("@newPassword", NewPassword);

                    // Execute the command and get the number of rows affected
                    int rowsAffected = command.ExecuteNonQuery();

                    if (rowsAffected > 0)
                    {
                        // Password was successfully reset
                        // You can redirect the user to a success page, show a success message, etc.
                        PanelSuccessResetPassword.Visible = true;
                    }
                    else
                    {
                        // Password was not reset for some reason (e.g. user not found)
                        // You can redirect the user to an error page, show an error message, etc.
                        lblError.Text = "Unable to reset password. Please try again.";
                    }
                }

                con.Close();
            }
        }

        protected void txtEmail_TextChanged(object sender, EventArgs e)
        {

        }

        protected void txtPass_TextChanged(object sender, EventArgs e)
        {

        }
    }
}