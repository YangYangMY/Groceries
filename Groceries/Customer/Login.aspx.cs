using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using static System.Windows.Forms.VisualStyles.VisualStyleElement.ListView;

namespace Groceries
{
    public partial class Login : System.Web.UI.Page
    {
        //Open and Link database
        SqlConnection con;
        string strCon = "Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\\GoceriesDatabase.mdf;Integrated Security=True;";
        int acc;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                //Cookies is available
                if (Request.Cookies["Email"] != null && Response.Cookies["Pass"] != null)
                {
                    txtEmail.Text = Request.Cookies["Email"].Value;
                    txtPass.Attributes["value"] = Request.Cookies["Pass"].Value; 
                }
            }
        }

        protected void ibtnGoogle_Click(object sender, ImageClickEventArgs e)
        {

        }

        protected void ibtnFacebook_Click(object sender, ImageClickEventArgs e)
        {

        }

        protected void ibtnInstagram_Click(object sender, ImageClickEventArgs e)
        {

        }

        protected void CheckBox1_CheckedChanged(object sender, EventArgs e)
        {
           
        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            string cs = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
            con = new SqlConnection(strCon);
            con.Open();

            //Customer email Check
            SqlCommand chkCust = new SqlCommand("SELECT COUNT(*) FROM Customers WHERE ([EmailAddress] = @EmailAddress)", con);
            chkCust.Parameters.AddWithValue("@EmailAddress", txtEmail.Text);
            int CustAccount = (int)chkCust.ExecuteScalar();
            //Admin email Check
            SqlCommand chkAdmin = new SqlCommand("SELECT COUNT(*) FROM Admin WHERE ([EmailAddress] = @EmailAddress)", con);
            chkAdmin.Parameters.AddWithValue("@EmailAddress", txtEmail.Text);
            int AdminAccount = (int)chkAdmin.ExecuteScalar();

            bool signIn = false;
            string SignInAcc = "";
            //Check the login account belong to customer or admin
            
            
            if (CustAccount > 0)
            {
                SqlCommand CustSignIn = new SqlCommand("SELECT Password FROM Customers WHERE ([EmailAddress] = @EmailAddress)", con);
                CustSignIn.Parameters.AddWithValue("@EmailAddress", txtEmail.Text);
                SignInAcc = (string)CustSignIn.ExecuteScalar(); 
                acc = 1;
                signIn = true;

            }
            else if (AdminAccount > 0)
            {
                SqlCommand AdminSignIn = new SqlCommand("SELECT Password FROM Admin WHERE ([EmailAddress] = @EmailAddress)", con);
                AdminSignIn.Parameters.AddWithValue("@EmailAddress", txtEmail.Text);
                acc = 2;
                SignInAcc = (string)AdminSignIn.ExecuteScalar();
                signIn = true;
            }
            else
            {
                lblDisplayError.Text = "Account not exist\t";
                signIn = false;
            }

            string SignAccount = SignInAcc.Replace(" ", "");
            if (CustAccount > 0 || AdminAccount > 0)
            {
                if (chkRemember.Checked)
                {
                    Response.Cookies["Email"].Value = txtEmail.Text;
                    Response.Cookies["Pass"].Value = SignAccount;
                    Response.Cookies["Emal"].Expires = DateTime.Now.AddMinutes(1);
                    Response.Cookies["Pass"].Expires = DateTime.Now.AddMinutes(1);

                }
                else
                {
                    Response.Cookies["Emal"].Expires = DateTime.Now.AddMinutes(-1);
                    Response.Cookies["Pass"].Expires = DateTime.Now.AddMinutes(-1);
                }
            }

            string confirmPass = txtPass.Text;
            if(signIn == true)
            {
                if (SignAccount == confirmPass)
                {

                    // The email and password are valid, do something
                    if (acc == 1)
                    {
                        SqlCommand command = new SqlCommand("SELECT CustomerID FROM Customers WHERE EmailAddress = @Email", con);
                        command.Parameters.AddWithValue("@Email", txtEmail.Text);
                        SqlDataReader reader = command.ExecuteReader();
                        if (reader.HasRows)
                        {
                            reader.Read();
                            int customerID = reader.GetInt32(0);
                            Session["user"] = customerID; // store the customer ID in a session
                        }
                        reader.Close();
                        Response.Redirect("HomePage.aspx");
                    }
                    else
                    {
                        SqlCommand command = new SqlCommand("SELECT AdminID FROM Admin WHERE EmailAddress = @Email", con);
                        command.Parameters.AddWithValue("@Email", txtEmail.Text);
                        SqlDataReader reader = command.ExecuteReader();
                        if (reader.HasRows)
                        {
                            reader.Read();
                            int adminID = reader.GetInt32(0);
                            Session["user"] = adminID; // store the customer ID in a session
                        }
                        reader.Close();
                        Response.Redirect("~/Admin/Dashboard.aspx");
                    }
                    
                }
                else
                {
                    // The email exists, but the password is incorrect, do something else
                    lblDisplayError.Text = "Unmatch password. Please enter a valid password.\t";
                }
            }

            // Close the connection
            con.Close();

        }

            
    }
}