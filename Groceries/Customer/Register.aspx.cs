using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.Data.Common;
using System.Xml.Linq;
using System.Drawing;

namespace Groceries.Customer
{

    public partial class Register : System.Web.UI.Page
    {
        //Open and Link database
        SqlConnection con;
        string strCon = "Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\\GoceriesDatabase.mdf;Integrated Security=True;";

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            con = new SqlConnection(strCon);
            con.Open();

            //SQL command for insert data
            SqlCommand insertCmd = new SqlCommand();
            SqlDataAdapter insertAdapter = new SqlDataAdapter();

            //SQL Command for read data
            SqlCommand readCmd;
            SqlDataReader dataReader;
            String readSql;
            int idcount = 0;

            //Check if Email Existed
                //Customer email Check
            SqlCommand check_CustomerEmail = new SqlCommand("SELECT COUNT(*) FROM Customers WHERE ([EmailAddress] = @EmailAddress)", con);
            check_CustomerEmail.Parameters.AddWithValue("@EmailAddress", txtEmail.Text);
            int CustomerEmailExist = (int)check_CustomerEmail.ExecuteScalar();
             //Admin email Check
            SqlCommand check_AdminEmail = new SqlCommand("SELECT COUNT(*) FROM Admin WHERE ([EmailAddress] = @EmailAddress)", con);
            check_AdminEmail.Parameters.AddWithValue("@EmailAddress", txtEmail.Text);
            int AdminEmailExist = (int)check_AdminEmail.ExecuteScalar();

            if (CustomerEmailExist > 0 || AdminEmailExist > 0)
            {
                LabelErrorEmail.Text = "Duplicated Email Found!";
            }
            else
            {
                //Check Customer ID 
                readSql = "Select CustomerID from Customers";
                readCmd = new SqlCommand(readSql, con);
                dataReader = readCmd.ExecuteReader();
                while (dataReader.Read())
                {
                    idcount++;
                }
                idcount += 1;
                dataReader.Close();
                readCmd.Dispose();

                String name = txtName.Text;
                String password = txtPassword.Text;
                String birthday = txtBirthday.Text;
                String PNumber = txtPNumber.Text;
                String email = txtEmail.Text;


                String query = "Insert into Customers(CustomerID, CustomerName, Password, BirthDate, PhoneNumber, EmailAddress) values(" + idcount + ",'" + name + "','" + password + "','" + birthday + "','" + PNumber + "','" + email + "')";

                insertCmd = new SqlCommand(query, con);
                insertAdapter.InsertCommand = new SqlCommand(query, con);


                int t = insertCmd.ExecuteNonQuery();
                if (t > 0)
                {
                    PanelAddSuccess.Visible = true;
                }
                else
                {
                    LabelErrorEmail.Text = "Duplicated Email Found!";
                }
                insertCmd.Dispose();
            }
            
            con.Close();
        }

    }
}
