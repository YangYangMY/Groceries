<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage/Admin.Master" AutoEventWireup="true" CodeBehind="Orders.aspx.cs" Inherits="Groceries.Admin.Orders" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <h1 class="mb-4 text-3xl font-bold text-black md:text-4xl lg:text-3xl">Orders</h1>
    <h1 class="pt-4 mt-4 space-y-2 font-medium border-t border-gray-700"></h1>

    <asp:Label ID="LabelErrorOrder" runat="server" Text="Order is Empty" CssClass="flex justify-center p-4 whitespace-nowrap text-sm font-semibold" Visible="False"></asp:Label>

    <!--Table-->
    <div class="relative overflow-x-auto shadow-md sm:rounded-lg">
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [Order].OrderID, Customers.CustomerName, [Order].OrderDate, [Order].TotalPrice FROM [Order] INNER JOIN Customers ON [Order].CustomerID = Customers.CustomerID ORDER BY [Order].OrderID"></asp:SqlDataSource>
        <asp:GridView ID="GridViewOrder" runat="server" AllowPaging="True" AutoGenerateColumns="False" DataKeyNames="OrderID" DataSourceID="SqlDataSource1" CssClass="w-full text-sm text-left text-gray-500" OnSelectedIndexChanged="GridViewOrder_SelectedIndexChanged">
            <Columns>
                <asp:BoundField DataField="OrderID" HeaderText="Order ID" InsertVisible="False" ReadOnly="True" SortExpression="OrderID" HeaderStyle-CssClass="text-xs text-gray-700 uppercase bg-[#FBEBDB] px-6 py-3" ItemStyle-CssClass="px-6 py-4 font-medium text-gray-900 whitespace-nowrap" />
                <asp:BoundField DataField="CustomerName" HeaderText="Buyer" SortExpression="CustomerName" HeaderStyle-CssClass="text-xs text-gray-700 uppercase bg-[#FBEBDB] px-6 py-3" ItemStyle-CssClass="px-6 py-4 font-medium text-gray-900 whitespace-nowrap" />
                <asp:BoundField DataField="OrderDate" HeaderText="Date" SortExpression="OrderDate" HeaderStyle-CssClass="text-xs text-gray-700 uppercase bg-[#FBEBDB] px-6 py-3" ItemStyle-CssClass="px-6 py-4 font-medium text-gray-900 whitespace-nowrap" />
                <asp:BoundField DataField="TotalPrice" HeaderText="Amount   " SortExpression="TotalPrice" HeaderStyle-CssClass="text-xs text-gray-700 uppercase bg-[#FBEBDB] px-6 py-3" ItemStyle-CssClass="px-6 py-4 font-medium text-gray-900 whitespace-nowrap" />
                <asp:CommandField SelectText="View" ShowSelectButton="True" HeaderStyle-CssClass="text-left text-xs text-gray-700 uppercase bg-[#FBEBDB] px-6 py-3" ItemStyle-CssClass=" cursor-pointer font-medium text-blue-600 hover:underline mx-5" HeaderText="Action" />
            </Columns>
        </asp:GridView>
    </div>


    <!--Modal of View Order-->
    <asp:Panel ID="PanelViewOrder" runat="server" Visible="false">
        <div class="bg-black bg-opacity-50 md:bg-opacity-50 fixed top-0 left-0 right-0 z-50  p-4 overflow-x-hidden overflow-y-auto md:inset-0 h-[calc(100%-1rem)] md:h-full">
            <div class="relative w-1/2 h-full   md:h-auto mx-auto my-20">
                <!--Pop Out-->
                <div class="relative bg-white rounded-lg shadow w:full">
                    <br />
                    <asp:Label ID="LabelOrderID" runat="server" Text="Order #1001" CssClass="text-3xl font-bold text-black pt-4 px-6"></asp:Label>
                    <asp:Image ID="Image1" runat="server" CssClass="object-right  bg-transparent rounded-lg text-sm px-6 ml-auto" ImageUrl="~/favicon_io/favicon-32x32.png" />
                    <h3 class=" text-2xl font-bold text-black px-6 text-right">Goceries</h3>
                    <h3 class=" text-1xl font-normal text-black px-6 text-right">Jalan Genting Kalang,53300, Kuala Lumpur</h3>
                    <asp:Label ID="LabelDate" runat="server" Text="4 May,2023" CssClass="absolute right-0 text-1xl font-bold text-black px-6"></asp:Label>
                    <h3 class=" text-2xl font-bold text-black pt-7 px-6">Buyer</h3>
                    <asp:Label ID="LabelBuyerName" runat="server" Text="Oh Boon Suen" CssClass="text-1xl font-bold text-black px-6"></asp:Label>
                    <br />
                    <asp:Label ID="LabelBuyerNum" runat="server" Text="0177255766" CssClass="text-1xl font-bold text-black px-6"></asp:Label>
                    <br />
                    <h3 class=" text-2xl font-bold text-black pt-7 px-6">Deliver To</h3>
                    <asp:Label ID="LabelDeliveryName" runat="server" Text="Oh Boon Suen" CssClass="text-1xl font-bold text-black px-6"></asp:Label>
                    <br />
                    <asp:Label ID="LabelDeliveryNum" runat="server" Text="0177255766" CssClass="text-1xl font-bold text-black px-6"></asp:Label>
                    <br />
                    <asp:Label ID="LabelDeliveryAddress" runat="server" Text="
                        2, Jalan Danau Saujana, 
                        Taman Danau Kota, 53000 Kuala Lumpur, 
                        Wilayah Persekutuan Kuala Lumpur"
                        CssClass="flex justify-left text-1xl font-normal text-black px-6 italic max-w-xs"></asp:Label>
                    <h1 class="pt-4 mt-4 space-y-2 font-medium border-t border-gray-700"></h1>
                    <!--Table-->
                    <div class="relative overflow-x-auto shadow-md sm:rounded-lg w-11/12 mx-auto my-5">
                        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT Products.ProductName, OrderItem.Quantity, Products.UnitPrice FROM OrderItem INNER JOIN [Order] ON OrderItem.OrderID = [Order].OrderID INNER JOIN Products ON OrderItem.ProductID = Products.ProductID"></asp:SqlDataSource>
                        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource2" CssClass="w-full text-sm text-left text-gray-500">
                            <Columns>
                                <asp:BoundField DataField="ProductName" HeaderText="Product" SortExpression="ProductName" HeaderStyle-CssClass="text-xs text-gray-700 uppercase bg-[#FBEBDB] px-6 py-3" ItemStyle-CssClass="px-6 py-4 font-medium text-gray-900 whitespace-nowrap" />
                                <asp:BoundField DataField="Quantity" HeaderText="Quantity" SortExpression="Quantity" HeaderStyle-CssClass="text-xs text-gray-700 uppercase bg-[#FBEBDB] px-6 py-3" ItemStyle-CssClass="px-6 py-4 font-medium text-gray-900 whitespace-nowrap" />
                                <asp:BoundField DataField="UnitPrice" HeaderText="Unit Price" SortExpression="UnitPrice" HeaderStyle-CssClass="text-xs text-gray-700 uppercase bg-[#FBEBDB] px-6 py-3" ItemStyle-CssClass="px-6 py-4 font-medium text-gray-900 whitespace-nowrap" />
                            </Columns>
                        </asp:GridView>
                    </div>
                    <h3 class=" text-1xl font-bold text-gray-700 px-auto text-right">6% Tax
                        <asp:Label ID="LabelTax" runat="server" Text="RM 10" CssClass=" mx-10 text-1xl font-bold text-gray-700 text-right"></asp:Label>
                    </h3>
                    <h3 class=" text-1xl font-bold text-gray-700 px-auto text-right">Delivery Fee
                        <asp:Label ID="Label1" runat="server" Text="RM 10" CssClass=" mx-10 text-1xl font-bold text-gray-700 text-right"></asp:Label>
                    </h3>
                    <h3 class=" text-1xl font-bold text-gray-700 px-auto text-right">TOTAL
                        <asp:Label ID="LabelTotal" runat="server" Text="RM 1917" CssClass=" mx-10 text-1xl font-bold text-gray-700 text-right"></asp:Label>
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
</asp:Content>

