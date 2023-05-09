using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Data.SqlTypes;
using System.Linq;
using System.Net;
using System.Reflection.Emit;
using System.Web;
using System.Web.Configuration;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml.Linq;

namespace Groceries.Admin.Product
{
    
    public partial class AddProduct : System.Web.UI.Page
    {
        static String imageLink;
        //Open and Link database
        SqlConnection con;
        string strCon = "Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\\GoceriesDatabase.mdf;Integrated Security=True;";


        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                getProductId();
            }

            
        }

        private void getProductId()
        {
            //Open and Link database
            con = new SqlConnection(strCon);
            con.Open();

            //SQL command
            String query = "select ProductID from Products";
            SqlCommand cmd = new SqlCommand();
            cmd.CommandText = query;
            cmd.Connection = con;
            SqlDataAdapter adapter = new SqlDataAdapter();
            adapter.SelectCommand = cmd;
            DataSet ds = new DataSet();
            adapter.Fill(ds);
            con.Close();

            if(ds.Tables[0].Rows.Count < 1)
            {
                LabelProductID.Text = "P0001";
            }
            else
            {
                SqlConnection con1;
                string strCon1 = "Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\\GoceriesDatabase.mdf;Integrated Security=True;";
                con1 = new SqlConnection(strCon1);
                con1.Open();

                String query1 = "select max(ProductID) from Products";
                SqlCommand cmd1 = new SqlCommand();
                cmd1.CommandText = query1;
                cmd1.Connection = con1;
                SqlDataAdapter adapter1 = new SqlDataAdapter();
                adapter1.SelectCommand = cmd1;
                DataSet ds1 = new DataSet();
                adapter1.Fill(ds1);
                LabelProductID.Text = ds1.Tables[0].Rows[0][0].ToString(); //P0002
                string prdID = LabelProductID.Text.Substring(1, 4); //0002 in string
                int a;
                a = Convert.ToInt16(prdID); //0002 in integer
                a = a + 0001;
                LabelProductID.Text = "P" + a.ToString().PadLeft(4,'0');
                con1.Close();

            }

        }

        protected void ButtonSubmit_Click1(object sender, EventArgs e)
        {
            con = new SqlConnection(strCon);
            con.Open();

            //SQL command for insert data
            SqlCommand insertCmd = new SqlCommand();
            SqlDataAdapter insertAdapter = new SqlDataAdapter();
            String insertSql = "";

            //Read Data input (IDK Right data type or not)
            String id = LabelProductID.Text;
            String name = TextBoxProductName.Text;
            String category = TextBoxProductCategory.Text;
            String desc = TextBoxDescriptions.Text;
            int stock = Int32.Parse(TextBoxStock.Text);
            decimal price = decimal.Parse(TextBoxUnitPrice.Text);


            //VALIDATION
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
                        LabelErrorDescription.Text = "";
                        if (stock <= 0)
                        {
                            LabelErrorStock.Text = "Stock should be more than 0.";
                        }
                        else
                        {
                            LabelErrorStock.Text = "";
                            if(price <= 0){
                                LabelErrorPrice.Text = "Price should be more than RM 0.";
                            }
                            else
                            {
                                LabelErrorPrice.Text = "";
                               if(uploadImage() == true)
                                {
                                    insertSql = "Insert into Products(ProductID,ProductName,Description,UnitPrice,UnitInStock) values(" + id + "','" + name + "','" + desc + "','" + price + "','" + stock + "')";

                                    insertCmd = new SqlCommand(insertSql, con);
                                    insertAdapter.InsertCommand = new SqlCommand(insertSql, con);
                                    insertCmd.ExecuteNonQuery();
                                    insertCmd.Dispose();
                                    con.Close();
                                }
                            }
                        }
                        //WHEN VALIDATION IS SUCCESS
                        // INSERT data start from here
                        
                        
                       // PanelAddProduct.Visible = false;
                        //PanelAddSuccess.Visible = true;
                    }

                }
            }



            //Close database link
            insertCmd.Dispose();
            con.Close();
        }

        private Boolean uploadImage()
        {
            Boolean imageSaved = false;
            if(FileUploadProductImage.HasFile == true)
            {
                String contentType = FileUploadProductImage.PostedFile.ContentType;

                if(contentType == "image/jpeg")
                {
                    FileUploadProductImage.SaveAs(Server.MapPath("~/images/") + LabelProductID + ".jpg");
                    imageLink = "images/" + LabelProductID.Text + ".jpg";
                    imageSaved = true;
                }
                else
                {
                    LabelErrorUpload.Text = "Kindly Upload JPEG Format Image Only";
                }
            }
            else
            {
                LabelErrorUpload.Text = "You have not selected any file.";
            }

            return imageSaved;
        }
    }
}