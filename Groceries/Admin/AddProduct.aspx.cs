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
            int stock = 0;
            decimal price = 0;
            if (!string.IsNullOrEmpty(TextBoxStock.Text) && int.TryParse(TextBoxStock.Text, out int parsedStock))
            {
                stock = parsedStock;
            }
            if (!string.IsNullOrEmpty(TextBoxUnitPrice.Text) && decimal.TryParse(TextBoxUnitPrice.Text, out decimal parsedPrice))
            {
                price = parsedPrice;
            }
            bool namePass = false, descPass = false, stockPass = false, pricePass = false, photoPass = false;

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
            if (name.Length == 0)
            {
                LabelErrorProductName.Text = "Product name cannot be empty";
                namePass = false;
            }
            else if (name.Length < 3)
            {
                LabelErrorProductName.Text = "Product name should be at least 3 characters";
                namePass = false;
            }
            else
            {
                LabelErrorProductName.Text = "";
                namePass = true;
            }
            if (desc.Length < 5)
            {
                LabelErrorDescription.Text = "Description is too short";
                descPass = false;
            }
            else
            {
                LabelErrorDescription.Text = "";
                descPass = true;
            }
            if (stock <= 0)
            {
                LabelErrorStock.Text = "Stock should be more than 0.";
                stockPass = false;
            }
            else
            {
                LabelErrorStock.Text = "";
                stockPass = true;
            }
            if (price <= 0)
            {
                LabelErrorPrice.Text = "Price should be more than RM 0.";
                pricePass = false;
            }
            else
            {
                LabelErrorPrice.Text = "";
                pricePass = true;
            }
            if (FileUploadProductImage.HasFile == false)
            {
                LabelErrorUpload.Text = "Kindly upload a product image.";
                photoPass = false;

            }
            else
            {
                string imgName = FileUploadProductImage.FileName.ToString();
                FileUploadProductImage.PostedFile.SaveAs(Server.MapPath("~/ProductImageupload/") + imgName);
                imageFileName = imgName;
                photoPass = true;
            }

            if (namePass && descPass && stockPass && pricePass && photoPass)
            {
                insertSql = "Insert into Products(ProductID,ProductName,Description,UnitPrice,UnitInStock,Media,CategoryID) values (" + idcount + ",'" + name + "','" + desc + "','" + price + "','" + stock + "','" + imageFileName + "','" + category + "')";
                insertCmd = new SqlCommand(insertSql, con);
                insertAdapter.InsertCommand = new SqlCommand(insertSql, con);
                insertCmd.ExecuteNonQuery();
                insertCmd.Dispose();
                con.Close();

                PanelAddProduct.Visible = false;
                PanelAddSuccess.Visible = true;

                //Close database link
                insertCmd.Dispose();
                con.Close();
            }
        }


        protected void ButtonReset_Click(object sender, EventArgs e)
        {
            TextBoxDescriptions.Text = string.Empty;
            TextBoxStock.Text = string.Empty;
            TextBoxUnitPrice.Text = string.Empty;
            FileUploadProductImage = null;
            TextBoxProductName.Text = string.Empty;
            LabelErrorProductName.Text = string.Empty;
            LabelErrorDescription.Text = string.Empty;
            LabelErrorPrice.Text = string.Empty;
            LabelErrorStock.Text = string.Empty;
            LabelErrorUpload.Text = string.Empty;
        }
    }
}
