﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Groceries.Admin
{
    public partial class Report : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void ButtonOrderClose_Click(object sender, EventArgs e)
        {
            PanelViewReport.Visible = false;
        }

        protected void ButtonViewReport1_Click(object sender, EventArgs e)
        {
            PanelViewReport.Visible=true;
        }
    }
}