<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="OrderHistory.aspx.cs" Inherits="Groceries.Customer.OrderHistory" MasterPageFile="~/MasterPage/Customer.Master"%>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <!--Content-->

    <div class="py-14 px-4 md:px-6 2xl:px-20 2xl:container xl:mx-auto bg-stone-50">
    <div class="mx-auto" style="max-width:1000px">
    <div class="border-gray-900/10 rounded-lg bg-white shadow-lg border px-4 py-4 md:py-6 md:p-6 xl:p-8 w-full" >
    <div class="flex justify-start item-start space-y-2 flex-col">
        <h1 class="pb-4 text-2xl lg:text-3xl font-semibold leading-7 lg:leading-9 text-gray-800">Order History</h1>
        <h1 class="pb-4 text-xl lg:text-2xl font-semibold leading-7 lg:leading-9 text-gray-800">Order #001</h1>
    </div> 

    <div class="relative overflow-x-auto shadow-md sm:rounded-lg">
    <table class="w-full text-sm text-left text-gray-500 dark:text-gray-400">
        <thead class="text-xs text-gray-700 uppercase bg-gray-50 dark:bg-gray-700 dark:text-gray-400">
            <tr>
                <th scope="col" class="px-6 py-3">
                    Product
                </th>
                <th scope="col" class="px-6 py-3">
                    Quantity
                </th>
                <th scope="col" class="px-6 py-3">
                    Total Price
                </th>
            </tr>
        </thead>
        <tbody>
            <tr class="bg-white border-b dark:bg-gray-800 dark:border-gray-700">
                <th scope="row" class="px-6 py-4">
                    <div class="w-full md:w-20">
                        <img class="hidden md:block" src="../images/massimobread.png" alt="missimo" />
                    </div>
                </th>
                <td class="px-6 py-4">
                    1
                </td>
                <td class="px-6 py-4">
                    RM3.19
                </td>
            </tr>
            <tr class="bg-white border-b dark:bg-gray-800 dark:border-gray-700">
                <th scope="row" class="px-6 py-4">
                    <div class="w-full md:w-20">
                        <img class="hidden md:block" src="../images/hbchips.jpg" alt="hbchips" />
                    </div>
                </th>
                <td class="px-6 py-4">
                    1
                </td>
                <td class="px-6 py-4">
                    RM5.50
                </td>
            </tr> 
        </tbody>
    </table>
</div>


</div>
</div>     
</div>

</asp:Content>
