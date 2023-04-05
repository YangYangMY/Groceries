using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Groceries.Admin
{
    public partial class RoleAssign : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void ButtonCreate_Click(object sender, EventArgs e)
        {
            PanelAddSuccess.Visible = true;
            TextBoxPass.Enabled = false;
            TextBoxConfirmPass.Enabled = false;
        }
    }
}