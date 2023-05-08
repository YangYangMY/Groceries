using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data.SqlTypes;
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
            //Open and Link database
            SqlConnection con;
            string strCon = "Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\\GoceriesDatabase.mdf;Integrated Security=True;";
            con = new SqlConnection(strCon);
            con.Open();

            //SQL command for insert data
            SqlCommand insertCmd = new SqlCommand();
            SqlDataAdapter insertAdapter = new SqlDataAdapter();
            String insertSql = "";

            //Read Data input (IDK Right data type or not)
            String name = TextBoxProductName.Text;
            String category = TextBoxProductCategory.Text;
            String desc = TextBoxDescriptions.Text;
            int stock = Int32.Parse(TextBoxStock.Text);
            decimal price = decimal.Parse(TextBoxUnitPrice.Text);
            var image = FileUploadProductImage;
            String discontinue = "false";



            if (name.Length < 3)
            {
                LabelErrorProductName.Text = "Product name should be at least 3 characters";
            }
            else
            {
                LabelErrorProductName.Text = "";
                if (category.Length < 2)
                {
                    LabelErrorProductCategory.Text = "Product category should be at least 2 chracters";
                }
                else
                {
                    LabelErrorProductCategory.Text = "";
                    if(desc.Length < 5)
                    {
                        LabelErrorDescription.Text = "Description is too short";
                    }
                    else
                    {
                        //WHEN VALIDATION IS SUCCESS
                        // INSERT data start from here
                        
                        LabelErrorDescription.Text = "";
                        PanelAddProduct.Visible = false;
                        PanelAddSuccess.Visible = true;
                    }

                }
            }



            //Close database link
            insertCmd.Dispose();
            con.Close();
        }
    }
}