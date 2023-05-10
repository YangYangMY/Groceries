<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage/Admin.Master" AutoEventWireup="true" CodeBehind="Report.aspx.cs" Inherits="Groceries.Admin.Report" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <h1 class="mb-4 text-3xl font-bold text-black md:text-4xl lg:text-3xl">Reports</h1>
    <h1 class="pt-4 mt-4 space-y-2 font-medium border-t border-gray-200 dark:border-gray-700"></h1>

    <!--Monthly Report-->
    <div class="bg-white shadow rounded-lg p-4 sm:p-6 xl:p-8 my-5  border-solid border-2">
        <div class="mb-4 flex items-center justify-between">
            <div>
                <h3 class="text-xl font-bold text-gray-900 mb-2">Monthly Report</h3>
                <asp:Button ID="ButtonGenerateReport" runat="server" CssClass=" text-[#003049] cursor-pointer hover:bg-gray-300 bg-[#F6BD60] focus:ring-4 focus:outline-none focus:ring-gray-200 rounded-lg border border-gray-200 text-sm font-medium px-5 py-2.5 hover:text-gray-900 focus:z-10 " Text="Generate Report" OnClick="ButtonGenerateReport_Click" />
            </div>
        </div>
        <div class="flex flex-col mt-8">
            <div class="overflow-x-auto rounded-lg">
                <div class="align-middle inline-block min-w-full">
                    <div class="shadow overflow-hidden sm:rounded-lg">
                        <!-- Gridview was here -->
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Report] ORDER BY [ReportID]"></asp:SqlDataSource>
                        <asp:GridView ID="GridViewReport" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="ReportID" DataSourceID="SqlDataSource1" CssClass="w-full text-sm text-left text-gray-500">
                            <Columns>
                                <asp:BoundField DataField="ReportID" HeaderText="Report ID" ReadOnly="True" SortExpression="ReportID" HeaderStyle-CssClass="text-xs text-gray-700 uppercase bg-[#FBEBDB] px-6 py-3" ItemStyle-CssClass="px-6 py-4 font-medium text-gray-900 whitespace-nowrap" />
                                <asp:BoundField DataField="DateGenerated" HeaderText="Date Generated" SortExpression="DateGenerated" HeaderStyle-CssClass="text-xs text-gray-700 uppercase bg-[#FBEBDB] px-6 py-3" ItemStyle-CssClass="px-6 py-4 font-medium text-gray-900 whitespace-nowrap" />
                                <asp:BoundField DataField="Month" HeaderText="Month" SortExpression="Month" HeaderStyle-CssClass="text-xs text-gray-700 uppercase bg-[#FBEBDB] px-6 py-3" ItemStyle-CssClass="px-6 py-4 font-medium text-gray-900 whitespace-nowrap" />
                                <asp:BoundField DataField="Year" HeaderText="Year" SortExpression="Year" HeaderStyle-CssClass="text-xs text-gray-700 uppercase bg-[#FBEBDB] px-6 py-3" ItemStyle-CssClass="px-6 py-4 font-medium text-gray-900 whitespace-nowrap" />
                                <asp:CommandField SelectText="View" ShowSelectButton="True" HeaderStyle-CssClass="text-xs text-gray-700 uppercase bg-[#FBEBDB] px-6 py-3" ItemStyle-CssClass=" cursor-pointer font-medium text-blue-600 hover:underline mx-5" HeaderText="Actions" />
                            </Columns>
                        </asp:GridView>


                    </div>
                </div>
            </div>
        </div>
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
                    <h3 class=" text-1xl font-bold text-black px-6 text-right">June 2021</h3>
                    <h1 class="pt-4 mt-4 space-y-2 font-medium border-t border-gray-700"></h1>
                    <h3 class=" text-2xl font-bold text-black p-3 mx-4 ">Total Profit:
                        <span class=" mx-10 text-1xl font-bold text-gray-700 text-right">RM 1917   
                        </span>
                    </h3>
                    <h3 class=" text-2xl font-bold text-black p-3 mx-4 ">Product Sold:
                        <span class=" mx-10 text-1xl font-bold text-gray-700 text-right">540  
                        </span>
                    </h3>

                    <div class="p-6 text-center ">
                        <h1 class="pt-4 mt-4 space-y-2 font-medium border-t border-gray-700"></h1>
                        <asp:Button ID="ButtonOrderClose" Text="Close" runat="server" CssClass="text-gray-500 bg-gray-300 hover:bg-gray-400 focus:ring-4 focus:outline-none focus:ring-gray-200 rounded-lg border border-gray-200 text-sm font-medium px-5 py-2.5 hover:text-gray-900 focus:z-10 " OnClick="ButtonOrderClose_Click" />
                    </div>
                </div>
            </div>
        </div>
    </asp:Panel>

    <!--Modal of Report Generated Successful-->
    <asp:Panel ID="PanelAddSuccess" runat="server" Visible="False">
        <div class="bg-black bg-opacity-50 md:bg-opacity-50 fixed top-0 left-0 right-0 z-50  p-4 overflow-x-hidden overflow-y-auto md:inset-0 h-[calc(100%-1rem)] md:h-full">
            <div class="relative w-full h-full max-w-md md:h-auto mx-auto my-20">
                <!--Pop Out-->
                <div class="relative bg-white rounded-lg shadow ">
                    <div class="p-6 text-center ">
                        <svg xmlns="http://www.w3.org/2000/svg" class="text-[#059669] mx-auto h-11 rounded-full bg-[#D1FAE5] w-11" fill="none" viewBox="0 0 24 24" stroke="currentColor">
                            <path stroke-linecap="round" stroke-linejoin="round" stroke-width="1" d="M5 13l4 4L19 7" />
                        </svg>
                        <span class="text-2xl font-medium">Report Generated Successfully</span>
                        <p class="text-center">Press refresh to refresh the page.</p>
                        <asp:Button ID="ButtonRefresh" runat="server" Text="Refresh" CssClass=" my-3 cursor-pointer text-white bg-[#FB923C] hover:bg-[#FDBA74] focus:outline-none  font-medium rounded-full text-sm px-5 py-2.5 text-center mr-2 mb-2 " OnClick="ButtonRefresh_Click" />
                    </div>
                </div>
            </div>
        </div>
    </asp:Panel>

</asp:Content>

