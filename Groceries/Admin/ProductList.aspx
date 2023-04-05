<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage/Admin.Master" AutoEventWireup="true" CodeBehind="ProductList.aspx.cs" Inherits="Groceries.Admin.Product.ProductList" %>
<asp:content id="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
    <h1 class="mb-4 text-3xl font-bold text-black md:text-4xl lg:text-3xl">Product List</h1>
    <h1 class="pt-4 mt-4 space-y-2 font-medium border-t border-gray-700"></h1>


    <!--Table-->
    <asp:Panel ID="PanelProductTable" runat="server" Visible="True">
        <div class="relative overflow-x-auto shadow-md sm:rounded-lg">
    <table class="w-full text-sm text-left text-gray-500">
        <thead class="text-xs text-gray-700 uppercase bg-[#FBEBDB]">
            <tr>
                <th scope="col" class="px-6 py-3">
                    Product ID
                </th>
                <th scope="col" class="px-6 py-3">
                    Product Name
                </th>
                <th scope="col" class="px-6 py-3">
                    Stock
                </th>
                <th scope="col" class="px-6 py-3">
                    Price
                </th>
                <th scope="col" class="px-6 py-3 ">
                    Action
                </th>
            </tr>
        </thead>
        <tbody>
            <tr class="bg-white border-b hover:bg-gray-50">
                <th scope="row" class="px-6 py-4 font-medium text-gray-900 whitespace-nowrap">
                    1001
                </th>
                <td class="px-6 py-4">
                    100 Plus
                </td>
                <td class="px-6 py-4">
                    50
                </td>
                <td class="px-6 py-4">
                    RM40
                </td>
                <td class="px-6 py-4">
                    <asp:Button ID="ButtonRow1" runat="server" Text="Edit" CssClass=" cursor-pointer font-medium text-blue-600 hover:underline" OnClick="ButtonRow1_Click" />
                    <asp:Button ID="ButtonDelete1" runat="server" Text="Delete" CssClass=" cursor-pointer mx-2 font-medium text-red-600 hover:underline" OnClick="ButtonDelete1_Click" />
                </td>
            </tr>
            <tr class="bg-white border-b hover:bg-gray-50">
                <th scope="row" class="px-6 py-4 font-medium text-gray-900 whitespace-nowrap">
                    1002
                </th>
                <td class="px-6 py-4">
                    Milk
                </td>
                <td class="px-6 py-4">
                   100
                </td>
                <td class="px-6 py-4">
                    RM10
                </td>
                <td class="px-6 py-4">
                    <asp:Button ID="ButtonRow2" runat="server" Text="Edit" CssClass=" cursor-pointer font-medium text-blue-600 hover:underline" OnClick="ButtonRow1_Click" />
                    <asp:Button ID="ButtonDelete2" runat="server" Text="Delete" CssClass=" cursor-pointer mx-2 font-medium text-red-600 hover:underline" OnClick="ButtonDelete1_Click" />
                </td>
            </tr>
            <tr class="bg-white border-b hover:bg-gray-50">
                <th scope="row" class="px-6 py-4 font-medium text-gray-900 whitespace-nowrap">
                    1003
                </th>
                <td class="px-6 py-4">
                    Biscuit
                </td>
                <td class="px-6 py-4">
                    12
                </td>
                <td class="px-6 py-4">
                    RM5
                </td>
                <td class="px-6 py-4">
                    <asp:Button ID="ButtonRow3" runat="server" Text="Edit" CssClass=" cursor-pointer font-medium text-blue-600 hover:underline" OnClick="ButtonRow1_Click" />
                    <asp:Button ID="ButtonDelete3" runat="server" Text="Delete" CssClass=" cursor-pointer mx-2 font-medium text-red-600 hover:underline" OnClick="ButtonDelete1_Click" />
                </td>
            </tr>
            <tr class="bg-white border-b hover:bg-gray-50">
                <th scope="row" class="px-6 py-4 font-medium text-gray-900 whitespace-nowrap">
                    1004
                </th>
                <td class="px-6 py-4">
                    Coffee Bean
                </td>
                <td class="px-6 py-4">
                    60
                </td>
                <td class="px-6 py-4">
                    RM199
                </td>
                <td class="px-6 py-4">
                    <asp:Button ID="ButtonRow4" runat="server" Text="Edit" CssClass=" cursor-pointer font-medium text-blue-600 hover:underline" OnClick="ButtonRow1_Click" />
                    <asp:Button ID="ButtonDelete4" runat="server" Text="Delete" CssClass=" cursor-pointer mx-2 font-medium text-red-600 hover:underline" OnClick="ButtonDelete1_Click" />
                </td>
            </tr>
            <tr class="bg-white border-b hover:bg-gray-50">
                <th scope="row" class="px-6 py-4 font-medium text-gray-900 whitespace-nowrap">
                    1005
                </th>
                <td class="px-6 py-4">
                    Mineral Water
                </td>
                <td class="px-6 py-4">
                    20
                </td>
                <td class="px-6 py-4">
                    RM2999
                </td>
                <td class="px-6 py-4">
                    <asp:Button ID="ButtonRow5" runat="server" Text="Edit" CssClass=" cursor-pointer font-medium text-blue-600 hover:underline" OnClick="ButtonRow1_Click" />
                    <asp:Button ID="ButtonDelete5" runat="server" Text="Delete" CssClass=" cursor-pointer mx-2 font-medium text-red-600 hover:underline" OnClick="ButtonDelete1_Click" />
                </td>
            </tr>
            <tr class="bg-white border-b hover:bg-gray-50">
                <th scope="row" class="px-6 py-4 font-medium text-gray-900 whitespace-nowrap">
                    1006
                </th>
                <td class="px-6 py-4">
                    Ice Cream
                </td>
                <td class="px-6 py-4">
                    10
                </td>
                <td class="px-6 py-4">
                    RM399
                </td>
                <td class="px-6 py-4">
                    <asp:Button ID="ButtonRow6" runat="server" Text="Edit" CssClass=" cursor-pointer font-medium text-blue-600 hover:underline" OnClick="ButtonRow1_Click" />
                    <asp:Button ID="ButtonDelete6" runat="server" Text="Delete" CssClass=" cursor-pointer mx-2 font-medium text-red-600 hover:underline" OnClick="ButtonDelete1_Click" />
                </td>
            </tr>
            <tr class="bg-white border-b hover:bg-gray-50">
                <th scope="row" class="px-6 py-4 font-medium text-gray-900 whitespace-nowrap">
                    1007
                </th>
                <td class="px-6 py-4">
                    Chocolate
                </td>
                <td class="px-6 py-4">
                    69
                </td>
                <td class="px-6 py-4">
                    RM699
                </td>
                <td class="px-6 py-4">
                    <asp:Button ID="ButtonRow7" runat="server" Text="Edit" CssClass=" cursor-pointer font-medium text-blue-600 hover:underline" OnClick="ButtonRow1_Click" />
                    <asp:Button ID="ButtonDelete7" runat="server" Text="Delete" CssClass=" cursor-pointer mx-2 font-medium text-red-600 hover:underline" OnClick="ButtonDelete1_Click" />
                </td>
            </tr>
            <tr class="bg-white border-b hover:bg-gray-50 ">
                <th scope="row" class="px-6 py-4 font-medium text-gray-900 whitespace-nowrap ">
                    1008
                </th>
                <td class="px-6 py-4">
                    Noodle
                </td>
                <td class="px-6 py-4">
                    26
                </td>
                <td class="px-6 py-4">
                    RM99
                </td>
                <td class="px-6 py-4">
                    <asp:Button ID="Button8" runat="server" Text="Edit" CssClass=" cursor-pointer font-medium text-blue-600 hover:underline" OnClick="ButtonRow1_Click" />
                    <asp:Button ID="ButtonDelete8" runat="server" Text="Delete" CssClass=" cursor-pointer mx-2 font-medium text-red-600 hover:underline" OnClick="ButtonDelete1_Click" />
                </td>
            </tr>
            <tr class="bg-white border-b hover:bg-gray-50 ">
                <th scope="row" class="px-6 py-4 font-medium text-gray-900 whitespace-nowrap ">
                    1009
                </th>
                <td class="px-6 py-4">
                    Magee
                </td>
                <td class="px-6 py-4">
                    26
                </td>
                <td class="px-6 py-4">
                    RM79
                </td>
                <td class="px-6 py-4">
                    <asp:Button ID="Button9" runat="server" Text="Edit" CssClass=" cursor-pointer font-medium text-blue-600 hover:underline" OnClick="ButtonRow1_Click" />
                    <asp:Button ID="ButtonDelete9" runat="server" Text="Delete" CssClass=" cursor-pointer mx-2 font-medium text-red-600 hover:underline" OnClick="ButtonDelete1_Click" />
                </td>
            </tr>
            <tr class="bg-white border-b hover:bg-gray-50 ">
                <th scope="row" class="px-6 py-4 font-medium text-gray-900 whitespace-nowrap ">
                    1010
                </th>
                <td class="px-6 py-4">
                    Bread
                </td>
                <td class="px-6 py-4">
                    67
                </td>
                <td class="px-6 py-4">
                    RM29
                </td>
                <td class="px-6 py-4">
                    <asp:Button ID="ButtonRow10" runat="server" Text="Edit" CssClass=" cursor-pointer font-medium text-blue-600 hover:underline" OnClick="ButtonRow1_Click" />
                    <asp:Button ID="ButtonDelete10" runat="server" Text="Delete" CssClass=" cursor-pointer mx-2 font-medium text-red-600 hover:underline" OnClick="ButtonDelete1_Click" />
                </td>
            </tr>
        </tbody>
    </table>
    <nav class="flex items-center justify-between pt-4" aria-label="Table navigation">
        <span class="text-sm font-normal text-gray-500 mx-5 ">Showing <span class="font-semibold text-gray-900 ">1-10</span> of <span class="font-semibold text-gray-900 ">1000</span></span>
        <ul class="inline-flex items-center -space-x-px m-3 right-0">
            <li>
                <a href="#" class="block px-3 py-2 ml-0 leading-tight text-gray-500 bg-white border border-gray-300 rounded-l-lg hover:bg-gray-100 hover:text-gray-700 ">
                    <span class="sr-only">Previous</span>
                    <svg class="w-5 h-5" aria-hidden="true" fill="currentColor" viewBox="0 0 20 20" xmlns="http://www.w3.org/2000/svg"><path fill-rule="evenodd" d="M12.707 5.293a1 1 0 010 1.414L9.414 10l3.293 3.293a1 1 0 01-1.414 1.414l-4-4a1 1 0 010-1.414l4-4a1 1 0 011.414 0z" clip-rule="evenodd"></path></svg>
                </a>
            </li>
            <li>
                <a href="#" aria-current="page" class="z-10 px-3 py-2 leading-tight text-blue-600 border border-blue-300 bg-blue-50 hover:bg-blue-100 hover:text-blue-700">1</a>
            </li>
            <li>
                <a href="#" class="px-3 py-2 leading-tight text-gray-500 bg-white border border-gray-300 hover:bg-gray-100 hover:text-gray-700 ">2</a>
            </li>
            <li>
                <a href="#" class="px-3 py-2 leading-tight text-gray-500 bg-white border border-gray-300 hover:bg-gray-100 hover:text-gray-700">3</a>
            </li>
            <li>
                <a href="#" class="px-3 py-2 leading-tight text-gray-500 bg-white border border-gray-300 hover:bg-gray-100 hover:text-gray-700 ">...</a>
            </li>
            <li>
                <a href="#" class="px-3 py-2 leading-tight text-gray-500 bg-white border border-gray-300 hover:bg-gray-100 hover:text-gray-700 ">100</a>
            </li>
            <li>
                <a href="#" class="block px-3 py-2 leading-tight text-gray-500 bg-white border border-gray-300 rounded-r-lg hover:bg-gray-100 hover:text-gray-700">
                    <span class="sr-only">Next</span>
                    <svg class="w-5 h-5" aria-hidden="true" fill="currentColor" viewBox="0 0 20 20" xmlns="http://www.w3.org/2000/svg"><path fill-rule="evenodd" d="M7.293 14.707a1 1 0 010-1.414L10.586 10 7.293 6.707a1 1 0 011.414-1.414l4 4a1 1 0 010 1.414l-4 4a1 1 0 01-1.414 0z" clip-rule="evenodd"></path></svg>
                </a>
            </li>
        </ul>
    </nav>
