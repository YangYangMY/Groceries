using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Groceries.Admin
{
    public partial class AdminAccount : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void ButtonEdit_Click(object sender, EventArgs e)
        {
            ButtonDelete.Visible = false;
            ButtonSave.Visible = true;
            ButtonEdit.Visible = false;

            //Enable input textbox
            TextBoxAdminName.Enabled = true;
            TextBoxEmail.Enabled = true;
            TextBoxPassword.Enabled = true;
            TextBoxAdminName.CssClass = "mb-6 bg-white-100 border border-black-300 text-black-900 text-sm rounded-lg focus:ring-blue-500 focus:border-blue-500 block w-full p-2.5";
            TextBoxEmail.CssClass = "mb-6 bg-white-100 border border-black-300 text-black-900 text-sm rounded-lg focus:ring-blue-500 focus:border-blue-500 block w-full p-2.5";
            TextBoxPassword.CssClass = "mb-6 bg-white-100 border border-black-300 text-black-900 text-sm rounded-lg focus:ring-blue-500 focus:border-blue-500 block w-full p-2.5";
        }

        protected void ButtonSave_Click(object sender, EventArgs e)
        {
            ButtonDelete.Visible = true;
            ButtonSave.Visible = false;
            ButtonEdit.Visible = true;
            TextBoxAdminName.Enabled = false;
            TextBoxEmail.Enabled = false;
            TextBoxPassword.Enabled = false;
            TextBoxPassword.CssClass = "mb-6 bg-gray-100 border border-gray-300 text-gray-900 text-sm rounded-lg focus:ring-blue-500 focus:border-blue-500 block w-full p-2.5";
            TextBoxAdminName.CssClass = "mb-6 bg-gray-100 border border-gray-300 text-gray-900 text-sm rounded-lg focus:ring-blue-500 focus:border-blue-500 block w-full p-2.5";
            TextBoxEmail.CssClass = "mb-6 bg-gray-100 border border-gray-300 text-gray-900 text-sm rounded-lg focus:ring-blue-500 focus:border-blue-500 block w-full p-2.5";
        }

        protected void ButtonDelete_Click(object sender, EventArgs e)
        {
            PanelConfirmDelete.Visible = true;
        }

        protected void ButtonCancelDelete_Click(object sender, EventArgs e)
        {
            PanelConfirmDelete.Visible = false;
        }

        protected void ButtonCancelDeleteIcon_Click(object sender, EventArgs e)
        {
            PanelConfirmDelete.Visible = false;
        }
    }
}