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
            if (!IsPostBack)
            {
                string strCon = "Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\\GoceriesDatabase.mdf;Integrated Security=True;";
                string query = String.Format("SELECT * FROM [Products] WHERE ProductID='1' OR ProductID='3' OR ProductID='5' OR ProductID='7'");
                SqlConnection con;
                con = new SqlConnection(strCon);
                SqlCommand command = new SqlCommand(query, con);
                con.Open();
                SqlDataReader reader = command.ExecuteReader();
                reptProduct.DataSource = reader;
                reptProduct.DataBind();

                //reptProduct2.DataSource = reader;
                //reptProduct2.DataBind();

                con.Close();



                //// Retrieve the email session variable
                //string email = (string)Session["Email"];

                //// Check if the user is authenticated
                //if (!string.IsNullOrEmpty(email))
                //{
                //    SqlConnection con1;
                //    string strCon1 = "Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\\GoceriesDatabase.mdf;Integrated Security=True;";

                //    using (con1 = new SqlConnection(strCon1))
                //    {
                //        con1.Open();
                //        using (SqlCommand command1 = new SqlCommand("SELECT CustomerName FROM Customers WHERE ([EmailAddress] = @Email)", con1))
                //        {
                //            command1.Parameters.AddWithValue("@Email", email);
                //            string customerName = (string)command1.ExecuteScalar();
                //            // Do something with the data, such as displaying it in a label or textbox
                //            lblWelcomeMsg.Text = "Welcome, " + customerName + " .";
                //        }
                //    }

                //    // The user is authenticated, display a welcome message
                //    PanelCustLoginSuccess.Style.Add("display", "block");

                //    // Set the panel to disappear after 5 seconds

                //    string script = "setTimeout(function() { document.getElementById('" + PanelCustLoginSuccess.ClientID + "').style.display = 'none'; }, 5000);";
                //    ScriptManager.RegisterStartupScript(this, GetType(), "PanelDisappearScript", script, true);

                //}
            }
        }

        protected void reptProduct_ItemCommand(object source, RepeaterCommandEventArgs e)
        {
            int quantity = 1; // set the initial quantity to 1

            Response.Redirect("ShoppingCart.aspx?id=" + e.CommandArgument.ToString() + "&Quantity=" + quantity); // redirect to the shopping cart page
        }
    }
}