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
                    <td class="inline-flex my-4 mx-6 items-center bg-green-100 text-green-800 text-xs font-medium mr-2 px-2.5 py-0.5 rounded-full">
                        <span class="w-2 h-2 mr-1 bg-green-500 rounded-full"></span>
                        Success
                    </td>
                    <td class="px-6 py-4">
                        <a href="#" class="font-medium text-blue-600 hover:underline">Update</a>
                        <a href="#" class="font-medium text-gray-700 hover:underline mx-5">View</a>
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
                    <td class="inline-flex my-4 mx-6 items-center bg-green-100 text-green-800 text-xs font-medium mr-2 px-2.5 py-0.5 rounded-full">
                        <span class="w-2 h-2 mr-1 bg-green-500 rounded-full"></span>
                        Success
                    </td>
                    <td class="px-6 py-4">
                        <a href="#" class="font-medium text-blue-600 hover:underline">Update</a>
                        <a href="#" class="font-medium text-gray-700 hover:underline mx-5">View</a>
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
                    <td class="inline-flex my-4 mx-6 items-center bg-green-100 text-green-800 text-xs font-medium mr-2 px-2.5 py-0.5 rounded-full">
                        <span class="w-2 h-2 mr-1 bg-green-500 rounded-full"></span>
                        Success
                    </td>
                    <td class="px-6 py-4">
                        <a href="#" class="font-medium text-blue-600 hover:underline">Update</a>
                        <a href="#" class="font-medium text-gray-700 hover:underline mx-5">View</a>
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
                    <td class="inline-flex my-4 mx-6 items-center bg-green-100 text-green-800 text-xs font-medium mr-2 px-2.5 py-0.5 rounded-full">
                        <span class="w-2 h-2 mr-1 bg-green-500 rounded-full"></span>
                        Success
                    </td>
                    <td class="px-6 py-4">
                        <a href="#" class="font-medium text-blue-600 hover:underline">Update</a>
                        <a href="#" class="font-medium text-gray-700 hover:underline mx-5">View</a>
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
                    <td class="inline-flex my-4 mx-6 items-center bg-red-100 text-red-800 text-xs font-medium mr-2 px-2.5 py-0.5 rounded-full">
                        <span class="w-2 h-2 mr-1 bg-red-500 rounded-full"></span>
                        Canceled
                    </td>
                    <td class="px-6 py-4">
                        <a href="#" class="font-medium text-blue-600 hover:underline">Update</a>
                        <a href="#" class="font-medium text-gray-700 hover:underline mx-5">View</a>
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
                    <td class="inline-flex my-4 mx-6 items-center bg-red-100 text-red-800 text-xs font-medium mr-2 px-2.5 py-0.5 rounded-full">
                        <span class="w-2 h-2 mr-1 bg-red-500 rounded-full"></span>
                        Canceled
                    </td>
                    <td class="px-6 py-4">
                        <a href="#" class="font-medium text-blue-600 hover:underline">Update</a>
                        <a href="#" class="font-medium text-gray-700 hover:underline mx-5">View</a>
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
                    <td class="inline-flex my-4 mx-6 items-center bg-yellow-100 text-yellow-800 text-xs font-medium mr-2 px-2.5 py-0.5 rounded-full">
                        <span class="w-2 h-2 mr-1 bg-yellow-500 rounded-full"></span>
                        In Progress
                    </td>
                    <td class="px-6 py-4">
                        <a href="#" class="font-medium text-blue-600 hover:underline">Update</a>
                        <a href="#" class="font-medium text-gray-700 hover:underline mx-5">View</a>
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
                    <td class="inline-flex my-4 mx-6 items-center bg-green-100 text-green-800 text-xs font-medium mr-2 px-2.5 py-0.5 rounded-full">
                        <span class="w-2 h-2 mr-1 bg-green-500 rounded-full"></span>
                        Success
                    </td>
                    <td class="px-6 py-4">
                        <a href="#" class="font-medium text-blue-600 hover:underline">Update</a>
                        <a href="#" class="font-medium text-gray-700 hover:underline mx-5">View</a>
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
                    <td class="inline-flex my-4 mx-6 items-center bg-yellow-100 text-yellow-800 text-xs font-medium mr-2 px-2.5 py-0.5 rounded-full">
                        <span class="w-2 h-2 mr-1 bg-yellow-500 rounded-full"></span>
                        In Progress
                    </td>
                    <td class="px-6 py-4">
                        <a href="#" class="font-medium text-blue-600 hover:underline">Update</a>
                        <a href="#" class="font-medium text-gray-700 hover:underline mx-5">View</a>
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
                    <td class="inline-flex my-4 mx-6 items-center bg-yellow-100 text-yellow-800 text-xs font-medium mr-2 px-2.5 py-0.5 rounded-full">
                        <span class="w-2 h-2 mr-1 bg-yellow-500 rounded-full"></span>
                        In Progress
                    </td>
                    <td class="px-6 py-4">
                        <a href="#" class="font-medium text-blue-600 hover:underline">Update</a>
                        <a href="#" class="font-medium text-gray-700 hover:underline mx-5">View</a>
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




</asp:Content>
