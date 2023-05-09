using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Drawing;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Groceries.Admin
{
    public partial class Orders : System.Web.UI.Page
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
            int Ordercount = 0;

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
            if (Ordercount == 0)
            {
                LabelErrorOrder.Visible = true;
            }
        }

        protected void GridViewOrder_SelectedIndexChanged(object sender, EventArgs e)
        {
            PanelViewOrder.Visible = true;
        }

        protected void ButtonOrderClose_Click1(object sender, EventArgs e)
        {
            PanelViewOrder.Visible = false;
        }

    }
}