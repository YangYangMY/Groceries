using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Groceries.Customer
{
    public partial class ShoppingCart : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                lblQty.Text = "1";
                lblQty2.Text = "1";
            }
            
        }

        protected void btnIncrement_Click(object sender, EventArgs e)
        {
           lblQty.Text = (int.Parse(lblQty.Text) + 1).ToString();
            
        }
        protected void btnDecrement_Click(object sender, EventArgs e)
        {
          if (int.Parse(lblQty.Text) > 1)
          {
            lblQty.Text = (int.Parse(lblQty.Text) - 1).ToString();
          }
                
        }
    }
}