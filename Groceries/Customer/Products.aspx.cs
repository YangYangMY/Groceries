using System;
using System.Web.UI.WebControls;

namespace Groceries.Customer
{
    public partial class Products : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void DataList1_ItemCommand(object source, DataListCommandEventArgs e)
        {
            int quantity = 1; // set the initial quantity to 1

            Response.Redirect("ShoppingCart.aspx?id=" + e.CommandArgument.ToString() + "&Quantity=" + quantity); // redirect to the shopping cart page

          
        }

    }
}