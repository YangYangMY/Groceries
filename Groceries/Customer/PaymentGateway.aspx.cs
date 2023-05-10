using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Windows.Forms;

namespace Groceries.Customer
{
    public partial class PaymentGateway : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            DataTable dt = new DataTable();
            dt = (DataTable)Session["buyitems"];
            int nrow = dt.Rows.Count;
            int i = 0;
            int orderID;
            decimal totalprice = 0;
            decimal finaltotal = 0;
            const decimal shippingFee = 10.00M;

            while (i < nrow)
            {
                totalprice = totalprice + Convert.ToDecimal(dt.Rows[i]["totalprice"].ToString());
                i = i + 1;
            }
            decimal tax = totalprice * 0.06M;
            string taxFormatted = tax.ToString("0.00");
            finaltotal = totalprice + tax + shippingFee;
            string finalTotalFormatted = finaltotal.ToString("0.00");
            Session["finaltotal"] = finalTotalFormatted.ToString();

            //// Get the cart data table from the session
            //DataTable cart = (DataTable)Session["buyitems"];

            //// Create a new data table for the order
            //DataTable order = new DataTable();

            //order.Columns.Add("ProductID", typeof(string));
            //order.Columns.Add("ProductName", typeof(string));
            //order.Columns.Add("Quantity", typeof(int));
            //order.Columns.Add("UnitPrice", typeof(decimal));
            //order.Columns.Add("TotalPrice", typeof(decimal));

            //// Copy the contents of the cart to the order
            //foreach (DataRow row in cart.Rows)
            //{
            //    DataRow orderRow = order.NewRow();
            //    orderRow["ProductID"] = row["ProductID"];
            //    orderRow["ProductName"] = row["ProductName"];
            //    orderRow["Quantity"] = row["Quantity"];
            //    orderRow["UnitPrice"] = row["UnitPrice"];
            //    orderRow["TotalPrice"] = row["TotalPrice"];
            //    order.Rows.Add(orderRow);
            //}
            //Session["order"] = order;


            string mycon = "Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\\GoceriesDatabase.mdf;Integrated Security=True;";
            SqlConnection scon = new SqlConnection(mycon);
            string myquery = "SELECT MAX(OrderID) FROM [Order]";
            SqlCommand cmd = new SqlCommand(myquery, scon);
            scon.Open();
            object result = cmd.ExecuteScalar();
            orderID = 0;
            if (result != null && result != DBNull.Value)
            {
                orderID = Convert.ToInt32(result);
            }
            orderID++; // Increment the order ID for the next order
            scon.Close();


            //here we implement Paypal
            Session["orderID"] = orderID.ToString();

            Response.Write("<form action='https://www.sandbox.paypal.com/cgi-bin/webscr' method='post' name='buyCredits' id='buyCredits'>");
            Response.Write("<input type='hidden' name='cmd' value='_xclick'>");
            Response.Write("<input type='hidden' name='business' value='sb-avcb125586475@business.example.com'>");
            Response.Write("<input type='hidden' name='currency_code' value='MYR'>");
            Response.Write("<input type='hidden' name='item_name' value='Order ID: " + orderID + "'>");
            Response.Write("<input type='hidden' name='item_number' value='0'>");
            Response.Write("<input type='hidden' name='amount' value='" + Session["finaltotal"].ToString() + "'>");
            Response.Write("<input type='hidden' name='return' value='https://localhost:44325/Customer/OrderSuccess.aspx?order=" + orderID.ToString() + "'>");
            Response.Write("</form>");

            Response.Write("<script type='text/javascript'>");
            Response.Write("document.getElementById('buyCredits').submit();");
            Response.Write("</script>");
        }

        public decimal grandtotal()
        {
            DataTable dt = new DataTable();
            dt = (DataTable)Session["buyitems"];
            int nrow = dt.Rows.Count;
            int i = 0;
            decimal totalprice = 0;

            while (i < nrow)
            {
                totalprice = totalprice + Convert.ToDecimal(dt.Rows[i]["totalprice"].ToString());
                i = i + 1;
            }
            return totalprice;
        }



    }
}