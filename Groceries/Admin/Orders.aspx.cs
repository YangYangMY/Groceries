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

        protected void ButtonUpdate_Click(object sender, EventArgs e)
        {
            PanelConfirmDelete.Visible = false;

            if(DropDownListUpdate.SelectedIndex == 0)
            {
                Status1.Text = "Success";
                Status1.CssClass = "inline-flex my-4 mx-6 items-center bg-green-100 text-green-800 text-xs font-medium mr-2 px-2.5 py-0.5 rounded-full";

            }
            else if(DropDownListUpdate.SelectedIndex == 1)
            {
                Status1.Text = "Canceled";
                Status1.CssClass = "inline-flex my-4 mx-6 items-center bg-red-100 text-red-800 text-xs font-medium mr-2 px-2.5 py-0.5 rounded-full";

            }
            else
            {
                Status1.Text = "In Progress";
                Status1.CssClass = "inline-flex my-4 mx-6 items-center bg-yellow-100 text-yellow-800 text-xs font-medium mr-2 px-2.5 py-0.5 rounded-full";

            }

        }

        protected void ButtonCancelDelete_Click(object sender, EventArgs e)
        {
            PanelConfirmDelete.Visible = false;
        }

        protected void ButtonUpdate1_Click(object sender, EventArgs e)
        {
            PanelConfirmDelete.Visible = true;
            if (Status1.Text == "Success")
            {
                DropDownListUpdate.SelectedIndex = 0;
            }
            else if(Status1.Text == "Canceled")
            {
                DropDownListUpdate.SelectedIndex = 1;
            }
            else
            {
                DropDownListUpdate.SelectedIndex = 2;
            }
        }

        protected void ButtonOrderClose_Click1(object sender, EventArgs e)
        {
            PanelViewOrder.Visible = false;
        }

        protected void ButtonView1_Click(object sender, EventArgs e)
        {
            PanelViewOrder.Visible = true;
        }
    }
}