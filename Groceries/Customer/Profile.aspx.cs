using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Groceries.Customer
{
    public partial class Profile : System.Web.UI.Page
    {


        StringBuilder table = new StringBuilder();
        protected void Page_Load(object sender, EventArgs e)
        {
            // Check if the user is authenticated
            if (User.Identity.IsAuthenticated)
            {
                // Check if the user is authenticated
                if (User.Identity.IsAuthenticated)
                {
                    // Retrieve the email session variable
                    string userEmail = (string)Session["userEmail"];

                    // Get the user data from the cookie
                    HttpCookie userData = Request.Cookies["userData"];
                    if (userData != null)
                    {
                        string userName = userData["userName"];
                        string userRole = userData["userRole"];

                        // Display the user data in labels or textboxes
                        lblEmail.Text = userEmail;
                        lblName.Text = userName;
                    }
                }
                else
                {
                    // The user is not authenticated, redirect to the login page
                    Response.Redirect("Login.aspx");
                }

                // Retrieve the email session variable
                int custID = (int)Session["user"];

                // Check if the user is authenticated
                if (Session["user"] != null && !String.IsNullOrEmpty(Session["user"].ToString()))
                {
                    // Get the user data from the database based on the email session
                    //Open and Link database
                    SqlConnection con;
                    string strCon = "Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\\GoceriesDatabase.mdf;Integrated Security=True;";
                    using (con = new SqlConnection(strCon))
                    {
                        con.Open();
                        using (SqlCommand command = new SqlCommand("SELECT CustomerID, CustomerName, Password, BirthDate, PhoneNumber, EmailAddress FROM Customers WHERE ([CustomerID] = @user)", con))
                        {
                            command.Parameters.AddWithValue("@user", custID);
                            SqlDataReader reader = command.ExecuteReader();
                            if (reader.HasRows)
                            {
                                while (reader.Read())
                                {
                                    int CustomerID = reader.GetInt32(0);
                                    string CustomerName = reader.GetString(1);
                                    string Password = reader.GetString(2);
                                    DateTime BirthDate = DateTime.Parse(reader.GetString(3));
                                    string PhoneNumber = reader.GetString(4);
                                    string EmailAddress = reader.GetString(5);

                                    // Do something with the user data, such as displaying it in labels or textboxes
                                    lblID.Text = CustomerID.ToString();
                                    lblName.Text = CustomerName;

                                    string SetPassword = "mypassword";
                                    // Set the password label's text to asterisks
                                    lblPass.Text = new string('*', SetPassword.Length);

                                    SetPassword = Password;

                                    // Set the password label's tooltip to the actual password
                                    lblPass.ToolTip = SetPassword;


                                    lblBirth.Text = BirthDate.ToString("yyyy-MM-dd");
                                    lblPnum.Text = PhoneNumber;
                                    lblEmail.Text = EmailAddress;
                                }
                            }
                        }
                    }
                }

            }
        }
    }
}