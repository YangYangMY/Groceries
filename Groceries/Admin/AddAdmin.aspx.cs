using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Groceries.Admin
{
    public partial class RoleAssign : System.Web.UI.Page
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

            //Check if Email Existed
                //Customer email Check
            SqlCommand check_CustomerEmail = new SqlCommand("SELECT COUNT(*) FROM Customers WHERE ([EmailAddress] = @EmailAddress)", con);
            check_CustomerEmail.Parameters.AddWithValue("@EmailAddress", TextBoxEmail.Text);
            int CustomerEmailExist = (int)check_CustomerEmail.ExecuteScalar();
                //Admin email Check
            SqlCommand check_AdminEmail = new SqlCommand("SELECT COUNT(*) FROM Admin WHERE ([EmailAddress] = @EmailAddress)", con);
            check_AdminEmail.Parameters.AddWithValue("@EmailAddress", TextBoxEmail.Text);
            int AdminEmailExist = (int)check_AdminEmail.ExecuteScalar();



            readSql = "Select AdminID from Admin";
            readCmd = new SqlCommand(readSql, con);
            dataReader = readCmd.ExecuteReader();
            while (dataReader.Read())
            { 
                idcount++;
            }
            idcount += 1;
            dataReader.Close();
            readCmd.Dispose();

            String name = TextBoxName.Text;
            String email = TextBoxEmail.Text;
            String pass = TextBoxPass.Text;

            if (CustomerEmailExist > 0 || AdminEmailExist > 0)
            {
                LabelErrorEmail.Text = "Duplicated Email Found!";
            }
            else
            {
                LabelErrorEmail.Text = "";
                if(name.Length >= 2)
                {
                    LabelErrorName.Text = "";
                    if (pass.Length >= 6)
                    {
                        LabelErrorPass.Text = "";
                        insertSql = "Insert into Admin(AdminID,UserName,EmailAddress,Password) values(" + idcount + ",'" + name + "','" + email + "','" + pass + "')";
                        insertCmd = new SqlCommand(insertSql, con);

                        insertAdapter.InsertCommand = new SqlCommand(insertSql, con);
                        insertAdapter.InsertCommand.ExecuteNonQuery();
                        PanelAddSuccess.Visible = true;
                        TextBoxPass.Enabled = false;
                    }
                    else
                    {
                        LabelErrorPass.Text = "Password should be 6 characters";
                    }
                }
                else
                {
                    LabelErrorName.Text = "Name must have at least 2 characters";
                }


            }
            insertCmd.Dispose();
            con.Close();

        }
    }
}