using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Configuration;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml.Linq;

namespace Groceries.Admin.Product
{
    public partial class AddProduct : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void ButtonSubmit_Click1(object sender, EventArgs e)
        {
            PanelAddProduct.Visible = false;
            PanelSuccess.Visible = true;
        }
    }
}