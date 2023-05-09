using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net.NetworkInformation;
using System.Xml.Linq;

namespace Groceries.Customer
{

    public partial class andrew : System.Web.UI.Page
    {
        SqlConnection con;
        string strCon = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;

        //string strCon = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {

        }


        protected void ButtonCreate_Click(object sender, EventArgs e)
        {
            //con = new SqlConnection(strCon);
            //con.Open();
            ////System Input 
            //String nameInput = txtName.Text;
            //String passInput = txtPass.Text;
            //String pnumInput = txtPnumber.Text;
            //String emailInput = txtEmail.Text;
            //String birthInput = txtBirthday.Text;
            ////SQL Statement
            ////DateTime datetime = DateTime.ParseExact(txtBirthday.Text, "dd/MM/yyyy", null);
            ////datetime = Convert.ToDateTime(datetime, System.Globalization.CultureInfo.GetCultureInfo("hi-IN").DateTimeFormat);
            ////"hi-IN" is culture information about India. You can change as per culture like French, German, etc.  

            //string strAddCust = "insert into Customers (CustomerName, Password, BirthDate, PhoneNumber, EmailAddress) values('" + nameInput + "," + passInput + "," + birthInput + "," + pnumInput + "," + emailInput + "')";
            ////Need sqlcommand to execute sql query
            //SqlCommand cmd = new SqlCommand(strAddCust, con);

            //cmd.ExecuteNonQuery();

            //con.Close();

            using (SqlConnection con = new SqlConnection(strCon))
            {
                //string customerID = Session["CustomerID"].ToString();
                //int customerID = 1;
                con.Open();
                string query = "INSERT INTO Customers (CustomerName, Password, BirthDate, PhoneNumber, EmailAddress)  VALUES (@Name, @pass, @birth, @pnum,  @email)";
                SqlCommand command = new SqlCommand(query, con);
                command.Parameters.AddWithValue("@Name", txtName.Text);
                command.Parameters.AddWithValue("@pass", txtPass.Text);
                command.Parameters.AddWithValue("@birth", txtBirthday.Text);
                command.Parameters.AddWithValue("@pnum", txtPnumber.Text);
                command.Parameters.AddWithValue("@email", txtEmail.Text);
                command.ExecuteNonQuery();
                con.Close();
            }
            Response.Write("<script>alert('Account Registed Successfully')</script>");
        }
    }

}