<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage/Admin.Master" AutoEventWireup="true" CodeBehind="Report.aspx.cs" Inherits="Groceries.Admin.Report" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <h1 class="mb-4 text-3xl font-bold text-black md:text-4xl lg:text-3xl">Reports</h1>
    <h1 class="pt-4 mt-4 space-y-2 font-medium border-t border-gray-200 dark:border-gray-700"></h1>

    <!--Monthly Report-->
    <div class="bg-white shadow rounded-lg p-4 sm:p-6 xl:p-8 my-5  border-solid border-2">
        <div class="mb-4 flex items-center justify-between">
            <div>
                <h3 class="text-xl font-bold text-gray-900 mb-2">Monthly Report</h3>

                <asp:DataList ID="DataList1" runat="server"></asp:DataList>
                  <h1>HELLO</h1>
            </div>
        </div>
        <div class="flex flex-col mt-8">
            <div class="overflow-x-auto rounded-lg">
                <div class="align-middle inline-block min-w-full">
                    <div class="shadow overflow-hidden sm:rounded-lg">
                        <!-- Table was here -->
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
                                        <asp:Button ID="ButtonViewReport1" runat="server" Text="View" CssClass=" text-sm cursor-pointer font-medium text-cyan-600 hover:bg-gray-100 rounded-lg px-2" OnClick="ButtonViewReport1_Click" />
                                    </td>
                                </tr>
                                <tr class="bg-gray-50">
                                    <td class="p-4 whitespace-nowrap text-sm font-normal text-gray-900 rounded-lg rounded-left">1004
                                    </td>
                                    <td class=" p-4 whitespace-nowrap text-sm font-semibold">May 2021
                                    </td>
                                    <td class="p-4 whitespace-nowrap text-sm font-semibold text-gray-900">
                                        <asp:Button ID="ButtonViewReport2" runat="server" Text="View" CssClass=" text-sm cursor-pointer font-medium text-cyan-600 hover:bg-gray-100 rounded-lg px-2" OnClick="ButtonViewReport1_Click" />
                                    </td>
                                </tr>
                                <tr>
                                    <td class="p-4 whitespace-nowrap text-sm font-normal text-gray-900">1003
                                    </td>
                                    <td class=" p-4 whitespace-nowrap text-sm font-semibold">April 2021
                                    </td>
                                    <td class="p-4 whitespace-nowrap text-sm font-semibold text-gray-900">
                                        <asp:Button ID="ButtonViewReport3" runat="server" Text="View" CssClass=" text-sm cursor-pointer font-medium text-cyan-600 hover:bg-gray-100 rounded-lg px-2" OnClick="ButtonViewReport1_Click" />
                                    </td>
                                </tr>
                                <tr>
                                    <td class="p-4 whitespace-nowrap text-sm font-normal text-gray-900">1002
                                    </td>
                                    <td class=" p-4 whitespace-nowrap text-sm font-semibold">March 2021
                                    </td>
                                    <td class="p-4 whitespace-nowrap text-sm font-semibold text-gray-900">
                                        <asp:Button ID="ButtonViewReport4" runat="server" Text="View" CssClass=" text-sm cursor-pointer font-medium text-cyan-600 hover:bg-gray-100 rounded-lg px-2" OnClick="ButtonViewReport1_Click" />
                                    </td>
                                    <tr>
                                        <td class="p-4 whitespace-nowrap text-sm font-normal text-gray-900">1001
                                        </td>
                                        <td class=" p-4 whitespace-nowrap text-sm font-semibold">February 2021
                                        </td>
                                    <td class="p-4 whitespace-nowrap text-sm font-semibold text-gray-900">
                                        <asp:Button ID="ButtonViewReport5" runat="server" Text="View" CssClass=" text-sm cursor-pointer font-medium text-cyan-600 hover:bg-gray-100 rounded-lg px-2" OnClick="ButtonViewReport1_Click" />
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

        <!--Modal of  report-->
    <asp:Panel ID="PanelViewReport" runat="server" Visible="false">
        <div class="bg-black bg-opacity-50 md:bg-opacity-50 fixed top-0 left-0 right-0 z-50  p-4 overflow-x-hidden overflow-y-auto md:inset-0 h-[calc(100%-1rem)] md:h-full">
            <div class="relative w-1/2 h-full   md:h-auto mx-auto my-20">
                <!--Pop Out-->
                <div class="relative bg-white rounded-lg shadow w:full shadow">
                    <h3 class=" text-3xl font-bold text-black pt-4 px-6">Report </h3>
                    <asp:Image ID="Image1" runat="server" CssClass="object-right  bg-transparent rounded-lg text-sm px-6 ml-auto" ImageUrl="~/favicon_io/favicon-32x32.png" />
                    <h3 class=" text-2xl font-bold text-black px-6 text-right">Goceries</h3>
                    <h3 class=" text-1xl font-bold text-black px-6 text-right">June 2021</h3>                    <!--Table-->
                    
                    
                    <h1 class="pt-4 mt-4 space-y-2 font-medium border-t border-gray-700"></h1>
                    <h3 class=" text-2xl font-bold text-black p-3 mx-4 ">Total Profit:
                        <span class=" mx-10 text-1xl font-bold text-gray-700 text-right">
                        RM 1917   
                    </span>
                    </h3>
                    <h3 class=" text-2xl font-bold text-black p-3 mx-4 ">Product Sold:
                        <span class=" mx-10 text-1xl font-bold text-gray-700 text-right">
                        540  
                    </span>
                    </h3>
                    <div class="relative overflow-x-auto border-2 shadow-md sm:rounded-lg w-11/12 mx-auto my-5">
                        <h3 class=" text-2xl font-bold text-black p-3 px-4 ">Top 5 Products</h3>
                        <table class="w-full text-sm text-left text-gray-500">
                            <thead class="text-xs text-gray-700 uppercase bg-[#FBEBDB]">
                                <tr>
                                    <th scope="col" class="px-6 py-3">Product
                                    </th>
                                    <th scope="col" class="px-6 py-3">Unit Sold
                                    </th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr class="bg-white border-b hover:bg-gray-50">
                                    <th scope="row" class="px-6 py-4 font-medium text-gray-900 whitespace-nowrap">100 Plus
                                    </th>
                                    <td class="px-6 py-4">45
                                    </td>
                                </tr>
                                <tr class="bg-white border-b hover:bg-gray-50">
                                    <th scope="row" class="px-6 py-4 font-medium text-gray-900 whitespace-nowrap">Ice Cream
                                    </th>
                                    <td class="px-6 py-4">39
                                    </td>
                                </tr>
                                <tr class="bg-white border-b hover:bg-gray-50">
                                    <th scope="row" class="px-6 py-4 font-medium text-gray-900 whitespace-nowrap">Chocolate
                                    </th>
                                    <td class="px-6 py-4">37
                                    </td>
                                </tr>
                                <tr class="bg-white border-b hover:bg-gray-50">
                                    <th scope="row" class="px-6 py-4 font-medium text-gray-900 whitespace-nowrap">Fries
                                    </th>
                                    <td class="px-6 py-4">36
                                    </td>
                                </tr>
                                <tr class="bg-white border-b hover:bg-gray-50">
                                    <th scope="row" class="px-6 py-4 font-medium text-gray-900 whitespace-nowrap">Noodles
                                    </th>
                                    <td class="px-6 py-4">34
                                    </td>
                                </tr>
                            </tbody>
                        </table>
                    </div>

                    <div class="p-6 text-center ">
                        <h1 class="pt-4 mt-4 space-y-2 font-medium border-t border-gray-700"></h1>
                        <asp:Button ID="ButtonOrderClose" Text="Close" runat="server" CssClass="text-gray-500 bg-gray-300 hover:bg-gray-400 focus:ring-4 focus:outline-none focus:ring-gray-200 rounded-lg border border-gray-200 text-sm font-medium px-5 py-2.5 hover:text-gray-900 focus:z-10 " OnClick="ButtonOrderClose_Click" />
                    </div>
                </div>
            </div>
        </div>
    </asp:Panel>



</asp:Content>

