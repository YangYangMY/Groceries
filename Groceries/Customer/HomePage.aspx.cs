using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Groceries
{
    public partial class HomePage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                string strCon = "Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\\GoceriesDatabase.mdf;Integrated Security=True;";
                string query = String.Format("SELECT * FROM [Products]");

                SqlConnection con;
                con = new SqlConnection(strCon);
                SqlCommand command = new SqlCommand(query, con);
                con.Open();
                SqlDataReader reader = command.ExecuteReader();
                reptProduct.DataSource = reader;
                reptProduct.DataBind();

                con.Close();
            }
        }
    }
}