using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Windows.Forms;

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

            //Open and Link database
            SqlConnection con;
            string strCon = "Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\\GoceriesDatabase.mdf;Integrated Security=True;";
            con = new SqlConnection(strCon);
            con.Open();

            //SQL command for insert data
            SqlCommand insertCmd = new SqlCommand();
            SqlDataAdapter insertAdapter = new SqlDataAdapter();
            String insertSql = "";





            //Close Link
            insertCmd.Dispose();
            con.Close();
            PanelAddSuccess.Visible = true;

        }

        protected void ButtonRefresh_Click(object sender, EventArgs e)
        {
            Response.Redirect(Request.RawUrl);
            PanelAddSuccess.Visible=false;
        }
    }
}