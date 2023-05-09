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
                insertCmd.Dispose();
            }


           
            
            con.Close();
        }
        //Open and Link database

        // string strCon = "Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\\GoceriesDatabase.mdf;Integrated Security=True;";
        //con = new SqlConnection(strCon);




        //Wee yan example


        //String query = "INSERT INTO Customers(CustomerName, Password, BirthDate, PhoneNumber, EmailAddress) VALUES('" + txtName.Text + "," + txtPassword.Text + "," + txtBirthday.Text + "," + txtPNumber.Text + "," + txtEmail.Text +"')";
        //String mycon = "Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\\GoceriesDatabase.mdf;Integrated Security=True;Connect Timeout=30";
        //SqlConnection con = new SqlConnection(mycon);
        //con.Open();
        //SqlCommand cmd = new SqlCommand();
        //cmd.CommandText = query;
        //cmd.Connection = con;
        //cmd.ExecuteNonQuery();
        //txtName.Text = "";
        //txtPassword.Text = "";
        //txtBirthday.Text = "";
        //txtPNumber.Text = "";
        //txtEmail.Text = "";

        /*Method 4
        string name = txtName.Text;
        string password = txtPassword.Text;
        string birthDate = txtBirthday.Text;
        string PNumber = txtPNumber.Text;
        string email = txtEmail.Text;

        //Inserts the FirstName variable into the db-table
        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ToString());
        SqlCommand cmd = new SqlCommand();

        cmd.CommandText = "INSERT INTO Customers (CustomerName, Password, BirthDate, PhoneNumber, EmailAddress) VALUES (@name, @password, @birthDate, @PNumber, @email)";

        //Uses the FirstName variable and creates a new sql variable for use in the sql commandtext
        cmd.Parameters.Add("@name", SqlDbType.NVarChar).Value = name;
        cmd.Parameters.Add("@password", SqlDbType.NVarChar).Value = password;
        cmd.Parameters.Add("@birthDate", SqlDbType.Date).Value = birthDate;
        cmd.Parameters.Add("@PNumber", SqlDbType.NVarChar).Value = PNumber;
        cmd.Parameters.Add("@email", SqlDbType.NVarChar).Value = email;
        cmd.Connection = conn;

        conn.Open();

        cmd.ExecuteNonQuery();

        conn.Close();*/

        //start code from here
        //con.Open();
        //Get connection string from web.config file
        //SqlConnection con = new SqlConnection("Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=\"C:\\Users\\admin\\OneDrive - Edward Inc\\Desktop\\WebAss\\Groceries\\Groceries\\App_Data\\GoceriesDatabase.mdf\";Integrated Security=True;Connect Timeout=30");
        //string strcon = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
        ////create new sqlconnection and connection to database by using connection string from web.config file  
        //SqlConnection con = new SqlConnection(strcon);
        //con.Open();
        //SqlCommand cmd = con.CreateCommand();
        //cmd.CommandType = CommandType.Text;
        //cmd.CommandText = "insert into Customer values('" + txtName.Text + "', '" + txtPassword.Text + "', '" + txtPNumber.Text + "','" + txtEmail.Text + "', '" + txtBirthday.Text + "')";
        //cmd.ExecuteNonQuery();
        //con.Close();

        /* Third methods
        //Get connection string from web.config file  
        string strcon = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
        //create new sqlconnection and connection to database by using connection string from web.config file  
        SqlConnection con = new SqlConnection(strcon);
        con.Open();

        SqlCommand cmd = con.CreateCommand();
        cmd.CommandType = CommandType.Text;
        cmd.CommandText = "insert into Customer values('" + txtName.Text + "', '" + txtPassword.Text + "', '" + txtPNumber.Text + "','" + txtEmail.Text + "', '" + txtBirthday.Text + "')";
        cmd.ExecuteNonQuery();
        con.Close();

        */

        //string CustomerName = txtName.Text;
        //string Password = txtPassword.Text;
        //string BirthDate = txtBirthday.Text; 
        //string PhoneNumber = txtPNumber.Text;
        //string EmailAddress = txtEmail.Text;

        //string cs = "Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=\"C:\\Users\\admin\\OneDrive - Edward Inc\\Desktop\\WebAss\\Groceries\\Groceries\\App_Data\\GoceriesDatabase.mdf\";Integrated Security=True;Connect Timeout=30";
        //SqlConnection con = new SqlConnection(cs);

        //string query = string.Format("insert into Customers values('{1}, '{2}', '{3}', '{4}', '{5}')",
        //    CustomerName, Password, BirthDate, PhoneNumber, EmailAddress);

        //SqlCommand cmd = new SqlCommand(query, con);

        //con.Open();
        //cmd.ExecuteNonQuery();
        //con.Close();

        //ClientScript.RegisterClientScriptBlock(this.GetType(), "K", "alert('Successfully registered...')", true);
        //txtName.Text = "";
        //txtPassword.Text = "";
        //txtBirthday.Text = "";
        //txtPNumber.Text = "";
        //txtEmail.Text = "";

    }
}
