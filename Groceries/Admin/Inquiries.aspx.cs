using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Services.Description;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Groceries.Admin
{
    public partial class Inquiries : System.Web.UI.Page
    {

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void ButtonOrderClose_Click1(object sender, EventArgs e)
        {
            PanelViewInquiry.Visible=false;
        }

        protected void GridViewInquiry_SelectedIndexChanged(object sender, EventArgs e)
        {
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

            // Get the currently selected row using the SelectedRow property.
            GridViewRow row = GridViewInquiry.SelectedRow;
            int selectedID = int.Parse(row.Cells[0].Text);

            //Initialise value
            String date = null;
            String name = null;
            String email = null ;
            String reason = null;
            String imageFileName = null ;

            readSql = "Select * from Inquiry";

            readCmd = new SqlCommand(readSql, con);
            dataReader = readCmd.ExecuteReader();
            while (dataReader.Read())
            {
                if (idcount == selectedID)
                {
                    date = dataReader.GetValue(1).ToString();
                    name = dataReader.GetValue(2).ToString();
                    email = dataReader.GetValue(3).ToString();
                    reason = dataReader.GetValue(4).ToString();
                    imageFileName = dataReader.GetValue(5).ToString();
                    break;
                }
                else{
                    idcount++;
                }
 

            }
            dataReader.Close();
            readCmd.Dispose();

            //Set value accordingly
            InquiryNum.Text = "Inquiry #" + selectedID;
            InquiryDate.Text = date;
            InquiryName.Text = name;
            InquiryEmail.Text = email;
            InquiryDesc.Text = reason;

            if(imageFileName == "")
            {
                InquiryPic.Visible = false;
            }
            else
            {
                InquiryPic.Visible = true;
                //Convert byte arry to base64string
                String imageUrl = "/upload/"+ imageFileName;
                InquiryPic.ImageUrl = imageUrl;
            }



            PanelViewInquiry.Visible = true;
        }
    }
}
