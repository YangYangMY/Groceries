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
    public partial class Products : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void DataList1_ItemCommand(object source, DataListCommandEventArgs e)
        {
            //DropDownList dlist = (DropDownList)(e.Item.FindControl("DropDownList1"));
            //Response.Redirect("Products.aspx?id=" + e.CommandArgument.ToString() + "&Quantity=" + dlist.SelectedItem.ToString());

            if (e.CommandName == "AddToCart")
            {
                // Get the product ID from the DataList
                string ProductID = e.CommandArgument.ToString();

                // Get the selected quantity from the DropDownList
                DropDownList dlist = (DropDownList)e.Item.FindControl("DropDownList1");
                int quantity = int.Parse(dlist.SelectedItem.Text);

                // Redirect to the original page and pass the query string
                Response.Redirect("Products.aspx?id=" +ProductID + "&quantity=" + quantity.ToString());
            }
        }
    }
}