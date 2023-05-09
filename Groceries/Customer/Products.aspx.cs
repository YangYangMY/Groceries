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

            //DropDownList dlist = (DropDownList)(e.Item.FindControl("DropDownList1"));
            //Response.Redirect("ShoppingCart.aspx?id=" + e.CommandArgument.ToString() + "&Quantity=" + dlist.SelectedItem.ToString());


            //String queryString = "?id=" + e.CommandArgument.ToString() + "&Quantity=" + dlist.SelectedItem.ToString();
            //Response.Redirect(Request.Url.PathAndQuery + queryString);


            //if (e.CommandName == "AddToCart")
            //{
            //    // Get the product ID from the DataList
            //    string ProductID = e.CommandArgument.ToString();

            //    // Get the selected quantity from the DropDownList
            //    DropDownList dlist = (DropDownList)e.Item.FindControl("DropDownList1");
            //    int quantity = int.Parse(dlist.SelectedItem.Text);

            //    // Redirect to the original page and pass the query string
            //    Response.Redirect("Products.aspx?id=" +ProductID + "&quantity=" + quantity.ToString());
            //}
        }

        //protected void btnAddToCart_Click(object sender, EventArgs e)
        //{
        //    Button button = (Button)sender;
        //    string productId = button.Attributes["data-product-id"];

        //    // Get the selected quantity of the product
        //    DropDownList dlist = (DropDownList)button.NamingContainer.FindControl("DropDownList1");
        //    int quantity = int.Parse(dlist.SelectedItem.Text);

        //    // Add the item to the shopping cart
        //    Dictionary<string, int> Buyitems = (Dictionary<string, int>)Session["buyitems"];
        //    if (Buyitems == null)
        //    {
        //        Buyitems = new Dictionary<string, int>();
        //    }

        //    if (Buyitems.ContainsKey(productId))
        //    {
        //        Buyitems[productId] += quantity;
        //    }
        //    else
        //    {
        //        Buyitems.Add(productId, quantity);
        //    }

        //    Session["buyitems"] = Buyitems;
        //}
    }
}