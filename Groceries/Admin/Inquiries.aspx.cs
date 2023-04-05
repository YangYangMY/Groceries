using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Groceries.Admin
{
    public partial class Inquiries : System.Web.UI.Page
    {

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void ButtonOrderClose_Click(object sender, EventArgs e)
        {
            PanelViewInquiry.Visible = false;
        }

        protected void ButtonViewInquiry1_Click(object sender, EventArgs e)
        {
            PanelViewInquiry.Visible = true;
        }

        protected void ButtonOrderClose_Click1(object sender, EventArgs e)
        {
            PanelViewInquiry.Visible=false;
        }
    }
}
