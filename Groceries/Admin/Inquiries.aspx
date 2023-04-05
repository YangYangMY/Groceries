<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage/Admin.Master" AutoEventWireup="true" CodeBehind="Inquiries.aspx.cs" Inherits="Groceries.Admin.Inquiries" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <h1 class="mb-4 text-3xl font-bold text-black md:text-4xl lg:text-3xl">Inquiries</h1>
    <h1 class="pt-4 mt-4 space-y-2 font-medium border-t border-gray-700"></h1>

    <!--Active Inquiry-->
    <div class="bg-white shadow rounded-lg p-4 sm:p-6 xl:p-8 my-5  border-solid border-2">
        <div class="mb-4 flex items-center justify-between">
            <div>
                <h3 class="text-xl font-bold text-gray-900 mb-2">Active Inquiry</h3>
            </div>
        </div>
        <div class="flex flex-col mt-8">
            <div class="overflow-x-auto rounded-lg">
                <div class="align-middle inline-block min-w-full">
                    <div class="shadow overflow-hidden sm:rounded-lg">
                        <table class="min-w-full divide-y divide-gray-200">
                            <thead class="bg-gray-50">
                                <tr>
                                    <th scope="col" class="p-4 text-left text-xs font-medium text-gray-500 uppercase tracking-wider">Inquiry ID
                                    </th>
                                    <th scope="col" class="p-4 text-left text-xs font-medium text-gray-500 uppercase tracking-wider">Customer
                                    </th>
                                    <th scope="col" class="p-4 text-left text-xs font-medium text-gray-500 uppercase tracking-wider">Date
                                    </th>
                                    <th scope="col" class="p-4 text-left text-xs font-medium text-gray-500 uppercase tracking-wider">Title
                                    </th>
                                    <th scope="col" class="p-4 text-left text-xs font-medium text-gray-500 uppercase tracking-wider">Actions 
                                    </th>
                                </tr>
                            </thead>
                            <tbody class="bg-white">
                                <tr class="bg-gray-50">
                                    <td class="p-4 whitespace-nowrap text-sm font-normal text-gray-900 rounded-lg rounded-left">1004
                                    </td>
                                    <td class=" p-4 whitespace-nowrap text-sm font-semibold">Yong Yue
                                    </td>
                                    <td class="p-4 whitespace-nowrap text-sm font-normal text-gray-500">Apr 23 ,2021
                                    </td>
                                    <td class="p-4 whitespace-nowrap text-sm font-semibold text-gray-900">Delete Account
                                    </td>
                                    <td class="p-4 whitespace-nowrap text-sm font-semibold text-gray-900">
                                        <asp:Button ID="ButtonViewInquiry1" runat="server" Text="View" CssClass=" text-sm cursor-pointer font-medium text-cyan-600 hover:bg-gray-100 rounded-lg px-2" OnClick="ButtonViewInquiry1_Click"  />
                                    </td>
                                </tr>
                                <tr>
                                    <td class="p-4 whitespace-nowrap text-sm font-normal text-gray-900">1003
                                    </td>
                                    <td class=" p-4 whitespace-nowrap text-sm font-semibold">Ga Men
                                    </td>
                                    <td class="p-4 whitespace-nowrap text-sm font-normal text-gray-500">Apr 18 ,2021
                                    </td>
                                    <td class="p-4 whitespace-nowrap text-sm font-semibold text-gray-900">Tracking Order?
                                    </td>
                                    <td class="p-4 whitespace-nowrap text-sm font-semibold text-gray-900">
                                        <asp:Button ID="ButtonViewInquiry2" runat="server" Text="View" CssClass=" text-sm cursor-pointer font-medium text-cyan-600 hover:bg-gray-100 rounded-lg px-2" OnClick="ButtonViewInquiry1_Click"  />
                                    </td>
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

        <!--Closed Inquiry-->
    <div class="bg-white shadow rounded-lg p-4 sm:p-6 xl:p-8 my-5  border-solid border-2">
        <div class="mb-4 flex items-center justify-between">
            <div>
                <h3 class="text-xl font-bold text-gray-900 mb-2">Past Inquiry</h3>
            </div>
        </div>
        <div class="flex flex-col mt-8">
            <div class="overflow-x-auto rounded-lg">
                <div class="align-middle inline-block min-w-full">
                    <div class="shadow overflow-hidden sm:rounded-lg">
                        <table class="min-w-full divide-y divide-gray-200">
                            <thead class="bg-gray-50">
                                <tr>
                                    <th scope="col" class="p-4 text-left text-xs font-medium text-gray-500 uppercase tracking-wider">Inquiry ID
                                    </th>
                                    <th scope="col" class="p-4 text-left text-xs font-medium text-gray-500 uppercase tracking-wider">Customer
                                    </th>
                                    <th scope="col" class="p-4 text-left text-xs font-medium text-gray-500 uppercase tracking-wider">Date
                                    </th>
                                    <th scope="col" class="p-4 text-left text-xs font-medium text-gray-500 uppercase tracking-wider">Title
                                    </th>
                                    <th scope="col" class="p-4 text-left text-xs font-medium text-gray-500 uppercase tracking-wider">Actions 
                                    </th>
                                </tr>
                            </thead>
                            <tbody class="bg-white">
                                <tr class="bg-gray-50">
                                    <td class="p-4 whitespace-nowrap text-sm font-normal text-gray-900 rounded-lg rounded-left">1002
                                    </td>
                                    <td class=" p-4 whitespace-nowrap text-sm font-semibold">Chia Chia
                                    </td>
                                    <td class="p-4 whitespace-nowrap text-sm font-normal text-gray-500">Apr 15 ,2021
                                    </td>
                                    <td class="p-4 whitespace-nowrap text-sm font-semibold text-gray-900">Refund
                                    </td>
                                    <td class="p-4 whitespace-nowrap text-sm font-semibold text-gray-900">
                                        <asp:Button ID="ButtonViewInquiry3" runat="server" Text="View" CssClass=" text-sm cursor-pointer font-medium text-cyan-600 hover:bg-gray-100 rounded-lg px-2" OnClick="ButtonViewInquiry1_Click"  />
                                    </td>
                                </tr>
                                <tr>
                                    <td class="p-4 whitespace-nowrap text-sm font-normal text-gray-900">1001
                                    </td>
                                    <td class=" p-4 whitespace-nowrap text-sm font-semibold">Wee Yan
                                    </td>
                                    <td class="p-4 whitespace-nowrap text-sm font-normal text-gray-500">Apr 15 ,2021
                                    </td>
                                    <td class="p-4 whitespace-nowrap text-sm font-semibold text-gray-900">Food Not Clean
                                    </td>
                                    <td class="p-4 whitespace-nowrap text-sm font-semibold text-gray-900">
                                        <asp:Button ID="ButtonViewInquiry4" runat="server" Text="View" CssClass=" text-sm cursor-pointer font-medium text-cyan-600 hover:bg-gray-100 rounded-lg px-2" OnClick="ButtonViewInquiry1_Click"  />
                                    </td>
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
     <!--Modal of View Inquiry-->
    <asp:Panel ID="PanelViewInquiry" runat="server" Visible="false">
        <div class="bg-black bg-opacity-50 md:bg-opacity-50 fixed top-0 left-0 right-0 z-50  p-4 overflow-x-hidden overflow-y-auto md:inset-0 h-[calc(100%-1rem)] md:h-full">
            <div class="relative w-1/2 h-full   md:h-auto mx-auto my-20">
                <!--Pop Out-->
                <div class="relative bg-white rounded-lg shadow w:full">
                    <h3 class=" text-3xl font-bold text-black pt-4 px-6">Inquiry #1004</h3>
                    <h3 class=" text-1xl font-bold text-black mx-6 mt-6">Tan Yong Yue</h3>
                    <h3 class=" text-1xl font-normal text-black px-6 ">
                        YongYue123@gmail.com
                    </h3>
                    <h1 class="pt-4 mt-4 space-y-2 font-medium border-t border-gray-700"></h1>
                    <h3 class="text-1xl font-normal text-gray-600 px-6 text-right">23 April, 2023</h3>
                    <h3 class=" text-2xl font-bold text-black mx-6 mt-1">Delete Account</h3>
                    <h3 class=" text-1xl font-normal text-black px-6 ">
                        I don't want to use this website anymore! How can I delete my account!
                        I want to 财务自由!
                    </h3>
                    <img class="mx-4 object-cover w-full rounded-t-lg mx-6 mt-10 md:h-40 md:w-auto" src="../images/yyphoto.png" alt=""/>
                    <div class="p-6 text-center ">
                        <h1 class="pt-4 mt-4 space-y-2 font-medium border-t border-gray-700"></h1>
                        <a href = "weeyanlee1231@gmail.com?subject = Feedback&body = Message">
                        <asp:Button ID="ButtonSendEmail" runat="server" CssClass="text-orange-500 bg-orange-300 hover:bg-orange-400 focus:ring-4 focus:outline-none focus:ring-orange-200 rounded-lg border border-gray-200 text-sm font-medium px-5 py-2.5 hover:text-orange-900 focus:z-10 " Text="Send Email"  />
                                </a>
                            <asp:Button ID="ButtonOrderClose" runat="server" CssClass="text-gray-500 bg-gray-300 hover:bg-gray-400 focus:ring-4 focus:outline-none focus:ring-gray-200 rounded-lg border border-gray-200 text-sm font-medium px-5 py-2.5 hover:text-gray-900 focus:z-10 " Text="Close" OnClick="ButtonOrderClose_Click1"  />
                    </div>
                </div>
            </div>
        </div>

    </asp:Panel>

</asp:Content>
