<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage/Admin.Master" AutoEventWireup="true" CodeBehind="ProductList.aspx.cs" Inherits="Groceries.Admin.Product.ProductList" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <h1 class="mb-4 text-3xl font-bold text-black md:text-4xl lg:text-3xl">Product List</h1>
    <h1 class="pt-4 mt-4 space-y-2 font-medium border-t border-gray-700"></h1>


    <!--Table-->
    <asp:Panel ID="PanelProductTable" runat="server" Visible="True">
        <div class="relative overflow-x-auto shadow-md sm:rounded-lg">
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT ProductID, ProductName, UnitInStock, UnitPrice FROM Products ORDER BY ProductID"></asp:SqlDataSource>
            <asp:GridView ID="GridViewProductList" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="ProductID" DataSourceID="SqlDataSource1" CssClass="w-full text-sm text-left text-gray-500" OnSelectedIndexChanged="GridViewProductList_SelectedIndexChanged" >
                <Columns>
                    <asp:BoundField DataField="ProductID" HeaderStyle-CssClass="text-xs text-gray-700 uppercase bg-[#FBEBDB] px-6 py-3" HeaderText="ProductID" ItemStyle-CssClass="px-6 py-4 font-medium text-gray-900 whitespace-nowrap" ReadOnly="True" SortExpression="ProductID">
                    </asp:BoundField>
                    <asp:BoundField DataField="ProductName" HeaderStyle-CssClass="text-xs text-gray-700 uppercase bg-[#FBEBDB] px-6 py-3" HeaderText="ProductName" ItemStyle-CssClass="px-6 py-4 font-medium text-gray-900 whitespace-nowrap" SortExpression="ProductName">
                    </asp:BoundField>
                    <asp:BoundField DataField="UnitInStock" HeaderStyle-CssClass="text-xs text-gray-700 uppercase bg-[#FBEBDB] px-6 py-3" HeaderText="UnitInStock" ItemStyle-CssClass="px-6 py-4 font-medium text-gray-900 whitespace-nowrap" SortExpression="UnitInStock">
                    </asp:BoundField>
                    <asp:BoundField DataField="UnitPrice" HeaderStyle-CssClass="text-xs text-gray-700 uppercase bg-[#FBEBDB] px-6 py-3" HeaderText="UnitPrice" ItemStyle-CssClass="px-6 py-4 font-medium text-gray-900 whitespace-nowrap" SortExpression="UnitPrice">
                    </asp:BoundField>
                    <asp:CommandField SelectText="Edit" ShowSelectButton="True" HeaderStyle-CssClass="text-xs text-gray-700 uppercase bg-[#FBEBDB] px-6 py-3" ItemStyle-CssClass=" text-sm cursor-pointer font-medium text-cyan-600 hover:text-cyan-800 hover:underline rounded-lg px-2" HeaderText="Action" />
                    
                </Columns>
            </asp:GridView>
        </div>
    </asp:Panel>
     
    <asp:Panel ID="PanelEditProduct" runat="server" Visible="False" CssClass="bg-gray-50 p-20">
        <!--Start of Edit Product-->
        <div class="flex flex-col items-center justify-center px-6 py-8 mx-auto md:h-screen lg:py-0">
            <div class="w-full bg-white rounded-lg shadow  md:mt-0 sm:max-w-md xl:p-0 ">
                <div class="p-6 space-y-4 md:space-y-6 sm:p-8">
                    <h1 class="text-xl font-bold leading-tight tracking-tight text-gray-900 md:text-2xl ">Edit Product
                    </h1>
                    <form class="space-y-4 md:space-y-6" action="#">
                        <div>
                            <label for="TextBoxProductName" class="block mb-2 text-sm font-medium text-gray-900 ">
                                Product Name
                            </label>
                            <asp:TextBox ID="TextBoxName" placeholder="Noodles" runat="server" CssClass="bg-gray-50 border border-gray-300 text-gray-900 sm:text-sm rounded-lg focus:ring-primary-600 focus:border-primary-600 block w-full p-2.5" MaxLength="50"></asp:TextBox>
                            <asp:Label ID="LabelErrorProductName" runat="server" Text="" ForeColor="#CC0000" CssClass="block mb-2 text-sm font-medium"></asp:Label>
                        </div>
                        <div>
                            <label for="TextBoxProductCategory" class="block mb-2 text-sm font-medium text-gray-900 ">
                                Product Category<br />
                            </label>
                            <asp:DropDownList ID="ddlProductCategory" runat="server" DataSourceID="SqlDataSource2" DataTextField="CategoryName" DataValueField="CategoryID"></asp:DropDownList>
                            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Category]"></asp:SqlDataSource>
                        </div>
                        <div>
                            <label for="TextBoxDescriptions" class="block mb-2 text-sm font-medium text-gray-900 ">
                                Product Descriptions
                            </label>
                            <asp:TextBox ID="TextBoxDesc" runat="server" placeholder="Product Descriptions" Rows="4" TextMode="MultiLine" CssClass=" border-1 border-solid border-gray-700 peer block min-h-[auto] w-full rounded  bg-transparent py-[0.32rem] px-3 leading-[1.6] outline-none transition-all duration-200 ease-linear"></asp:TextBox>
                            <asp:Label ID="LabelErrorDescription" runat="server" Text="" ForeColor="#CC0000" CssClass="block mb-2 text-sm font-medium"></asp:Label>
                        </div>
                        <div>
                            <label for="TextBoxStock" class="block mb-2 text-sm font-medium text-gray-900 ">
                                Stock Number
                            </label>
                            <asp:TextBox ID="TextBoxStock" placeholder="100" runat="server" CssClass="bg-gray-50 border border-gray-300 text-gray-900 sm:text-sm rounded-lg focus:ring-primary-600 focus:border-primary-600 block w-full p-2.5" TextMode="Number"></asp:TextBox>
                            <asp:Label ID="LabelErrorStock" runat="server" Text="" ForeColor="#CC0000" CssClass="block mb-2 text-sm font-medium"></asp:Label>
                        </div>
                        <div>
                            <label for="TextBoxUnitPrice" class="block mb-2 text-sm font-medium text-gray-900 ">
                                Unit Price(RM)
                            </label>
                            <asp:TextBox ID="TextBoxPrice" placeholder="5.00" runat="server" CssClass="bg-gray-50 border border-gray-300 text-gray-900 sm:text-sm rounded-lg focus:ring-primary-600 focus:border-primary-600 block w-full p-2.5"></asp:TextBox>
                            <asp:Label ID="LabelErrorPrice" runat="server" Text="" ForeColor="#CC0000" CssClass="block mb-2 text-sm font-medium"></asp:Label>
                        </div>
                        <div class="flex justify-center space-x-2 p-4">
                            <asp:Button ID="ButtonCancel" runat="server" Text="Cancel" CssClass="w-full text-white bg-[#FDBA74] hover:bg-[#FB923C] focus:ring-4 focus:outline-none focus:ring-primary-300 font-medium rounded-lg text-sm px-5 py-2.5 text-center" OnClick="ButtonCancel_Click" />
                            <asp:Button ID="ButtonUpdate" runat="server" Text="Update" CssClass="w-full text-white bg-[#FB923C] hover:bg-[#FDBA74] focus:ring-4 focus:outline-none focus:ring-primary-300 font-medium rounded-lg text-sm px-5 py-2.5 text-center" OnClick="ButtonUpdate_Click" />
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </asp:Panel>
</asp:Content>
