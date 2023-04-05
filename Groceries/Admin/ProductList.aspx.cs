using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Groceries.Admin.Product
{
    public partial class ProductList : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void ButtonRow1_Click(object sender, EventArgs e)
        {
            PanelEditProduct.Visible = true;
            PanelProductTable.Visible = false;
        }

        protected void ButtonCancel_Click(object sender, EventArgs e)
        {
            PanelEditProduct.Visible = false;
            PanelProductTable.Visible = true;
        }

        protected void ButtonUpdate_Click(object sender, EventArgs e)
        {
            PanelEditProduct.Visible = false;
            PanelProductTable.Visible = true;
        }

        protected void ButtonDelete1_Click(object sender, EventArgs e)
        {
            PanelConfirmDelete.Visible = true;
        }

        protected void ButtonCancelDeleteIcon_Click(object sender, EventArgs e)
        {
            PanelConfirmDelete.Visible = false;
        }

        protected void ButtonCancelDelete_Click(object sender, EventArgs e)
        {
            PanelConfirmDelete.Visible = false;
        }

        protected void ButtonConfirmDelete_Click(object sender, EventArgs e)
        {
            PanelConfirmDelete.Visible = false;
        }
    }
}