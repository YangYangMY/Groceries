using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Drawing;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using static System.Windows.Forms.VisualStyles.VisualStyleElement.ListView;

namespace Groceries.Customer
{
    public partial class ResetPassword : System.Web.UI.Page
    {
        //Open and Link database
        SqlConnection con;
        string strCon = "Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\\GoceriesDatabase.mdf;Integrated Security=True;";
        int acc;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void FormView1_PageIndexChanging(object sender, FormViewPageEventArgs e)
        {
            //con = new SqlConnection(strCon);
            //con.Open();

            ////Customer email Check
            //SqlCommand chkCust = new SqlCommand("SELECT COUNT(*) FROM Customers WHERE ([EmailAddress] = @Email)", con);
            //chkCust.Parameters.AddWithValue("@Email", txtEmail.Text);
            //int CustAccount = (int)chkCust.ExecuteScalar();

            ////Admin email Check
            //SqlCommand chkAdmin = new SqlCommand("SELECT COUNT(*) FROM Admin WHERE ([EmailAddress] = @Email)", con);
            //chkAdmin.Parameters.AddWithValue("@Email", txtEmail.Text);
            //int AdminAccount = (int)chkAdmin.ExecuteScalar();

            //bool signIn = false;
            //string SignInAcc = "";
            ////Check the login account belong to customer or admin

            //if (CustAccount > 0)
            //{
            //    SqlCommand CustSignIn = new SqlCommand("SELECT Password FROM Customers WHERE ([EmailAddress] = @EmailAddress)", con);
            //    CustSignIn.Parameters.AddWithValue("@EmailAddress", txtEmail.Text);
            //    SignInAcc = (string)CustSignIn.ExecuteScalar();
            //    acc = 1;
            //    signIn = true;

            //}
            //else if (AdminAccount > 0)
            //{
            //    SqlCommand AdminSignIn = new SqlCommand("SELECT Password FROM Admin WHERE ([EmailAddress] = @EmailAddress)", con);
            //    AdminSignIn.Parameters.AddWithValue("@EmailAddress", txtEmail.Text);
            //    acc = 2;
            //    SignInAcc = (string)AdminSignIn.ExecuteScalar();
            //    signIn = true;
            //}
            //else
            //{
            //    lblError.Text = "Account not exist\t";
            //    signIn = false;
            //}

            //string confirmPass = txtPass.Text;
            //if (signIn == true)
            //{
            //    if (SignInAcc == confirmPass)
            //    {
            //        PanelSuccessResetPassword.Visible = true;
            //    }
            //    else
            //    {
            //        lblError.Text = "Error Password";
            //    }
            //}

            //// Close the connection
            //con.Close();


            ////Check the login account belongs to customer or admin
            //if (CustAccount > 0)
            //{
            //    PanelSuccessResetPassword.Visible = true;
            //    //lblError.Text = "Correct";
            //    ////SqlCommand NewPass = new SqlCommand("UPDATE Customers SET Password = @newPassword WHERE ([EmailAddress] = @email)", con);
            //    //SqlCommand NewPass = new SqlCommand("UPDATE Customers SET Password = '" + txtConPass.Text + "' WHERE ([EmailAddress] = '" + txtEmail.Text + "')", con);
            //    //NewPass.ExecuteNonQuery();
            //    ////con.Close();
            //    //txtConPass.Text = "";
            //    //txtEmail.Text = "";



            //    //NewPass.Parameters.AddWithValue("@email", txtEmail.Text);
            //    //NewPass.Parameters.AddWithValue("@newPassword", txtConPass.Text);
            //    //int rowsAffected = NewPass.ExecuteNonQuery();

            //    //if (rowsAffected > 0)
            //    //{
            //    //    PanelSuccessResetPassword.Visible = true;
            //    //}
            //    //else
            //    //{
            //    //    PanelSuccessResetPassword.Visible = false;
            //    //    lblError.Text = "Unable to reset password. Please try again.";
            //    //}
            //}
            //else if (AdminAccount > 0)
            //{
            //    PanelSuccessResetPassword.Visible = true;

            //    ////SqlCommand NewPass = new SqlCommand("UPDATE Customers SET Password = @newPassword WHERE ([EmailAddress] = @email)", con);
            //    //SqlCommand NewPass = new SqlCommand("UPDATE Admin SET Password = '" + txtConPass.Text + "' WHERE ([EmailAddress] = '" + txtEmail.Text + "')", con);
            //    //NewPass.ExecuteNonQuery();
            //    ////con.Close();
            //    //txtConPass.Text = "";
            //    //txtEmail.Text = "";

            //    //SqlCommand NewPass = new SqlCommand("UPDATE Admin SET Password = @newPassword WHERE ([EmailAddress] = @email)", con);
            //    //NewPass.Parameters.AddWithValue("@email", txtEmail.Text);
            //    //NewPass.Parameters.AddWithValue("@newPassword", txtConPass.Text);
            //    //int rowsAffected = NewPass.ExecuteNonQuery();

            //    //if (rowsAffected > 0)
            //    //{
            //    //    PanelSuccessResetPassword.Visible = true;
            //    //}
            //    //else
            //    //{
            //    //    PanelSuccessResetPassword.Visible = false;
            //    //    lblError.Text = "Unable to reset password. Please try again.";
            //    //}
            //}
            //else
            //{
            //    PanelSuccessResetPassword.Visible = false;
            //    lblError.Text = "Unable to reset password. Please try again.";
            //}

            //con.Close();
        }