</div>
    </asp:Panel>

    <asp:Panel ID="PanelEditProduct" runat="server" Visible="False" CssClass="bg-gray-50 p-20">
        <!--Start of edit Product-->
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
                            <asp:TextBox ID="TextBoxProductName" Text="100 Plus" runat="server" required="" CssClass="bg-gray-50 border border-gray-300 text-gray-900 sm:text-sm rounded-lg focus:ring-primary-600 focus:border-primary-600 block w-full p-2.5"></asp:TextBox>
                        </div>
                        <div>
                            <label for="TextBoxProductCategory" class="block mb-2 text-sm font-medium text-gray-900 ">
                                Product Category
                            </label>
                            <asp:TextBox ID="TextBoxProductCategory" Text="Drinks" runat="server" required="" CssClass="bg-gray-50 border border-gray-300 text-gray-900 sm:text-sm rounded-lg focus:ring-primary-600 focus:border-primary-600 block w-full p-2.5"></asp:TextBox>
                        </div>
                        <div>
                            <label for="TextBoxDescriptions" class="block mb-2 text-sm font-medium text-gray-900 ">
                                Product Descriptions
                            </label>
                            <asp:TextBox ID="TextBoxDescriptions" runat="server" Text="Carbohydrate Drinks" Rows="4" TextMode="MultiLine" CssClass=" border-1 border-solid border-gray-700 peer block min-h-[auto] w-full rounded  bg-transparent py-[0.32rem] px-3 leading-[1.6] outline-none transition-all duration-200 ease-linear"></asp:TextBox>
                        </div>
                        <div>
                            <label for="TextBoxStock" class="block mb-2 text-sm font-medium text-gray-900 ">
                                Stock Number
                            </label>
                            <asp:TextBox ID="TextBoxStock" Text="50" runat="server" required="" CssClass="bg-gray-50 border border-gray-300 text-gray-900 sm:text-sm rounded-lg focus:ring-primary-600 focus:border-primary-600 block w-full p-2.5" TextMode="Number"></asp:TextBox>
                        </div>
                        <div>
                            <label for="TextBoxUnitPrice" class="block mb-2 text-sm font-medium text-gray-900 ">
                                Unit Price(RM)
                            </label>
                            <asp:TextBox ID="TextBoxUnitPrice" Text="40.00" runat="server" required="" CssClass="bg-gray-50 border border-gray-300 text-gray-900 sm:text-sm rounded-lg focus:ring-primary-600 focus:border-primary-600 block w-full p-2.5"></asp:TextBox>
                        </div>
                        <div>
                            <label for="FileUploadProductImage" class="block mb-2 text-sm font-medium text-gray-900 ">
                                Images
                            </label>
                            <asp:FileUpload ID="FileUploadProductImage" runat="server" CssClass="relative m-0 block w-full min-w-0 flex-auto rounded border border-solid border-neutral-300 bg-clip-padding py-[0.32rem] px-3 text-base font-normal text-neutral-700 transition duration-300 ease-in-out file:-mx-3 file:-my-[0.32rem] file:overflow-hidden file:rounded-none file:border-0 file:border-solid file:border-inherit file:bg-neutral-100 file:px-3 file:py-[0.32rem] file:text-neutral-700 file:transition file:duration-150 file:ease-in-out file:[margin-inline-end:0.75rem] file:[border-inline-end-width:1px] hover:file:bg-neutral-200 focus:border-primary focus:text-neutral-700 focus:shadow-[0_0_0_1px] focus:shadow-primary focus:outline-none" />
                        </div>
                        <div class="flex justify-center space-x-2 p-4">
                            <asp:Button ID="ButtonUpdate" runat="server" Text="Update" CssClass="w-full text-white bg-[#FB923C] hover:bg-[#FDBA74] focus:ring-4 focus:outline-none focus:ring-primary-300 font-medium rounded-lg text-sm px-5 py-2.5 text-center" OnClick="ButtonUpdate_Click" />
                            <asp:Button ID="ButtonCancel"  runat="server" Text="Cancel" CssClass="w-full text-white bg-[#FDBA74] hover:bg-[#FB923C] focus:ring-4 focus:outline-none focus:ring-primary-300 font-medium rounded-lg text-sm px-5 py-2.5 text-center" OnClick="ButtonCancel_Click" />
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </asp:Panel>

        <!--Modal of Confimration delete account-->
    <asp:Panel ID="PanelConfirmDelete" runat="server" Visible="False">
        <div class="bg-black bg-opacity-50 md:bg-opacity-50 fixed top-0 left-0 right-0 z-50  p-4 overflow-x-hidden overflow-y-auto md:inset-0 h-[calc(100%-1rem)] md:h-full">
            <div class="relative w-full h-full max-w-md md:h-auto mx-auto my-20">
                <!--Pop Out-->
                <div class="relative bg-white rounded-lg shadow ">
                    <asp:Button ID="ButtonCancelDeleteIcon" Text="X" runat="server" CssClass="text-3xl absolute top-3 right-2.5 text-gray-400 bg-transparent hover:bg-gray-200 hover:text-gray-900 rounded-lg text-sm p-1.5 ml-auto inline-flex items-center " OnClick="ButtonCancelDeleteIcon_Click" />
                    <div class="p-6 text-center ">
                        <svg class="mx-auto mb-4 text-gray-400 w-14 h-14 " fill="none" stroke="currentColor" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg">
                            <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M12 8v4m0 4h.01M21 12a9 9 0 11-18 0 9 9 0 0118 0z"></path></svg>
                        <h3 class="mb-5 text-lg font-normal text-gray-500 ">Are you sure you want to delete this product?</h3>
                        <asp:Button ID="ButtonConfirmDelete" runat="server" Text="Delete Product" CssClass="text-white bg-red-600 hover:bg-red-800 focus:ring-4 focus:outline-none focus:ring-red-300  font-medium rounded-lg text-sm inline-flex items-center px-5 py-2.5 text-center mr-2" OnClick="ButtonConfirmDelete_Click" />
                        <asp:Button ID="ButtonCancelDelete" runat="server" Text="Cancel" CssClass="text-gray-500 bg-gray-300 hover:bg-gray-400 focus:ring-4 focus:outline-none focus:ring-gray-200 rounded-lg border border-gray-200 text-sm font-medium px-5 py-2.5 hover:text-gray-900 focus:z-10 " OnClick="ButtonCancelDelete_Click" />
                    </div>
                </div>
            </div>
        </div>
    </asp:Panel>



</asp:content>
