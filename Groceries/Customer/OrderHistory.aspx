<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="OrderHistory.aspx.cs" Inherits="Groceries.Customer.OrderHistory" MasterPageFile="~/MasterPage/MyProfile.master"%>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <div>
        <div class="py-4 2xl:container xl:mx-auto">
            <div class="" style="min-width:800px">
                <div class="border-gray-900/10 py-4 md:py-6 md:p-6 xl:p-8 w-full" >
                    <div class="flex justify-start item-start space-y-2 flex-col">
                        <h1 class="pb-4 text-2xl lg:text-3xl font-semibold leading-7 lg:leading-9 text-gray-800">Order Tracking</h1>
                    </div> 


                    <asp:Repeater ID="RptOrderHistory" runat="server">
                        <itemTemplate>
                        <div class="rounded-lg bg-white shadow-lg border p-6 space-y-6">
                            <p class="pb-4 text-xl lg:text-2xl font-semibold leading-7 lg:leading-9 text-gray-800">OrderID: </p>
                            <asp:Label ID="lblOrderID" runat="server" class="text-base xl:text-lg leading-6 text-gray-800"><%# Eval("OrderID") %></asp:Label>

                            <div class="flex justify-start space-x-12 items-start w-full">
                                <p class="text-base xl:text-lg leading-6">Ordered Date:</p>
                                <asp:Label ID="lblOrderDate" runat="server" class="text-base xl:text-lg leading-6 text-gray-800"><%# Eval("OrderDate") %></asp:Label>
                            </div>
                            <div class="relative overflow-x-auto shadow-md sm:rounded-lg">


                        
                            <asp:Repeater ID="RptOrderData" runat="server">
                             <itemTemplate>
                                 <table class="w-full text-sm text-center text-gray-500 ">
                            
                            <tbody>
                                <tr class="bg-white border-b ">
                                    <th scope="row" class="px-6 py-4">
                                        <div class="w-full md:w-20 mx-auto">
                                            <%# Eval("ProductID") %>
                                        </div>
                                    </th>
                                    <td class="px-6 py-4">
                                        <%# Eval("ProductName") %>
                                    </td>
                                    <td class="px-6 py-4">
                                        <%# Eval("Quantity") %>
                                    </td>
                                </tr>
                        </itemTemplate>
                        </asp:Repeater>

                        <div class="border-gray-200 md:flex-row flex-col flex justify-end items-start w-full space-y-4 md:space-y-0">
                        <div class="flex justify-end space-x-12 items-start w-full pr-6 py-4">
                        <p class="text-base xl:text-lg leading-6">Total Paid:</p>
                        <p class="text-base xl:text-lg leading-6 text-gray-800">RM16.69</p>
                    </div>
                </div>
         
            </div> 
            </itemTemplate>
            </asp:Repeater>

</div>
</div>

</div>
</div>
        
</asp:Content>

<%--<thead class="text-xs text-gray-700 uppercase bg-gray-50 ">
                                <tr>
                                    <th scope="col" class="px-6 py-3">
                                        ProductID
                                    </th>
                                    <th scope="col" class="px-6 py-3">
                                        ProductName
                                    </th>
                                    <th scope="col" class="px-6 py-3">
                                        Quantity
                                    </th>
                                    <th scope="col" class="px-6 py-3">
                                        Subtotal
                                    </th>
                                </tr>
                            </thead>
--%>
