<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage/Admin.Master" AutoEventWireup="true" CodeBehind="AddProduct.aspx.cs" Inherits="Groceries.Admin.Product.AddProduct" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <h1 class="mb-4 text-3xl font-bold text-black md:text-4xl lg:text-3xl">Add Product</h1>
    <h1 class="pt-4 mt-4 space-y-2 font-medium border-t border-gray-700"></h1>


    <asp:Panel ID="PanelAddProduct" runat="server" Visible="True" CssClass="bg-gray-50 p-20">
        <!--Start of add Product-->
            <div class="flex flex-col items-center justify-center px-6 py-8 mx-auto md:h-screen lg:py-0">
                <div class="w-full bg-white rounded-lg shadow  md:mt-0 sm:max-w-md xl:p-0 ">
                    <div class="p-6 space-y-4 md:space-y-6 sm:p-8">
                        <h1 class="text-xl font-bold leading-tight tracking-tight text-gray-900 md:text-2xl ">Add New Product
                        </h1>
                        <form class="space-y-4 md:space-y-6" action="#">
                            <div>
                                <label for="TextBoxProductName" class="block mb-2 text-sm font-medium text-gray-900 ">
                                    Product Name
                                </label>
                                <asp:TextBox ID="TextBoxProductName" placeholder="Noodles" runat="server" required="" CssClass="bg-gray-50 border border-gray-300 text-gray-900 sm:text-sm rounded-lg focus:ring-primary-600 focus:border-primary-600 block w-full p-2.5"></asp:TextBox>
                            </div>
                            <div>
                                <label for="TextBoxProductCategory" class="block mb-2 text-sm font-medium text-gray-900 ">
                                    Product Category
                                </label>
                                <asp:TextBox ID="TextBoxProductCategory" placeholder="Magee" runat="server" required="" CssClass="bg-gray-50 border border-gray-300 text-gray-900 sm:text-sm rounded-lg focus:ring-primary-600 focus:border-primary-600 block w-full p-2.5"></asp:TextBox>
                            </div>
                            <div>
                                <label for="TextBoxDescriptions" class="block mb-2 text-sm font-medium text-gray-900 ">
                                    Product Descriptions
                                </label>
                <asp:TextBox ID="TextBoxDescriptions" runat="server" placeholder="Product Descriptions" Rows="4" TextMode="MultiLine" CssClass=" border-1 border-solid border-gray-700 peer block min-h-[auto] w-full rounded  bg-transparent py-[0.32rem] px-3 leading-[1.6] outline-none transition-all duration-200 ease-linear"></asp:TextBox>
                            </div>
                            <div>
                                <label for="TextBoxStock" class="block mb-2 text-sm font-medium text-gray-900 ">
                                    Stock Number
                                </label>
                                <asp:TextBox ID="TextBoxStock" placeholder="100" runat="server" required="" CssClass="bg-gray-50 border border-gray-300 text-gray-900 sm:text-sm rounded-lg focus:ring-primary-600 focus:border-primary-600 block w-full p-2.5" TextMode="Number"></asp:TextBox>
                            </div>
                            <div>
                                <label for="TextBoxUnitPrice" class="block mb-2 text-sm font-medium text-gray-900 ">
                                    Unit Price(RM)
                                </label>
                                <asp:TextBox ID="TextBoxUnitPrice" placeholder="5.00" runat="server" required="" CssClass="bg-gray-50 border border-gray-300 text-gray-900 sm:text-sm rounded-lg focus:ring-primary-600 focus:border-primary-600 block w-full p-2.5"></asp:TextBox>
                            </div>
                            <div>
                                <label for="FileUploadProductImage" class="block mb-2 text-sm font-medium text-gray-900 ">
                                    Images
                                </label>
                    <asp:FileUpload ID="FileUploadProductImage" runat="server" CssClass="relative m-0 block w-full min-w-0 flex-auto rounded border border-solid border-neutral-300 bg-clip-padding py-[0.32rem] px-3 text-base font-normal text-neutral-700 transition duration-300 ease-in-out file:-mx-3 file:-my-[0.32rem] file:overflow-hidden file:rounded-none file:border-0 file:border-solid file:border-inherit file:bg-neutral-100 file:px-3 file:py-[0.32rem] file:text-neutral-700 file:transition file:duration-150 file:ease-in-out file:[margin-inline-end:0.75rem] file:[border-inline-end-width:1px] hover:file:bg-neutral-200 focus:border-primary focus:text-neutral-700 focus:shadow-[0_0_0_1px] focus:shadow-primary focus:outline-none" />
                            </div>
                            <div class="flex justify-center space-x-2 p-4">
                            <asp:Button ID="ButtonSubmit" runat="server" Text="Submit" CssClass="w-full text-white bg-[#FB923C] hover:bg-[#FDBA74] focus:ring-4 focus:outline-none focus:ring-primary-300 font-medium rounded-lg text-sm px-5 py-2.5 text-center" OnClick="ButtonSubmit_Click1" />
                            <asp:Button ID="ButtonReset" type="reset" runat="server" Text="Reset" CssClass="w-full text-white bg-[#FDBA74] hover:bg-[#FB923C] focus:ring-4 focus:outline-none focus:ring-primary-300 font-medium rounded-lg text-sm px-5 py-2.5 text-center" />
                            </div>
                        </form>
                    </div>
                </div>
            </div>
    </asp:Panel>

    <!-- Modal  -->

    <asp:Panel ID="PanelSuccess" runat="server" Visible="False">
        <div class="w-full h-full mx-auto text-center">
            <div id="modal-bg" class="w-full h-full bg-[#848A97] top-0  absolute"></div>
            <div id="modal-box" class="sm:w-[385px] sm:min-w-[20vw] min-w-[50vw] min-h-[30vh] flex flex-col items-center gap-2 -translate-y-1/2 p-6 bg-[#FFFFEB] rounded-lg top-1/2 left-1/2 -translate-x-1/2 absolute">
                <svg xmlns="http://www.w3.org/2000/svg" class="text-[#059669] mx-auto h-11 rounded-full bg-[#D1FAE5] w-11" fill="none" viewBox="0 0 24 24" stroke="currentColor">
                    <path stroke-linecap="round" stroke-linejoin="round" stroke-width="1" d="M5 13l4 4L19 7" />
                </svg>
                <span class="text-2xl font-medium">Added Successful</span>
                <p class="text-center">Press continue to go to product list page.</p>
                <asp:Button ID="ButtonSuccess" runat="server" Text="Continue" CssClass=" my-3 cursor-pointer text-white bg-[#FB923C] hover:bg-[#FDBA74] focus:outline-none  font-medium rounded-full text-sm px-5 py-2.5 text-center mr-2 mb-2 " PostBackUrl="~/Admin/ProductList.aspx" />
            </div>
        </div>
    </asp:Panel>

</asp:Content>
