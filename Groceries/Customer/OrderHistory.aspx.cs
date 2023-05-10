using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using MailKit;
using System.Net.NetworkInformation;
using System.Xml.Linq;

namespace Groceries.Customer
{
    public partial class OrderHistory : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {


            if (!IsPostBack) {

                // Replace with the actual ID of the customer whose address you want to retrieve
                int customerID = Convert.ToInt32(Session["user"]);
                SqlDataSource1.SelectCommand =
                "SELECT [Order].OrderID, [Order].OrderDate, [Order].Subtotal, [Order].SalesTax, [Order].TotalPrice " +
                " FROM Customers" +
                " INNER JOIN [Order] ON Customers.CustomerID = [Order].CustomerID" +
                " INNER JOIN OrderItem ON [Order].OrderID = OrderItem.OrderID" +
                " INNER JOIN Products ON OrderItem.ProductID = Products.ProductID" +
                " WHERE [Order].CustomerID = " + customerID;

        }

        }
    }
}