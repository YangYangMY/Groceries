using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Drawing;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Windows.Forms;
using static System.Windows.Forms.VisualStyles.VisualStyleElement.ListView;
using System.Xml.Linq;

namespace Groceries.Admin
{
    public partial class Report : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void ButtonOrderClose_Click(object sender, EventArgs e)
        {
            PanelViewReport.Visible = false;
        }

        protected void ButtonViewReport1_Click(object sender, EventArgs e)
        {
            PanelViewReport.Visible=true;
        }

        protected void ButtonGenerateReport_Click(object sender, EventArgs e)
        {
            //Reading data input
            DateTime currentDate = DateTime.Now;
            string formattedDate = currentDate.ToString("dd/MM/yyyy");
            String Month = currentDate.ToString("MMMM");
            String Year = currentDate.ToString("YYYY");
            double totalProfit = 0.00;
            int totalOrder = 0;
            bool generatepass = false;

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

            //Check reportID
            readSql = "Select ReportID from Report";
            readCmd = new SqlCommand(readSql, con);
            dataReader = readCmd.ExecuteReader();
            while (dataReader.Read())
            {
                idcount++;
            }
            idcount += 1;
            dataReader.Close();
            readCmd.Dispose();

            generatepass = true;


            if (generatepass)
            {
                insertSql = "Insert into Report(ReportID, DateGenerated,Month, Year, TotalProfit, TotalOrder, TopProductID) values(" + idcount + ",'" + formattedDate + "','" + Month + "','" + Year + "','" + totalProfit + "','" + totalOrder + "','" + null + "')";
                insertCmd = new SqlCommand(insertSql, con);
                insertAdapter.InsertCommand = new SqlCommand(insertSql, con);
                insertCmd.ExecuteNonQuery();
                insertCmd.Dispose();
                con.Close();
                PanelAddSuccess.Visible = true;
            }
        }

        protected void ButtonRefresh_Click(object sender, EventArgs e)
        {
            Response.Redirect(Request.RawUrl);
            PanelAddSuccess.Visible=false;
        }
    }
}