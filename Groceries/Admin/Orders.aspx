<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage/Admin.Master" AutoEventWireup="true" CodeBehind="Orders.aspx.cs" Inherits="Groceries.Admin.Orders" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <h1 class="mb-4 text-3xl font-bold text-black md:text-4xl lg:text-3xl">Orders</h1>
    <h1 class="pt-4 mt-4 space-y-2 font-medium border-t border-gray-700"></h1>

    <!--Table-->
    <div class="relative overflow-x-auto shadow-md sm:rounded-lg">
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [Order].OrderID, Customers.CustomerName, [Order].OrderDate, [Order].TotalPrice FROM [Order] INNER JOIN Customers ON [Order].CustomerID = Customers.CustomerID ORDER BY [Order].OrderID"></asp:SqlDataSource>
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" DataKeyNames="OrderID" DataSourceID="SqlDataSource1" CssClass="w-full text-sm text-left text-gray-500">
            <Columns>
                <asp:BoundField DataField="OrderID" HeaderText="OrderID" InsertVisible="False" ReadOnly="True" SortExpression="OrderID" HeaderStyle-CssClass="text-xs text-gray-700 uppercase bg-[#FBEBDB] px-6 py-3" ItemStyle-CssClass="px-6 py-4 font-medium text-gray-900 whitespace-nowrap" />
                <asp:BoundField DataField="CustomerName" HeaderText="CustomerName" SortExpression="CustomerName" HeaderStyle-CssClass="text-xs text-gray-700 uppercase bg-[#FBEBDB] px-6 py-3" ItemStyle-CssClass="px-6 py-4" />
                <asp:BoundField DataField="OrderDate" HeaderText="OrderDate" SortExpression="OrderDate" HeaderStyle-CssClass="text-xs text-gray-700 uppercase bg-[#FBEBDB] px-6 py-3" ItemStyle-CssClass="px-6 py-4" />
                <asp:BoundField DataField="TotalPrice" HeaderText="TotalPrice" SortExpression="TotalPrice" HeaderStyle-CssClass="text-xs text-gray-700 uppercase bg-[#FBEBDB] px-6 py-3" ItemStyle-CssClass="px-6 py-4" />
                <asp:CommandField SelectText="View" ShowSelectButton="True" HeaderStyle-CssClass="text-xs text-gray-700 uppercase bg-[#FBEBDB] px-6 py-3" ItemStyle-CssClass=" cursor-pointer font-medium text-blue-600 hover:underline mx-5" />
            </Columns>
        </asp:GridView>
    </div>


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
                        <h1 class="pt-4 mt-4 space-y-2 font-medium border-t border-gray-700"></h1>
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

