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
        //Open and Link database
        SqlConnection con;
        string strCon = "Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\\GoceriesDatabase.mdf;Integrated Security=True;";

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void ButtonOrderClose_Click(object sender, EventArgs e)
        {
            PanelViewReport.Visible = false;
        }


        protected void ButtonGenerateReport_Click(object sender, EventArgs e)
        {
            //Reading data input
            DateTime currentDate = DateTime.Now;
            string formattedDate = currentDate.ToString("dd/MM/yyyy");
            String Month = currentDate.ToString("MMMM");
            String Year = currentDate.ToString("yyyy");
            double totalProfit = 0.00;
            int totalOrder = 0;
            int totalProduct = 5;
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
                insertSql = "Insert into Report(ReportID, DateGenerated,Month, Year, TotalProfit, TotalOrder,TotalProduct) values(" + idcount + ",'" + formattedDate + "','" + Month + "','" + Year + "','" + totalProfit + "','" + totalOrder + "','" + totalProduct + "')";
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

        protected void GridViewReport_SelectedIndexChanged(object sender, EventArgs e)
        {
            con = new SqlConnection(strCon);
            con.Open();

            //SQL Command for read data
            SqlCommand readCmd;
            SqlDataReader dataReader;
            String readSql;
            int idcount = 1;

            // Get the currently selected row using the SelectedRow property.
            GridViewRow row = GridViewReport.SelectedRow;
            int selectedID = int.Parse(row.Cells[0].Text);

            string month = null;
            string year = null;
            int Ordercount = 0, ProductCount = 0;
            double profit = 0.00;

            //Read Order Count
            readSql = "Select OrderID from [Order]";
            readCmd = new SqlCommand(readSql, con);
            dataReader = readCmd.ExecuteReader();
            while (dataReader.Read())
            {
                Ordercount++;
            }
            dataReader.Close();
            readCmd.Dispose();



            PanelViewReport.Visible = true;
        }
    }
}