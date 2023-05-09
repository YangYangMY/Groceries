using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

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

            //here we implement Paypal
            int orderID = 1;
            Session["orderID"] = orderID.ToString();

            Response.Write("<form action='https://www.sandbox.paypal.com/cgi-bin/webscr' method='post' name='buyCredits' id='buyCredits'>");
            Response.Write("<input type='hidden' name='cmd' value='_xclick'>");
            Response.Write("<input type='hidden' name='business' value='sb-avcb125586475@business.example.com'>");
            Response.Write("<input type='hidden' name='currency_code' value='MYR'>");
            Response.Write("<input type='hidden' name='item_name' value='Order ID: " + orderID + "'>");
            Response.Write("<input type='hidden' name='item_number' value='0'>");
            Response.Write("<input type='hidden' name='amount' value='" + Session["finaltotal"].ToString() + "'>");
            Response.Write("<input type='hidden' name='return' value='https://localhost:44325/Customer/OrderSuccess.aspx?orderID=" + orderID.ToString() + "'>");
            //Response.Write("<input type='hidden' name='cancel_return' value='http://localhost:8080/Groceries/Customer/Cancel.aspx'>");
            //Response.Write("<input type='hidden' name='notify_url' value='http://localhost:8080/Groceries/Customer/Notify.aspx'>");
            //Response.Write("<input type='hidden' name='rm' value='2'>");
            //Response.Write("<input type='hidden' name='cbt' value='Return to The Store'>");
            //Response.Write("<input type='hidden' name='custom' value='" + orderID.ToString() + "'>");
            //Response.Write("<input type='hidden' name='no_shipping' value='1'>");
            //Response.Write("<input type='hidden' name='no_note' value='1'>");
            //Response.Write("<input type='hidden' name='lc' value='US'>");
            //Response.Write("<input type='hidden' name='bn' value='PP-BuyNowBF'>");
            //Response.Write("<input type='image' src='https://www.paypalobjects.com/webstatic/en_US/i/buttons/buy-logo-large.png' name='submit' alt='Make payments with PayPal - it's fast, free and secure!'>");
            Response.Write("</form>");
            Response.Write("<script type='text/javascript'>");
            Response.Write("document.getElementById('buyCredits').submit();");
            Response.Write("</script>");

        }


       

    }
}