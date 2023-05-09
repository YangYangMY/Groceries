using System;
using System.Collections;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Groceries
{
    public partial class Contact : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void ButtonSubmit_Click(object sender, EventArgs e)
        {
            //Reading data input
            DateTime currentDate = DateTime.Now;
            string formattedDate = currentDate.ToString("dd/MM/yyyy");
            String name = TextBoxUserName.Text;
            String email = TextBoxEmail.Text;
            String reason = TextBoxDescriptions.Text;
            byte[] Imagefile = null;
            if (FileUploadProductImage.HasFile)
            {
                Imagefile = FileUploadProductImage.FileBytes;
            }
            else
            {
                Imagefile = null;
            }
            bool submitpass = false;

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

            readSql = "Select InquiryID from Inquiry";

            readCmd = new SqlCommand(readSql, con);
            dataReader = readCmd.ExecuteReader();
            while (dataReader.Read())
            {
                idcount++;
            }
            idcount += 1;
            dataReader.Close();
            readCmd.Dispose();
            
            //Start validation
            if(name.Length <= 2)
            {
                LabelErrorUserName.Text = "Name is too short";
                submitpass = false;
            }
            else
            {
                LabelErrorUserName.Text = "";
                if (reason.Length < 10)
                {
                    LabelErrorDescription.Text = "Description should have at least 10 characters";
                    submitpass = false;
                }
                else
                {
                    LabelErrorDescription.Text = "";
                    submitpass = true;
                }
            }


            if (submitpass)
            {
                insertSql = "Insert into Inquiry(InquiryID, InquiryDate,Name, Email, Reasons, Media) values(" + idcount + ",'" + formattedDate + "','" + name + "','" + email + "','" + reason + "','" + Imagefile +"')";
                insertCmd = new SqlCommand(insertSql, con);
                insertAdapter.InsertCommand = new SqlCommand(insertSql, con);
                insertCmd.ExecuteNonQuery();
                PanelInquirySuccess.Visible = true;
            }


        }
    }
}