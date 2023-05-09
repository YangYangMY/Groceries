using System;
using System.Collections.Generic;
using System.Data; 
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Groceries.Customer
{
    public partial class test1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void ButtonCreate_Click(object sender, EventArgs e)
        {
            //Open and Link database
            SqlConnection con;
            string strCon = "Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\\GoceriesDatabase.mdf;Integrated Security=True;";
            con = new SqlConnection(strCon);
            con.Open();

            //SQL command for insert data
            SqlCommand insertCmd = new SqlCommand();
            SqlDataAdapter insertAdapter = new SqlDataAdapter();
            String insertSql = "";

            //SQL Command for read data
            SqlCommand readCmd;
            SqlDataReader dataReader;
            String readSql;
            int idcount = 0;

            readSql = "Select CustomerID from Customers";

            readCmd = new SqlCommand(readSql, con);
            SqlCommand check_CustEmail = new SqlCommand("SELECT COUNT(*) FROM Customers WHERE ([EmailAddress] = @EmailAddress)", con);
            check_CustEmail.Parameters.AddWithValue("@EmailAddress", txtEmail.Text);
            int CustEmailExist = (int)check_CustEmail.ExecuteScalar();

            SqlCommand check_AdminEmail = new SqlCommand("SELECT COUNT(*) FROM Admin WHERE ([EmailAddress] = @EmailAddress)", con);
            check_AdminEmail.Parameters.AddWithValue("@EmailAddress", txtEmail.Text);
            int AdminEmailExist = (int)check_AdminEmail.ExecuteScalar();
            dataReader = readCmd.ExecuteReader();
            while (dataReader.Read())
            {
                idcount++;
            }
            idcount += 1;
            dataReader.Close();
            readCmd.Dispose();

            String name = txtName.Text;
            String email = txtEmail.Text;
            String pass = txtPass.Text;
            String pnum = txtPnumber.Text;
            String birth = txtBirthday.Text;

            if (CustEmailExist > 0 || AdminEmailExist > 0)
            {
                lblErrorEmail.Text = "Duplicated Email Found!";
            }
            else
            {
                lblErrorEmail.Text = "";
                if (name.Length >= 2)
                {
                    lblErrorName.Text = "";
                    if (pass.Length >= 6)
                    {
                        lblErrorName.Text = "";
                        insertSql = "Insert into Customers(CustomreName,Password, BirthDate, PhoneNumbre, EmailAddress) values("+ name + "','" + pass + "','" + birth + "','" + pnum + "','" + email + "')";
                        insertCmd = new SqlCommand(insertSql, con);

                        insertAdapter.InsertCommand = new SqlCommand(insertSql, con);
                        insertAdapter.InsertCommand.ExecuteNonQuery();
                        PanelAddSuccess.Visible = true;
                        lblErrorPass.Enabled = false;
                    }
                    else
                    {
                        lblErrorPass.Text = "Password should be 6 characters";
                    }
                }
                else
                {
                    lblErrorEmail.Text = "Name must have at least 2 characters";
                }


            }
            insertCmd.Dispose();
            con.Close();
        }
    }
}