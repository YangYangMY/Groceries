using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Drawing;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Groceries
{
    public partial class Dashboard : System.Web.UI.Page
    {
        //Open and Link database
        SqlConnection con;
        string strCon = "Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\\GoceriesDatabase.mdf;Integrated Security=True;";

        protected void Page_Load(object sender, EventArgs e)
        {
            con = new SqlConnection(strCon);
            con.Open();

            //Check Customer ID 
            //SQL Command for read data
            SqlCommand readCmd;
            SqlDataReader dataReader;
            String readSql;
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

            //Read Product count
            readSql = "Select ProductID from [Products]";
            readCmd = new SqlCommand(readSql, con);
            dataReader = readCmd.ExecuteReader();
            while (dataReader.Read())
            {
                ProductCount++;
            }
            dataReader.Close();
            readCmd.Dispose();

            //Read Profit
            readSql = "Select OrderID from [Order]";
            readCmd = new SqlCommand(readSql, con);
            dataReader = readCmd.ExecuteReader();
            while (dataReader.Read())
            {
                profit += (double)dataReader.GetValue(3);
            }
            dataReader.Close();
            readCmd.Dispose();

            //Display
            LabelProfit.Text = "RM "+ profit.ToString();
            LabelOrders.Text = Ordercount.ToString();
            LabelProduct.Text = ProductCount.ToString();

            if(Ordercount == 0)
            {
                LabelErrorOrder.Visible = true;
            }

            con.Close();
        }

    }
}