        protected void btnRst_Click(object sender, EventArgs e)
        {
            con = new SqlConnection(strCon);
            con.Open();

            //Customer email Check
            SqlCommand chkCust = new SqlCommand("SELECT COUNT(*) FROM Customers WHERE ([EmailAddress] = @Email)", con);
            chkCust.Parameters.AddWithValue("@Email", txtEmail.Text);
            int CustAccount = (int)chkCust.ExecuteScalar();

            //Admin email Check
            SqlCommand chkAdmin = new SqlCommand("SELECT COUNT(*) FROM Admin WHERE ([EmailAddress] = @Email)", con);
            chkAdmin.Parameters.AddWithValue("@Email", txtEmail.Text);
            int AdminAccount = (int)chkAdmin.ExecuteScalar();

            //Check the login account belongs to customer or admin
            if (CustAccount > 0)
            {
                PanelSuccessResetPassword.Visible = true;
                lblError.Text = "Correct";
                //SqlCommand NewPass = new SqlCommand("UPDATE Customers SET Password = @newPassword WHERE ([EmailAddress] = @email)", con);
                SqlCommand NewPass = new SqlCommand("UPDATE Customers SET Password = '" + txtConPass.Text + "' WHERE ([EmailAddress] = '" + txtEmail.Text + "')", con);
                NewPass.ExecuteNonQuery();
                //con.Close();
                txtConPass.Text = "";
                txtEmail.Text = "";



                NewPass.Parameters.AddWithValue("@email", txtEmail.Text);
                NewPass.Parameters.AddWithValue("@newPassword", txtConPass.Text);
                int rowsAffected = NewPass.ExecuteNonQuery();

                if (rowsAffected > 0)
                {
                    PanelSuccessResetPassword.Visible = true;
                }
                else
                {
                    PanelSuccessResetPassword.Visible = false;
                    lblError.Text = "Unable to reset password. Please try again.";
                }
            }
            else if (AdminAccount > 0)
            {
                PanelSuccessResetPassword.Visible = true;

                //SqlCommand NewPass = new SqlCommand("UPDATE Customers SET Password = @newPassword WHERE ([EmailAddress] = @email)", con);
                //SqlCommand NewPass = new SqlCommand("UPDATE Admin SET Password = '" + txtConPass.Text + "' WHERE ([EmailAddress] = '" + txtEmail.Text + "')", con);
                //NewPass.ExecuteNonQuery();
                //con.Close();
                //txtConPass.Text = "";
                //txtEmail.Text = "";

                SqlCommand NewPass = new SqlCommand("UPDATE Admin SET Password = @newPassword WHERE ([EmailAddress] = @email)", con);
                NewPass.Parameters.AddWithValue("@email", txtEmail.Text);
                NewPass.Parameters.AddWithValue("@newPassword", txtConPass.Text);
                int rowsAffected = NewPass.ExecuteNonQuery();

                if (rowsAffected > 0)
                {
                    PanelSuccessResetPassword.Visible = true;
                }
                else
                {
                    PanelSuccessResetPassword.Visible = false;
                    lblError.Text = "Unable to reset password. Please try again.";
                }
            }
            else
            {
                PanelSuccessResetPassword.Visible = false;
                lblError.Text = "Unable to reset password. Please try again.";
            }

            con.Close();
        }
    }

    
}