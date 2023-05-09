using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Groceries.Admin
{
    public partial class Orders : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

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