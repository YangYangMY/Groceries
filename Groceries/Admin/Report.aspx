<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage/Admin.Master" AutoEventWireup="true" CodeBehind="Report.aspx.cs" Inherits="Groceries.Admin.Report" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <h1 class="mb-4 text-3xl font-bold text-black md:text-4xl lg:text-3xl">Reports</h1>
    <h1 class="pt-4 mt-4 space-y-2 font-medium border-t border-gray-200 dark:border-gray-700"></h1>

    <!--Monthly Report-->
    <div class="bg-white shadow rounded-lg p-4 sm:p-6 xl:p-8 my-5  border-solid border-2">
        <div class="mb-4 flex items-center justify-between">
            <div>
                <h3 class="text-xl font-bold text-gray-900 mb-2">Monthly Report</h3>
            </div>
        </div>
        <div class="flex flex-col mt-8">
            <div class="overflow-x-auto rounded-lg">
                <div class="align-middle inline-block min-w-full">
                    <div class="shadow overflow-hidden sm:rounded-lg">
                        <table class="min-w-full divide-y divide-gray-200">
                            <thead class="bg-gray-50">
                                <tr>
                                    <th scope="col" class="p-4 text-left text-xs font-medium text-gray-500 uppercase tracking-wider">Report ID
                                    </th>
                                    <th scope="col" class="p-4 text-left text-xs font-medium text-gray-500 uppercase tracking-wider">Month
                                    </th>
                                    <th scope="col" class="p-4 text-left text-xs font-medium text-gray-500 uppercase tracking-wider">Actions 
                                    </th>
                                </tr>
                            </thead>
                            <tbody class="bg-white">
                                <tr class="bg-gray-50">
                                    <td class="p-4 whitespace-nowrap text-sm font-normal text-gray-900 rounded-lg rounded-left">1005
                                    </td>
                                    <td class=" p-4 whitespace-nowrap text-sm font-semibold">June 2021
                                    </td>
                                    <td class="p-4 whitespace-nowrap text-sm font-semibold text-gray-900">
                                        <a href="Orders.aspx" class="text-sm font-medium text-cyan-600 hover:bg-gray-100 rounded-lg p-2">View</a>
                                    </td>
                                </tr>
                                <tr class="bg-gray-50">
                                    <td class="p-4 whitespace-nowrap text-sm font-normal text-gray-900 rounded-lg rounded-left">1004
                                    </td>
                                    <td class=" p-4 whitespace-nowrap text-sm font-semibold">May 2021
                                    </td>
                                    <td class="p-4 whitespace-nowrap text-sm font-semibold text-gray-900">
                                        <a href="Orders.aspx" class="text-sm font-medium text-cyan-600 hover:bg-gray-100 rounded-lg p-2">View</a>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="p-4 whitespace-nowrap text-sm font-normal text-gray-900">1003
                                    </td>
                                    <td class=" p-4 whitespace-nowrap text-sm font-semibold">April 2021
                                    </td>
                                    <td class="p-4 whitespace-nowrap text-sm font-semibold text-gray-900">
                                        <a href="Orders.aspx" class="text-sm font-medium text-cyan-600 hover:bg-gray-100 rounded-lg p-2">View</a>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="p-4 whitespace-nowrap text-sm font-normal text-gray-900">1002
                                    </td>
                                    <td class=" p-4 whitespace-nowrap text-sm font-semibold">March 2021
                                    </td>
                                    <td class="p-4 whitespace-nowrap text-sm font-semibold text-gray-900">
                                        <a href="Orders.aspx" class="text-sm font-medium text-cyan-600 hover:bg-gray-100 rounded-lg p-2">View</a>
                                    </td>
                                    <tr>
                                        <td class="p-4 whitespace-nowrap text-sm font-normal text-gray-900">1001
                                        </td>
                                        <td class=" p-4 whitespace-nowrap text-sm font-semibold">February 2021
                                        </td>
                                        <td class="p-4 whitespace-nowrap text-sm font-semibold text-gray-900">
                                            <a href="Orders.aspx" class="text-sm font-medium text-cyan-600 hover:bg-gray-100 rounded-lg p-2">View</a>
                                        </td>
                                    </tr>
                                </tr>
                        </table>
                    </div>
                </div>
            </div>
        </div>
        <nav class="flex items-center justify-between pt-4" aria-label="Table navigation">
            <span class="text-sm font-normal text-gray-500 mx-5 ">Showing <span class="font-semibold text-gray-900 ">1-5</span></span>
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

