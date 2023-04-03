<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage/Admin.Master" AutoEventWireup="true" CodeBehind="AddProduct.aspx.cs" Inherits="Groceries.Admin.Product.AddProduct" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <h1 class="mb-4 text-3xl font-bold text-black md:text-4xl lg:text-3xl">Add Product</h1>
    <h1 class="pt-4 mt-4 space-y-2 font-medium border-t border-gray-700"></h1>


    <asp:Panel ID="PanelAddProduct" runat="server" Visible="True">
            <!--Add product-->
    <div class=" bg-white shadow rounded-lg shadow-xl border-solid border-2 w-4/5 mx-auto">
        <h2 class="text-xl font-bold text-center bg-[#FBEBDB] p-4 uppercase text-gray-700">New Product</h2>
        <h1 class="pt-4 font-medium border-t border-gray-700"></h1>

        <!--Product Name-->
        <label
            for="formFile"
            class="block uppercase tracking-wide text-gray-700 text-xs font-bold mb-2 mx-10">
            Product Name
        </label>
        <div class="flex justify-left mx-10">
            <div>
                <div class="relative mb-3 xl:w-96">
                    <asp:TextBox ID="TextBoxProductName" runat="server" CssClass=" peer m-0 block h-[58px] w-full rounded border border-solid border-gray-300 bg-white bg-clip-padding py-4 px-3 text-base font-normal leading-tight text-gray-700 ease-in-out placeholder:text-transparent focus:border-primary focus:bg-white focus:pt-[1.625rem] focus:pb-[0.625rem] focus:text-neutral-700 focus:shadow-te-primary focus:outline-none  [&:not(:placeholder-shown)]:pt-[1.625rem] [&:not(:placeholder-shown)]:pb-[0.625rem]"
                        placeholder="Product Name...">
                    </asp:TextBox>
                    <label
                        for="floatingInput"
                        class="pointer-events-none absolute top-0 left-0 origin-[0_0] border border-solid border-transparent py-4 px-3 text-gray-700 transition-[opacity,_transform] duration-100 ease-in-out peer-focus:translate-x-[0.15rem] peer-focus:-translate-y-2 peer-focus:scale-[0.85] peer-focus:opacity-[0.65] peer-[:not(:placeholder-shown)]:translate-x-[0.15rem] peer-[:not(:placeholder-shown)]:-translate-y-2 peer-[:not(:placeholder-shown)]:scale-[0.85] peer-[:not(:placeholder-shown)]:opacity-[0.65] motion-reduce:transition-none">
                        Product Name</label>
                </div>
            </div>
        </div>
        <!--Descriptions-->
        <label
            for="formFile"
            class="block uppercase tracking-wide text-gray-700 text-xs font-bold mb-2 mx-10">
            Product Descriptions
        </label>
        <div class="mx-10">
            <asp:TextBox ID="TextBoxDescription" runat="server" placeholder="Product Descriptions" Rows="4" TextMode="MultiLine" CssClass=" border-1 border-solid border-gray-700 peer block min-h-[auto] w-full rounded  bg-transparent py-[0.32rem] px-3 leading-[1.6] outline-none transition-all duration-200 ease-linear"></asp:TextBox>
        </div>
        <!--Stock Number-->
        <label
            for="formFile"
            class="block uppercase tracking-wide text-gray-700 text-xs font-bold mb-2 my-5 mx-10">
            Stock Numbers
        </label>
        <div class="flex justify-left mx-10">
            <div>
                <div class="relative mb-3 xl:w-96">
                    <asp:TextBox ID="TextBoxStockNumber" runat="server" CssClass=" peer m-0 block h-[58px] w-fit rounded border border-solid border-gray-300 bg-white bg-clip-padding py-4 px-3 text-base font-normal leading-tight text-gray-700 ease-in-out placeholder:text-transparent focus:border-primary focus:bg-white focus:pt-[1.625rem] focus:pb-[0.625rem] focus:text-neutral-700 focus:shadow-te-primary focus:outline-none  [&:not(:placeholder-shown)]:pt-[1.625rem] [&:not(:placeholder-shown)]:pb-[0.625rem]"
                        placeholder="Stock Number" TextMode="Number">
                    </asp:TextBox>
                    <label
                        for="floatingInput"
                        class="pointer-events-none absolute top-0 left-0 origin-[0_0] border border-solid border-transparent py-4 px-3 text-gray-700 transition-[opacity,_transform] duration-100 ease-in-out peer-focus:translate-x-[0.15rem] peer-focus:-translate-y-2 peer-focus:scale-[0.85] peer-focus:opacity-[0.65] peer-[:not(:placeholder-shown)]:translate-x-[0.15rem] peer-[:not(:placeholder-shown)]:-translate-y-2 peer-[:not(:placeholder-shown)]:scale-[0.85] peer-[:not(:placeholder-shown)]:opacity-[0.65] motion-reduce:transition-none">
                        Stock Number</label>
                </div>
            </div>
        </div>
        <!--Unit Price-->
        <label
            for="formFile"
            class="block uppercase tracking-wide text-gray-700 text-xs font-bold mb-2 my-5 mx-10">
            Unit Price
        </label>
        <div class="flex justify-left mx-10">
            <div>
                <div class="relative mb-3 xl:w-96">
                    <asp:TextBox ID="TextBoxUnitPrice" runat="server" CssClass=" peer m-0 block h-[58px] w-fit rounded border border-solid border-gray-300 bg-white bg-clip-padding py-4 px-3 text-base font-normal leading-tight text-gray-700 ease-in-out placeholder:text-transparent focus:border-primary focus:bg-white focus:pt-[1.625rem] focus:pb-[0.625rem] focus:text-neutral-700 focus:shadow-te-primary focus:outline-none  [&:not(:placeholder-shown)]:pt-[1.625rem] [&:not(:placeholder-shown)]:pb-[0.625rem]"
                        placeholder="Unit Price" TextMode="SingleLine">
                    </asp:TextBox>
                    <label
                        for="floatingInput"
                        class="pointer-events-none absolute top-0 left-0 origin-[0_0] border border-solid border-transparent py-4 px-3 text-gray-700 transition-[opacity,_transform] duration-100 ease-in-out peer-focus:translate-x-[0.15rem] peer-focus:-translate-y-2 peer-focus:scale-[0.85] peer-focus:opacity-[0.65] peer-[:not(:placeholder-shown)]:translate-x-[0.15rem] peer-[:not(:placeholder-shown)]:-translate-y-2 peer-[:not(:placeholder-shown)]:scale-[0.85] peer-[:not(:placeholder-shown)]:opacity-[0.65] motion-reduce:transition-none">
                        Unit Price</label>
                </div>
            </div>
        </div>
        <!--Images-->
        <label
            for="formFile"
            class="block uppercase tracking-wide text-gray-700 text-xs font-bold mb-2 my-5 mx-10">
            Images
        </label>
        <div class="flex justify-left mx-10">
            <div class="mb-3 w-96">
                <asp:FileUpload ID="FileUploadProductImage" runat="server" CssClass="relative m-0 block w-full min-w-0 flex-auto rounded border border-solid border-neutral-300 bg-clip-padding py-[0.32rem] px-3 text-base font-normal text-neutral-700 transition duration-300 ease-in-out file:-mx-3 file:-my-[0.32rem] file:overflow-hidden file:rounded-none file:border-0 file:border-solid file:border-inherit file:bg-neutral-100 file:px-3 file:py-[0.32rem] file:text-neutral-700 file:transition file:duration-150 file:ease-in-out file:[margin-inline-end:0.75rem] file:[border-inline-end-width:1px] hover:file:bg-neutral-200 focus:border-primary focus:text-neutral-700 focus:shadow-[0_0_0_1px] focus:shadow-primary focus:outline-none" />
            </div>
        </div>
        <!--Button-->
        <div class="flex justify-center space-x-2 p-4">
            <asp:Button ID="ButtonSubmit" runat="server" Text="Submit" CssClass="cursor-pointer text-white bg-[#FB923C] hover:bg-[#FDBA74] focus:outline-none  font-medium rounded-full text-sm px-5 py-2.5 text-center mr-2 mb-2 " OnClick="ButtonSubmit_Click" />
            <asp:Button ID="ButtonReset" runat="server" Text="Reset" CssClass="cursor-pointer text-white bg-[#FDBA74] hover:bg-[#FB923C] focus:outline-none  font-medium rounded-full text-sm px-5 py-2.5 text-center mr-2 mb-2 " />
            <br />

        </div>
    </div>
    <!--End of Form-->
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
