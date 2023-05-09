using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Groceries
{
    public partial class Login : System.Web.UI.Page
    {
        SqlConnection con;
        string strCon = "Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\\GoceriesDatabase.mdf;Integrated Security=True;";
        protected void Page_Load(object sender, EventArgs e)
        {
            
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
            try
            {
                con.Open();
                SqlCommand cmd = new SqlCommand("select count(*) from Customers where EmailAddress ='" + txtEmail.Text + "' and password ='"+ txtPass.Text +"' ", con);
                SqlDataAdapter sda = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                sda.Fill(dt);
                cmd.ExecuteNonQuery();
                if (dt.Rows[0][0] == "1")
                {
                    Response.Write("<script>alert('Successful in login')</script>");
                }
                else
                {
                    Response.Write("<script>alert('error in login')</script>");
                }
            }catch(Exception ex)
            {
                Response.Write(ex.Message); 
            }


        }
    }
}