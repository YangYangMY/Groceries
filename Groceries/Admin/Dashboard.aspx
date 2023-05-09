<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Dashboard.aspx.cs" Inherits="Groceries.Dashboard" MasterPageFile="~/MasterPage/Admin.master" %>


<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1 class="mb-4 text-3xl font-bold text-black md:text-4xl lg:text-3xl">Dashboard</h1>
    <h1 class="pt-4 mt-4 space-y-2 font-medium border-t border-gray-200 dark:border-gray-700"></h1>
    <!--Total Profit, orders, products -->
    <div class="grid md:grid-cols-2 xl:grid-cols-3 gap-10 my-2">
        <div class="flex items-center p-8 bg-white shadow rounded-lg shadow-xl border-solid border-2">
            <div class="inline-flex flex-shrink-0 items-center justify-center h-16 w-16 text-purple-600 bg-purple-100 rounded-full mr-6">
                <img class="mx-4 object-cover w-full rounded-t-lg h-30 md:h-20 md:w-20 md:rounded-none md:rounded-l-lg" src="../images/save-money.gif" alt="">
            </div>
            <div>
                <span class="block text-1xl font-bold text-[#4B49AC]">Total Profit</span>
                <asp:Label ID="LabelProfit" runat="server" Text="RM 5,000.20" CssClass="block text-2xl text-black font-bold"></asp:Label>
            </div>
        </div>
        <div class="flex items-center p-8 bg-white shadow rounded-lg shadow-xl border-solid border-2">
            <div class="inline-flex flex-shrink-0 items-center justify-center h-16 w-16 text-purple-600 bg-purple-100 rounded-full mr-6">
                <img class="mx-4 object-cover w-full rounded-t-lg h-30 md:h-20 md:w-20 md:rounded-none md:rounded-l-lg" src="../images/shopping-cart.gif" alt="">
            </div>
            <div>
                <span class="block text-1xl font-bold text-[#4B49AC]">Total Orders</span>
                <asp:Label ID="LabelOrders" runat="server" Text="400" CssClass="block text-2xl text-black font-bold"></asp:Label>
            </div>
        </div>
        <div class="flex items-center p-8 bg-white shadow rounded-lg shadow-xl border-solid border-2">
            <div class="inline-flex flex-shrink-0 items-center justify-center h-16 w-16 text-purple-600 bg-purple-100 rounded-full mr-6">
                <img class="mx-4 object-cover w-full rounded-t-lg h-30 md:h-20 md:w-20 md:rounded-none md:rounded-l-lg" src="../images/shopping-basket.gif" alt="">
            </div>
            <div>
                <span class="block text-1xl font-bold text-[#4B49AC]">Total Products</span>
                <asp:Label ID="LabelProduct" runat="server" Text="40" CssClass="block text-2xl text-black font-bold"></asp:Label>
            </div>
        </div>
    </div>

    <!--end -->


        


    <!--Latest Orders-->
        <div class="bg-white shadow rounded-lg p-4 sm:p-6 xl:p-8 my-5  border-solid border-2">
            <div class="mb-4 flex items-center justify-between">
                <div>
                    <h3 class="text-xl font-bold text-gray-900 mb-2">Latest Orders</h3>
                </div>
                <div class="flex-shrink-0">
                    <a href="Orders.aspx" class="text-sm font-medium text-cyan-600 hover:bg-gray-100 rounded-lg p-2">View all</a>
                </div>
            </div>
            <div class="flex flex-col mt-8">
                <div class="overflow-x-auto rounded-lg">
                    <div class="align-middle inline-block min-w-full">
                        <div class="shadow overflow-hidden sm:rounded-lg">
                            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [Order].OrderID, [Order].OrderDate, [Order].TotalPrice, Customers.CustomerName FROM [Order] INNER JOIN Customers ON [Order].CustomerID = Customers.CustomerID ORDER BY [Order].OrderID DESC"></asp:SqlDataSource>
                            <asp:GridView ID="GridViewOrder" runat="server" AutoGenerateColumns="False" DataKeyNames="OrderID" DataSourceID="SqlDataSource1" PageSize="5" CssClass=" min-w-full divide-y divide-gray-200">
                                <Columns>
                                    <asp:BoundField DataField="OrderID" HeaderText="Order ID" InsertVisible="False" ReadOnly="True" SortExpression="OrderID" HeaderStyle-CssClass="text-left text-xs text-gray-700 uppercase bg-[#FBEBDB] px-6 py-3" ItemStyle-CssClass="px-6 py-4 font-medium text-gray-900 whitespace-nowrap" />
                                    <asp:BoundField DataField="CustomerName" HeaderText="Buyer" SortExpression="CustomerName" HeaderStyle-CssClass="text-left text-xs text-gray-700 uppercase bg-[#FBEBDB] px-6 py-3" ItemStyle-CssClass="px-6 py-4 font-medium text-gray-900 whitespace-nowrap" />
                                    <asp:BoundField DataField="OrderDate" HeaderText="Date" SortExpression="OrderDate" HeaderStyle-CssClass="text-left text-xs text-gray-700 uppercase bg-[#FBEBDB] px-6 py-3" ItemStyle-CssClass="px-6 py-4 font-medium text-gray-900 whitespace-nowrap" />
                                    <asp:BoundField DataField="TotalPrice" HeaderText="Amount" SortExpression="TotalPrice" HeaderStyle-CssClass="text-left text-xs text-gray-700 uppercase bg-[#FBEBDB] px-6 py-3" ItemStyle-CssClass="px-6 py-4 font-medium text-gray-900 whitespace-nowrap" />
                                </Columns>
                            </asp:GridView>
                            <asp:Label ID="LabelErrorOrder" runat="server" Text="Order is Empty" CssClass="flex justify-center p-4 whitespace-nowrap text-sm font-semibold" Visible="False"></asp:Label>
                        </div>
                    </div>
                </div>
            </div>
        </div>
</asp:Content>
