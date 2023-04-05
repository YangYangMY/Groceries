<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage/Customer.Master" AutoEventWireup="true" CodeBehind="Favourite.aspx.cs" Inherits="Groceries.Customer.Favourite" %>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server" ViewStateMode="Inherit">
    
    <div class="flex items-baseline justify-between border-b border-gray-200 pb-6 pt-10 mx-10">
        <h1 class="text-4xl font-bold tracking-tight text-[#003049]">Favourite</h1>
    </div>

    <div class="relative overflow-x-auto shadow-md sm:rounded-lg m-10">
        <table class="w-full text-sm text-left text-gray-500">
            <thead class="text-lg text-[#FFFFFF] uppercase bg-[#F6BD60]">
                <tr>
                    <th scope="col" class="px-6 py-3">
                        <span class="sr-only">Image</span>
                    </th>
                    <th scope="col" class="px-6 py-3">Product
                    </th>
                    <th scope="col" class="px-6 py-3">Action
                    </th>
                </tr>
            </thead>
            <tbody>
                <tr class="bg-white border-b dark:bg-gray-800 dark:border-gray-700 hover:bg-gray-50 dark:hover:bg-gray-600">
                    <td class="w-32 p-4">
                        <img src="../images/chips.png" alt="chips">
                    </td>
                    <td class="px-6 py-4 font-semibold text-gray-900 dark:text-white">Calbee Honey Butter Chips (60g)
                    </td>
                    <td class="px-6 py-4">
                        <a href="#" class="font-medium text-red-600 dark:text-red-500 hover:underline">Remove</a>
                    </td>
                </tr>
                <tr class="bg-white border-b dark:bg-gray-800 dark:border-gray-700 hover:bg-gray-50 dark:hover:bg-gray-600">
                    <td class="w-32 p-4">
                        <img src="../images/rabbit-candy.png" alt="rabbit-candy">
                    </td>
                    <td class="px-6 py-4 font-semibold text-gray-900 dark:text-white">White Rabbit Creamy Candy (108g)
                    </td>
                    <td class="px-6 py-4">
                        <a href="#" class="font-medium text-red-600 dark:text-red-500 hover:underline">Remove</a>
                    </td>
                </tr>
                <tr class="bg-white border-b dark:bg-gray-800 dark:border-gray-700 hover:bg-gray-50 dark:hover:bg-gray-600">
                    <td class="w-32 p-4">
                        <img src="../images/mandu.png" alt="mandu">
                    </td>
                    <td class="px-6 py-4 font-semibold text-gray-900 dark:text-white">CJ Bibigo Original Korea Dumplings Kimchi & Pork (525g)
                    </td>
                    <td class="px-6 py-4">
                        <a href="#" class="font-medium text-red-600 dark:text-red-500 hover:underline">Remove</a>
                    </td>
                </tr>
            </tbody>
        </table>
    </div>

</asp:Content>
