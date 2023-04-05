<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage/Admin.Master" AutoEventWireup="true" CodeBehind="Orders.aspx.cs" Inherits="Groceries.Admin.Orders" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <h1 class="mb-4 text-3xl font-bold text-black md:text-4xl lg:text-3xl">Orders</h1>
    <h1 class="pt-4 mt-4 space-y-2 font-medium border-t border-gray-700"></h1>

    <!--Table-->
    <div class="relative overflow-x-auto shadow-md sm:rounded-lg">
        <table class="w-full text-sm text-left text-gray-500">
            <thead class="text-xs text-gray-700 uppercase bg-[#FBEBDB]">
                <tr>
                    <th scope="col" class="px-6 py-3">Order ID
                    </th>
                    <th scope="col" class="px-6 py-3">Buyer
                    </th>
                    <th scope="col" class="px-6 py-3">Date
                    </th>
                    <th scope="col" class="px-6 py-3">Amount
                    </th>
                    <th scope="col" class="px-6 py-3 ">Status
                    </th>
                    <th scope="col" class="px-6 py-3 ">Action
                    </th>
                </tr>
            </thead>
            <tbody>
                <tr class="bg-white border-b hover:bg-gray-50">
                    <th scope="row" class="px-6 py-4 font-medium text-gray-900 whitespace-nowrap">1001
                    </th>
                    <td class="px-6 py-4">Wee Yan
                    </td>
                    <td class="px-6 py-4">Apr 15 ,2021
                    </td>
                    <td class="px-6 py-4">RM 200
                    </td>
                    <td>
                        <asp:Label ID="Status1" runat="server" Text="Success" CssClass="inline-flex my-4 mx-6 items-center bg-green-100 text-green-800 text-xs font-medium mr-2 px-2.5 py-0.5 rounded-full"></asp:Label>
                    </td>
                    <td class="px-6 py-4">
                        <asp:Button ID="ButtonUpdate1" runat="server" Text="Update" CssClass=" cursor-pointer font-medium text-blue-600 hover:underline" OnClick="ButtonUpdate1_Click" />
                        <asp:Button ID="ButtonView1" runat="server" Text="View" CssClass=" cursor-pointer font-medium text-gray-700 hover:underline mx-5" OnClick="ButtonView1_Click" />
                    </td>
                </tr>
                <tr class="bg-white border-b hover:bg-gray-50">
                    <th scope="row" class="px-6 py-4 font-medium text-gray-900 whitespace-nowrap">1002
                    </th>
                    <td class="px-6 py-4">Chia Chia
                    </td>
                    <td class="px-6 py-4">Apr 15 ,2021
                    </td>
                    <td class="px-6 py-4">RM 450
                    </td>
                    <td>
                        <asp:Label ID="Status2" runat="server" Text="Success" CssClass="inline-flex my-4 mx-6 items-center bg-green-100 text-green-800 text-xs font-medium mr-2 px-2.5 py-0.5 rounded-full"></asp:Label>
                    </td>
                    <td class="px-6 py-4">
                        <asp:Button ID="ButtonUpdate2" runat="server" Text="Update" CssClass=" cursor-pointer font-medium text-blue-600 hover:underline" OnClick="ButtonUpdate1_Click" />
                        <asp:Button ID="ButtonView2" runat="server" Text="View" CssClass=" cursor-pointer font-medium text-gray-700 hover:underline mx-5" OnClick="ButtonView1_Click" />
                    </td>
                </tr>
                <tr class="bg-white border-b hover:bg-gray-50">
                    <th scope="row" class="px-6 py-4 font-medium text-gray-900 whitespace-nowrap">1003
                    </th>
                    <td class="px-6 py-4">Ga Men
                    </td>
                    <td class="px-6 py-4">Apr 18 ,2021
                    </td>
                    <td class="px-6 py-4">RM 434
                    </td>
                    <td>
                        <asp:Label ID="Status3" runat="server" Text="Success" CssClass="inline-flex my-4 mx-6 items-center bg-green-100 text-green-800 text-xs font-medium mr-2 px-2.5 py-0.5 rounded-full"></asp:Label>
                    </td>
                    <td class="px-6 py-4">
                        <asp:Button ID="ButtonUpdate3" runat="server" Text="Update" CssClass=" cursor-pointer font-medium text-blue-600 hover:underline" OnClick="ButtonUpdate1_Click" />
                        <asp:Button ID="ButtonView3" runat="server" Text="View" CssClass=" cursor-pointer font-medium text-gray-700 hover:underline mx-5" OnClick="ButtonView1_Click" />
                    </td>
                </tr>
                <tr class="bg-white border-b hover:bg-gray-50">
                    <th scope="row" class="px-6 py-4 font-medium text-gray-900 whitespace-nowrap">1004
                    </th>
                    <td class="px-6 py-4">Yong Yue
                    </td>
                    <td class="px-6 py-4">Apr 23 ,2021
                    </td>
                    <td class="px-6 py-4">RM 500
                    </td>
                    <td>
                        <asp:Label ID="Status4" runat="server" Text="Success" CssClass="inline-flex my-4 mx-6 items-center bg-green-100 text-green-800 text-xs font-medium mr-2 px-2.5 py-0.5 rounded-full"></asp:Label>
                    </td>
                    <td class="px-6 py-4">
                        <asp:Button ID="ButtonUpdate4" runat="server" Text="Update" CssClass=" cursor-pointer font-medium text-blue-600 hover:underline" OnClick="ButtonUpdate1_Click" />
                        <asp:Button ID="ButtonView4" runat="server" Text="View" CssClass=" cursor-pointer font-medium text-gray-700 hover:underline mx-5" OnClick="ButtonView1_Click" />
                    </td>
                </tr>
                <tr class="bg-white border-b hover:bg-gray-50">
                    <th scope="row" class="px-6 py-4 font-medium text-gray-900 whitespace-nowrap">1005
                    </th>
                    <td class="px-6 py-4">Bonnie Green
                    </td>
                    <td class="px-6 py-4">Apr 23 ,2021
                    </td>
                    <td class="px-6 py-4">RM 1300
                    </td>
                    <td>
                        <asp:Label ID="Status5" runat="server" Text="Canceled" CssClass="inline-flex my-4 mx-6 items-center bg-red-100 text-red-800 text-xs font-medium mr-2 px-2.5 py-0.5 rounded-full"></asp:Label>
                    </td>
                    <td class="px-6 py-4">
                        <asp:Button ID="ButtonUpdate5" runat="server" Text="Update" CssClass=" cursor-pointer font-medium text-blue-600 hover:underline" OnClick="ButtonUpdate1_Click" />
                        <asp:Button ID="ButtonView5" runat="server" Text="View" CssClass=" cursor-pointer font-medium text-gray-700 hover:underline mx-5" OnClick="ButtonView1_Click" />
                    </td>
                </tr>
                <tr class="bg-white border-b hover:bg-gray-50">
                    <th scope="row" class="px-6 py-4 font-medium text-gray-900 whitespace-nowrap">1006
                    </th>
                    <td class="px-6 py-4">Marry
                    </td>
                    <td class="px-6 py-4">Apr 27,2021
                    </td>
                    <td class="px-6 py-4">RM 231
                    </td>
                    <td>
                        <asp:Label ID="Status6" runat="server" Text="Canceled" CssClass="inline-flex my-4 mx-6 items-center bg-red-100 text-red-800 text-xs font-medium mr-2 px-2.5 py-0.5 rounded-full"></asp:Label>
                    </td>
                    <td class="px-6 py-4">
                        <asp:Button ID="ButtonUpdate6" runat="server" Text="Update" CssClass=" cursor-pointer font-medium text-blue-600 hover:underline" OnClick="ButtonUpdate1_Click" />
                        <asp:Button ID="ButtonView6" runat="server" Text="View" CssClass=" cursor-pointer font-medium text-gray-700 hover:underline mx-5" OnClick="ButtonView1_Click" />
                    </td>
                </tr>
                <tr class="bg-white border-b hover:bg-gray-50">
                    <th scope="row" class="px-6 py-4 font-medium text-gray-900 whitespace-nowrap">1007
                    </th>
                    <td class="px-6 py-4">Tzen Yang
                    </td>
                    <td class="px-6 py-4">May 1,2021
                    </td>
                    <td class="px-6 py-4">RM 50000
                    </td>
                    <td>
                        <asp:Label ID="Status7" runat="server" Text="In Progress" CssClass="inline-flex my-4 mx-6 items-center bg-yellow-100 text-yellow-800 text-xs font-medium mr-2 px-2.5 py-0.5 rounded-full"></asp:Label>
                    </td>
                    <td class="px-6 py-4">
                        <asp:Button ID="ButtonUpdate7" runat="server" Text="Update" CssClass=" cursor-pointer font-medium text-blue-600 hover:underline" OnClick="ButtonUpdate1_Click" />
                        <asp:Button ID="ButtonView7" runat="server" Text="View" CssClass=" cursor-pointer font-medium text-gray-700 hover:underline mx-5" OnClick="ButtonView1_Click" />
                    </td>
                </tr>

                <tr class="bg-white border-b hover:bg-gray-50 ">
                    <th scope="row" class="px-6 py-4 font-medium text-gray-900 whitespace-nowrap ">1008
                    </th>
                    <td class="px-6 py-4">Josh Baldwin
                    </td>
                    <td class="px-6 py-4">May 16,2021
                    </td>
                    <td class="px-6 py-4">RM 199
                    </td>
                    <td>
                        <asp:Label ID="Status8" runat="server" Text="Success" CssClass="inline-flex my-4 mx-6 items-center bg-green-100 text-green-800 text-xs font-medium mr-2 px-2.5 py-0.5 rounded-full"></asp:Label>
                    </td>
                    <td class="px-6 py-4">
                        <asp:Button ID="ButtonUpdate8" runat="server" Text="Update" CssClass=" cursor-pointer font-medium text-blue-600 hover:underline" OnClick="ButtonUpdate1_Click" />
                        <asp:Button ID="ButtonView8" runat="server" Text="View" CssClass=" cursor-pointer font-medium text-gray-700 hover:underline mx-5" OnClick="ButtonView1_Click" />
                    </td>
                </tr>
                <tr class="bg-white border-b hover:bg-gray-50 ">
                    <th scope="row" class="px-6 py-4 font-medium text-gray-900 whitespace-nowrap ">1009
                    </th>
                    <td class="px-6 py-4">Andrew Hew
                    </td>
                    <td class="px-6 py-4">May 25,2021
                    </td>
                    <td class="px-6 py-4">RM 25000
                    </td>
                    <td>
                        <asp:Label ID="Status9" runat="server" Text="In Progress" CssClass="inline-flex my-4 mx-6 items-center bg-yellow-100 text-yellow-800 text-xs font-medium mr-2 px-2.5 py-0.5 rounded-full"></asp:Label>
                    </td>
                    <td class="px-6 py-4">
                        <asp:Button ID="ButtonUpdate9" runat="server" Text="Update" CssClass=" cursor-pointer font-medium text-blue-600 hover:underline" OnClick="ButtonUpdate1_Click" />
                        <asp:Button ID="ButtonView9" runat="server" Text="View" CssClass=" cursor-pointer font-medium text-gray-700 hover:underline mx-5" OnClick="ButtonView1_Click" />
                    </td>
                </tr>
                <tr class="bg-white border-b hover:bg-gray-50 ">
                    <th scope="row" class="px-6 py-4 font-medium text-gray-900 whitespace-nowrap ">1010
                    </th>
                    <td class="px-6 py-4">Hin Yong
                    </td>
                    <td class="px-6 py-4">May 28,2021
                    </td>
                    <td class="px-6 py-4">RM 9050
                    </td>
                    <td>
                        <asp:Label ID="Status10" runat="server" Text="In Progress" CssClass="inline-flex my-4 mx-6 items-center bg-yellow-100 text-yellow-800 text-xs font-medium mr-2 px-2.5 py-0.5 rounded-full"></asp:Label>
                    </td>
                    <td class="px-6 py-4">
                        <asp:Button ID="ButtonUpdate10" runat="server" Text="Update" CssClass=" cursor-pointer font-medium text-blue-600 hover:underline" OnClick="ButtonUpdate1_Click" />
                        <asp:Button ID="ButtonView10" runat="server" Text="View" CssClass=" cursor-pointer font-medium text-gray-700 hover:underline mx-5" OnClick="ButtonView1_Click" />
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
                        <svg class="w-5 h-5" aria-hidden="true" fill="currentColor" viewBox="0 0 20 20" xmlns="http://www.w3.org/2000/svg">
                            <path fill-rule="evenodd" d="M12.707 5.293a1 1 0 010 1.414L9.414 10l3.293 3.293a1 1 0 01-1.414 1.414l-4-4a1 1 0 010-1.414l4-4a1 1 0 011.414 0z" clip-rule="evenodd"></path></svg>
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
                        <svg class="w-5 h-5" aria-hidden="true" fill="currentColor" viewBox="0 0 20 20" xmlns="http://www.w3.org/2000/svg">
                            <path fill-rule="evenodd" d="M7.293 14.707a1 1 0 010-1.414L10.586 10 7.293 6.707a1 1 0 011.414-1.414l4 4a1 1 0 010 1.414l-4 4a1 1 0 01-1.414 0z" clip-rule="evenodd"></path></svg>
                    </a>
                </li>
            </ul>
        </nav>
    </div>

    <!--Modal of Update Order-->
    <asp:Panel ID="PanelConfirmDelete" runat="server" Visible="false">
        <div class="bg-black bg-opacity-50 md:bg-opacity-50 fixed top-0 left-0 right-0 z-50  p-4 overflow-x-hidden overflow-y-auto md:inset-0 h-[calc(100%-1rem)] md:h-full">
            <div class="relative w-full h-full max-w-md md:h-auto mx-auto my-20">
                <!--Pop Out-->
                <div class="relative bg-white rounded-lg shadow ">
                    <div class="p-6 text-center ">
                        <h3 class="mb-5 text-lg font-normal text-gray-500 ">Update Order</h3>
                        <h1 class="pt-4 mt-4 space-y-2 font-medium border-t border-gray-700"></h1>
                        <asp:DropDownList ID="DropDownListUpdate" CssClass="font-sans" runat="server" AutoPostBack="True">
                            <asp:ListItem>Success</asp:ListItem>
                            <asp:ListItem>Canceled</asp:ListItem>
                            <asp:ListItem>In Progress</asp:ListItem>
                        </asp:DropDownList>
                        </br>
                        <asp:Button ID="ButtonUpdate" runat="server" CssClass="my-5 text-white bg-orange-600 hover:bg-orange-800 focus:ring-4 focus:outline-none focus:ring-orange -300  font-medium rounded-lg text-sm inline-flex items-center px-5 py-2.5 text-center mr-2" OnClick="ButtonUpdate_Click" Text="Update" />
                        <asp:Button ID="ButtonCancelDelete" runat="server" CssClass="text-gray-500 bg-gray-300 hover:bg-gray-400 focus:ring-4 focus:outline-none focus:ring-gray-200 rounded-lg border border-gray-200 text-sm font-medium px-5 py-2.5 hover:text-gray-900 focus:z-10 " OnClick="ButtonCancelDelete_Click" Text="Cancel" />
                    </div>
                </div>
            </div>
        </div>
    </asp:Panel>

    <!--Modal of View Order-->
    <asp:Panel ID="PanelViewOrder" runat="server" Visible="false">
        <div class="bg-black bg-opacity-50 md:bg-opacity-50 fixed top-0 left-0 right-0 z-50  p-4 overflow-x-hidden overflow-y-auto md:inset-0 h-[calc(100%-1rem)] md:h-full">
            <div class="relative w-1/2 h-full   md:h-auto mx-auto my-20">
                <!--Pop Out-->
                <div class="relative bg-white rounded-lg shadow w:full">
                    <h3 class=" text-3xl font-bold text-black pt-4 px-6">Order #1001</h3>
                    <asp:Image ID="Image1" runat="server" CssClass="object-right  bg-transparent rounded-lg text-sm px-6 ml-auto" ImageUrl="~/favicon_io/favicon-32x32.png" />
                    <h3 class=" text-2xl font-bold text-black px-6 text-right">Goceries</h3>
                    <h3 class=" text-1xl font-normal text-black px-6 text-right">
                        Jalan Genting Kalang,53300, Kuala Lumpur</h3>
                    <h3 class=" text-1xl font-normal text-gray-600 px-6 text-right">4 May,2023</h3>
                    <h3 class=" text-2xl font-bold text-black pt-6 px-6">Bill To</h3>
                    <h3 class=" text-1xl font-bold text-black px-6">Oh Boon Suen</h3>
                    <h3 class=" text-1xl font-normal text-black px-6 italic max-w-xs">
                        2, Jalan Danau Saujana, 
                        Taman Danau Kota, 53000 Kuala Lumpur, 
                        Wilayah Persekutuan Kuala Lumpur
                    </h3>
                    <!--Table-->
                    <div class="relative overflow-x-auto shadow-md sm:rounded-lg w-11/12 mx-auto my-5">
                        <table class="w-full text-sm text-left text-gray-500">
                            <thead class="text-xs text-gray-700 uppercase bg-[#FBEBDB]">
                                <tr>
                                    <th scope="col" class="px-6 py-3">Product
                                    </th>
                                    <th scope="col" class="px-6 py-3">QTY
                                    </th>
                                    <th scope="col" class="px-6 py-3">Price
                                    </th>
                                    <th scope="col" class="px-6 py-3 ">Total
                                    </th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr class="bg-white border-b hover:bg-gray-50">
                                    <th scope="row" class="px-6 py-4 font-medium text-gray-900 whitespace-nowrap">100 Plus
                                    </th>
                                    <td class="px-6 py-4">3
                                    </td>
                                    <td class="px-6 py-4">RM 40
                                    </td>
                                    <td class="px-6 py-4">RM 120
                                    </td>
                                </tr>
                                <tr class="bg-white border-b hover:bg-gray-50">
                                    <th scope="row" class="px-6 py-4 font-medium text-gray-900 whitespace-nowrap">Ice Cream
                                    </th>
                                    <td class="px-6 py-4">1
                                    </td>
                                    <td class="px-6 py-4">RM 399
                                    </td>
                                    <td class="px-6 py-4">RM 399
                                    </td>
                                </tr>
                                <tr class="bg-white border-b hover:bg-gray-50">
                                    <th scope="row" class="px-6 py-4 font-medium text-gray-900 whitespace-nowrap">Chocolate
                                    </th>
                                    <td class="px-6 py-4">2
                                    </td>
                                    <td class="px-6 py-4">RM 699
                                    </td>
                                    <td class="px-6 py-4">RM 1398
                                    </td>
                                </tr>
                            </tbody>
                        </table>
                    </div>
                    <h1 class="pt-4 mt-4 space-y-2 font-medium border-t border-gray-700"></h1>
                    <h3 class=" text-1xl font-bold text-gray-700 px-auto text-right">
                        TOTAL                     
                        <span class=" mx-10 text-1xl font-bold text-gray-700 text-right">
                        RM 1917   
                    </span>
                    </h3>

                    <div class="p-6 text-center ">
                        <h1 class="pt-4 mt-4 space-y-2 font-medium border-t border-gray-700"></h1>
                        <asp:Button ID="ButtonOrderClose" runat="server" CssClass="text-gray-500 bg-gray-300 hover:bg-gray-400 focus:ring-4 focus:outline-none focus:ring-gray-200 rounded-lg border border-gray-200 text-sm font-medium px-5 py-2.5 hover:text-gray-900 focus:z-10 " OnClick="ButtonOrderClose_Click1" Text="Close" />
                    </div>
                </div>
            </div>
        </div>
    </asp:Panel>


</asp:Content>
<asp:Content ID="Content2" runat="server" ContentPlaceHolderID="head">
    <style type="text/css">
        .auto-style1 {
            height: 32px;
        }
    </style>
</asp:Content>

