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

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void ButtonSubmit_Click1(object sender, EventArgs e)
        {

            //Reading Data input
            String name = TextBoxProductName.Text;
            String category = ddlProductCategory.SelectedValue;
            String desc = TextBoxDescriptions.Text;
            String imageFileName = null;
            int stock = Int32.Parse(TextBoxStock.Text);
            decimal price = decimal.Parse(TextBoxUnitPrice.Text);
            bool submitPass = false;

            //Open and Link Dbs
            SqlConnection con;
            string strCon = "Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\\GoceriesDatabase.mdf;Integrated Security=True;";
            con = new SqlConnection(strCon);
            con.Open();

            //SQL command for insert data
            SqlCommand insertCmd = new SqlCommand();
            SqlDataAdapter insertAdapter = new SqlDataAdapter();
            String insertSql = "";

            //SQL Command for read data
            SqlCommand readCmd;
            SqlDataReader dataReader;
            String readSql;
            int idcount = 0;

            readSql = "Select ProductID from Products";

            readCmd = new SqlCommand(readSql, con);
            dataReader = readCmd.ExecuteReader();
            while (dataReader.Read())
            {
                idcount++;
            }
            idcount += 1;
            dataReader.Close();
            readCmd.Dispose();

            //VALIDATION
            if (name.Length < 3)
            {
                LabelErrorProductName.Text = "Product name should be at least 3 characters";
                submitPass = false;
            }
            else
            {
                LabelErrorProductName.Text = "";
                
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
                            submitPass = false;
                        }
                        else
                        {
                            LabelErrorStock.Text = "";
                            if(price <= 0){
                                LabelErrorPrice.Text = "Price should be more than RM 0.";
                                submitPass=false;
                            }
                            else
                            {
                                LabelErrorPrice.Text = "";
                                if (FileUploadProductImage.HasFile == false)
                                {
                                    LabelErrorUpload.Text = "Kindly upload a product image.";
                                    submitPass=false;
                                    
                                }
                                else
                                {
                                    string imgName = FileUploadProductImage.FileName.ToString();
                                    FileUploadProductImage.PostedFile.SaveAs(Server.MapPath("~/ProductImageupload/") + imgName);
                                    imageFileName = imgName;
                                    submitPass = true;
                                }
                                
                            }
                        }

                        if (submitPass)
                        {
                            //HVT PASS IMAGE NAME
                            insertSql = "Insert into Products(ProductID,ProductName,Description,UnitPrice,UnitInStock,Media,CategoryID) values (" + idcount + ",'" + name + "','" + desc + "','" + price + "','" + stock + "','" + imageFileName + "','" + category + "')";
                            insertCmd = new SqlCommand(insertSql, con);
                            insertAdapter.InsertCommand = new SqlCommand(insertSql, con);
                            insertCmd.ExecuteNonQuery();
                            insertCmd.Dispose();
                            con.Close();

                            PanelAddProduct.Visible = false;
                            PanelAddSuccess.Visible = true;
                        }

                }
            }

            //Close database link
            insertCmd.Dispose();
            con.Close();
        }

        protected void ButtonReset_Click(object sender, EventArgs e)
        {
            TextBoxDescriptions.Text = string.Empty;
            TextBoxStock.Text = string.Empty;
            TextBoxUnitPrice.Text = string.Empty;
            FileUploadProductImage = null;
            TextBoxProductName.Text = string.Empty;
            LabelErrorProductName.Text= string.Empty;
            LabelErrorDescription.Text= string.Empty;
            LabelErrorPrice.Text= string.Empty;
            LabelErrorStock .Text= string.Empty;
            LabelErrorUpload.Text= string.Empty;
        }
    }
}