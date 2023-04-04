<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage/Admin.Master" AutoEventWireup="true" CodeBehind="ProductList.aspx.cs" Inherits="Groceries.Admin.Product.ProductList" %>
<asp:content id="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
    <h1 class="mb-4 text-3xl font-bold text-black md:text-4xl lg:text-3xl">Product List</h1>
    <h1 class="pt-4 mt-4 space-y-2 font-medium border-t border-gray-700"></h1>


    <!--Table-->
    
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
                    <a href="#" class="font-medium text-blue-600 hover:underline">Edit</a>
                    <a href="#" class=" mx-2 font-medium text-red-600 hover:underline">Delete</a>
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
                    <a href="#" class="font-medium text-blue-600 hover:underline">Edit</a>
                    <a href="#" class=" mx-2 font-medium text-red-600 hover:underline">Delete</a>
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
                    <a href="#" class="font-medium text-blue-600 hover:underline">Edit</a>
                    <a href="#" class=" mx-2 font-medium text-red-600 hover:underline">Delete</a>
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
                    <a href="#" class="font-medium text-blue-600 hover:underline">Edit</a>
                    <a href="#" class=" mx-2 font-medium text-red-600 hover:underline">Delete</a>
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
                    <a href="#" class="font-medium text-blue-600 hover:underline">Edit</a>
                    <a href="#" class=" mx-2 font-medium text-red-600 hover:underline">Delete</a>
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
                    <a href="#" class="font-medium text-blue-600 hover:underline">Edit</a>
                    <a href="#" class=" mx-2 font-medium text-red-600 hover:underline">Delete</a>
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
                    <a href="#" class="font-medium text-blue-600 hover:underline">Edit</a>
                    <a href="#" class=" mx-2 font-medium text-red-600 hover:underline">Delete</a>
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
                    <a href="#" class="font-medium text-blue-600  hover:underline">Edit</a>
                    <a href="#" class=" mx-2 font-medium text-red-600 hover:underline">Delete</a>
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
                    <a href="#" class="font-medium text-blue-600  hover:underline">Edit</a>
                    <a href="#" class=" mx-2 font-medium text-red-600 hover:underline">Delete</a>
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
                    <a href="#" class="font-medium text-blue-600 hover:underline">Edit</a>
                    <a href="#" class=" mx-2 font-medium text-red-600 hover:underline">Delete</a>
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


</asp:content>
