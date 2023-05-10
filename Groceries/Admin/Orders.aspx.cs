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
            con = new SqlConnection(strCon);
            con.Open();

            //SQL Command for read data
            SqlCommand readCmd;
            SqlDataReader dataReader;
            String readSql;
            int idcount = 1;

            // Get the currently selected row using the SelectedRow property.
            GridViewRow row = GridViewOrder.SelectedRow;
            int selectedID = int.Parse(row.Cells[0].Text);
            string buyername = row.Cells[1].Text;
            string orderdate = row.Cells[2].Text;
            string totalprice = row.Cells[3].Text;


            //Get Address ID & Customer ID
            string addressID = null;
            string buyerID = null;
            readSql = "SELECT * FROM [Order]";
            readCmd = new SqlCommand(readSql, con);
            dataReader = readCmd.ExecuteReader();
            while (dataReader.Read())
            {
                if (idcount == selectedID)
                {
                    buyerID = dataReader.GetValue(3).ToString();
                    addressID = dataReader.GetValue(4).ToString();
                    break;
                }
                else
                {
                    idcount++;
                }
            }
            dataReader.Close();
            readCmd.Dispose();


            //Get (Buyer) name & Phone Number
            string BuyerphoneNum = null;
            string customerName = null;
            int buyerIDCheck = Int32.Parse(buyerID);
            idcount = 1;
            readSql = "SELECT * FROM [Customers]";
            readCmd = new SqlCommand(readSql, con);
            dataReader = readCmd.ExecuteReader();
            while (dataReader.Read())
            {
                if (idcount == buyerIDCheck)
                {
                    customerName = dataReader.GetValue(1).ToString();
                    BuyerphoneNum = dataReader.GetValue(4).ToString();
                    break;
                }
                else
                {
                    idcount++;
                }
            }
            dataReader.Close();
            readCmd.Dispose();

            //Get (DELIVERY) name & Phone Number & Address
            string phoneNum = null;
            string deliveryName = null;
            string deliveryaddress = null;
            int addressIDCheck = int.Parse(addressID);
            idcount = 1;
            readSql = "SELECT * FROM [Address]";
            readCmd = new SqlCommand(readSql, con);
            dataReader = readCmd.ExecuteReader();
            while (dataReader.Read())
            {
                if (idcount == addressIDCheck)
                {
                    deliveryName = dataReader.GetValue(1).ToString();
                    phoneNum = dataReader.GetValue(2).ToString();
                    deliveryaddress += (dataReader.GetValue(3).ToString()) + ", ";
                    deliveryaddress += (dataReader.GetValue(4).ToString()) + ", ";
                    deliveryaddress += (dataReader.GetValue(5).ToString()) + ", ";
                    deliveryaddress += (dataReader.GetValue(6).ToString());
                    break;
                }
                else
                {
                    idcount++;
                }
            }
            dataReader.Close();
            readCmd.Dispose();

            SqlDataSource2.SelectCommand =
    "SELECT Products.ProductName, OrderItem.Quantity, Products.UnitPrice" +
    " FROM [Order]" +
    " INNER JOIN OrderItem ON [Order].OrderID = OrderItem.OrderID" +
    " INNER JOIN Products ON OrderItem.ProductID = Products.ProductID" +
    " WHERE [Order].OrderID = " + selectedID;

            con.Close();

            //Display Data
            LabelDate.Text = orderdate;
            LabelOrderID.Text = "Order #" + selectedID;
            LabelTotal.Text = "RM" + totalprice;

            //Display Buyer Details
            LabelBuyerName.Text = buyername;
            LabelBuyerNum.Text = BuyerphoneNum;

            //Display Delivery details
            LabelDeliveryName.Text = deliveryName;
            LabelDeliveryNum.Text = phoneNum;
            LabelDeliveryAddress.Text = deliveryaddress;
            PanelViewOrder.Visible = true;
        }

        protected void ButtonOrderClose_Click1(object sender, EventArgs e)
        {
            PanelViewOrder.Visible = false;
        }

    }
}