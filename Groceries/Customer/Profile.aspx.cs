using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Groceries.Customer
{
    public partial class Profile : System.Web.UI.Page
    {
        StringBuilder table = new StringBuilder();
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!Page.IsPostBack)
            {
                SqlConnection con = new SqlConnection();
                con.ConnectionString = ConfigurationManager.ConnectionStrings["GoceriesDatabaseEntities1"].ToString();
                con.Open();
                SqlCommand cmd = new SqlCommand();
                cmd.CommandText = "Select * from [Customer]";
                cmd.Connection = con;
                SqlDataReader rd = cmd.ExecuteReader();
                table.Append("<table border='1'>");
                table.Append("<tr><th>Customer Id</th><th>Fname</th>");

                if (rd.HasRows)
                {
                    while (rd.Read())
                    {
                        table.Append("<tr>");
                        table.Append("<td>" + rd[0]+"</td>");
                        table.Append("<td>" + rd[1]+"</td>");
                        table.Append("</tr>");
                    }
                }
                table.Append("</table>");
                //PlaceHolder1.Controls.Add(new Literal { Text = table.ToString() });
                rd.Close();


            }
        }
    }
}