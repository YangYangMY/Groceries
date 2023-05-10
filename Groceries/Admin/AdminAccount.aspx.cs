using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using static System.Windows.Forms.VisualStyles.VisualStyleElement.ListView;
using System.Windows.Forms;
using System.Xml.Linq;
using System.Collections;
using System.Security.Cryptography;

namespace Groceries.Admin
{
    public partial class AdminAccount : System.Web.UI.Page
    {
        //Open and Link database
        SqlConnection con;
        string strCon = "Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\\GoceriesDatabase.mdf;Integrated Security=True;";

        protected void Page_Load(object sender, EventArgs e)
        {
            if (this.Session["user"] == null)
            {
                Response.Redirect("~/Customer/Login.aspx/");
            }
            else
            {
                // The user is logged in, proceed with the page logic
            }
            int selectedID = int.Parse(Session["user"].ToString());

            //Open and Link database
            SqlConnection con;
            string strCon = "Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\\GoceriesDatabase.mdf;Integrated Security=True;";
            con = new SqlConnection(strCon);
            con.Open();

            //SQL Command for read data
            SqlCommand readCmd;
            SqlDataReader dataReader;
            String readSql;
            int idcount = 1;

            //Initialise value
            string username = null;
            string email = null;
            string password = null;

            //Read other data
            readSql = "Select * from Admin";
            readCmd = new SqlCommand(readSql, con);
            dataReader = readCmd.ExecuteReader();
            while (dataReader.Read())
            {
                if (idcount == selectedID)
                {
                    username = dataReader.GetValue(1).ToString();
                    email = dataReader.GetValue(2).ToString();
                    password = dataReader.GetValue(3).ToString();
                    break;
                }
                else
                {
                    idcount++;
                }
            }

            TextBoxAdminName.Text = username;
            TextBoxEmail.Text = email;
            TextBoxPassword.Text = password;
            con.Close();
        }

        protected void ButtonEdit_Click(object sender, EventArgs e)
        {
            ButtonSave.Visible = true;
            ButtonEdit.Visible = false;

            //Enable input textbox
            TextBoxAdminName.Enabled = true;
            TextBoxEmail.Enabled = true;
            TextBoxPassword.Enabled = true;
            TextBoxAdminName.CssClass = "mb-6 bg-white-100 border border-black-300 text-black-900 text-sm rounded-lg focus:ring-blue-500 focus:border-blue-500 block w-full p-2.5";
            TextBoxEmail.CssClass = "mb-6 bg-white-100 border border-black-300 text-black-900 text-sm rounded-lg focus:ring-blue-500 focus:border-blue-500 block w-full p-2.5";
            TextBoxPassword.CssClass = "mb-6 bg-white-100 border border-black-300 text-black-900 text-sm rounded-lg focus:ring-blue-500 focus:border-blue-500 block w-full p-2.5";
        }

        protected void ButtonSave_Click(object sender, EventArgs e)
        {
            //Command for update
            SqlCommand Updatecmd;
            SqlDataAdapter Updateadapter = new SqlDataAdapter();
            String Updatesql = "";

            //Initialise value
            string username = TextBoxAdminName.Text;
            string email = TextBoxEmail.Text;
            string password = TextBoxPassword.Text;

            con = new SqlConnection(strCon);
            con.Open();
            if (username.Length >= 2)
            {
                LabelErrorName.Text = "";
                if (password.Length >= 6)
                {
                    //Update Data
                    Updatesql = "UPDATE Admin SET UserName='" + username + "',EmailAddress='" + email + "',Password='" + password;
                    Updatecmd = new SqlCommand(Updatesql, con);
                    Updateadapter.InsertCommand = new SqlCommand(Updatesql, con);
                    Updateadapter.InsertCommand.ExecuteNonQuery();
                    Updatecmd.Dispose();



                    //Change UI
                    LabelErrorPass.Text = "";
                    ButtonSave.Visible = false;
                    ButtonEdit.Visible = true;
                    TextBoxAdminName.Enabled = false;
                    TextBoxEmail.Enabled = false;
                    TextBoxPassword.Enabled = false;
                    TextBoxPassword.CssClass = "mb-6 bg-gray-100 border border-gray-300 text-gray-900 text-sm rounded-lg focus:ring-blue-500 focus:border-blue-500 block w-full p-2.5";
                    TextBoxAdminName.CssClass = "mb-6 bg-gray-100 border border-gray-300 text-gray-900 text-sm rounded-lg focus:ring-blue-500 focus:border-blue-500 block w-full p-2.5";
                    TextBoxEmail.CssClass = "mb-6 bg-gray-100 border border-gray-300 text-gray-900 text-sm rounded-lg focus:ring-blue-500 focus:border-blue-500 block w-full p-2.5";
                    con.Close();
                    Response.Redirect(Request.RawUrl);
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
    }

}
