<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage/Admin.Master" AutoEventWireup="true" CodeBehind="Inquiries.aspx.cs" Inherits="Groceries.Admin.Inquiries" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <h1 class="mb-4 text-3xl font-bold text-black md:text-4xl lg:text-3xl">Inquiries</h1>
    <h1 class="pt-4 mt-4 space-y-2 font-medium border-t border-gray-700"></h1>

    <!-- Inquiry-->
    <asp:Label ID="LabelErrorInquiry" runat="server" Text="Inquiry is Empty" CssClass="flex justify-center p-4 whitespace-nowrap text-sm font-semibold" Visible="False"></asp:Label>

    <div class="relative overflow-x-auto shadow-md sm:rounded-lg">
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Inquiry] ORDER BY [InquiryID]"></asp:SqlDataSource>
        <asp:GridView ID="GridViewInquiry" runat="server" AutoGenerateColumns="False" CssClass="w-full text-sm text-left text-gray-500" DataKeyNames="InquiryID" DataSourceID="SqlDataSource1" AllowPaging="True" AllowSorting="True" PagerStyle-CssClass="text-cyan-500" OnSelectedIndexChanged="GridViewInquiry_SelectedIndexChanged">
            <Columns>
                <asp:BoundField DataField="InquiryID" HeaderText="InquiryID" ReadOnly="True" SortExpression="InquiryID" HeaderStyle-CssClass="text-xs text-gray-700 uppercase bg-[#FBEBDB] px-6 py-3" ItemStyle-CssClass="px-6 py-4 font-medium text-gray-900 whitespace-nowrap"></asp:BoundField>
                <asp:BoundField DataField="InquiryDate" HeaderText="InquiryDate" SortExpression="InquiryDate" HeaderStyle-CssClass="text-xs text-gray-700 uppercase bg-[#FBEBDB] px-6 py-3" ItemStyle-CssClass="px-6 py-4 font-medium text-gray-900 whitespace-nowrap"></asp:BoundField>
                <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" HeaderStyle-CssClass="text-xs text-gray-700 uppercase bg-[#FBEBDB] px-6 py-3" ItemStyle-CssClass="px-6 py-4 font-medium text-gray-900 whitespace-nowrap"></asp:BoundField>
                <asp:CommandField HeaderText="Actions" ShowSelectButton="True" HeaderStyle-CssClass="text-xs text-gray-700 uppercase bg-[#FBEBDB] px-6 py-3" ItemStyle-CssClass=" text-sm cursor-pointer font-medium text-cyan-600 hover:text-cyan-800 hover:underline rounded-lg px-2" />
            </Columns>
        </asp:GridView>
    </div>


    <!--Modal of View Inquiry-->
    <asp:Panel ID="PanelViewInquiry" runat="server" Visible="false">
        <div class="bg-black bg-opacity-50 md:bg-opacity-50 fixed top-0 left-0 right-0 z-50  p-4 overflow-x-hidden overflow-y-auto md:inset-0 h-[calc(100%-1rem)] md:h-full">
            <div class="relative w-1/2 h-full   md:h-auto mx-auto my-20">
                <!--Pop Out-->
                <div class="relative bg-white rounded-lg shadow w:full">
                    <br />
                    <asp:Label ID="InquiryNum" runat="server" Text="" CssClass=" text-3xl font-bold text-black  px-6"></asp:Label>
                    <br />
                    <asp:Label ID="InquiryName" runat="server" Text="" CssClass=" text-1xl font-bold text-black mx-6 mt-6"></asp:Label>
                    <br />
                    <asp:Label ID="InquiryEmail" runat="server" Text="" CssClass=" text-1xl font-normal text-black px-6 "></asp:Label>
                    <h1 class="pt-4 mt-4 space-y-2 font-medium border-t border-gray-700"></h1>
                    <asp:Label ID="InquiryDate" runat="server" Text="" CssClass="absolute right-0 text-1xl font-normal text-gray-600 px-6"></asp:Label>
                    <br />
                    <asp:Label ID="InquiryDesc" runat="server" Text="" CssClass="pt-4 flex justify-center text-1xl font-normal text-black px-6 "></asp:Label>
                    <asp:Image ID="InquiryPic" runat="server" CssClass="mx-auto object-cover w-full rounded-t-lg mx-6 mt-10 md:h-40 md:w-auto" ImageUrl="" />
                    <div class="p-6 text-center ">
                        <h1 class="pt-4 mt-4 space-y-2 font-medium border-t border-gray-700"></h1>
                        <asp:Button ID="ButtonOrderClose" runat="server" CssClass="text-gray-500 bg-gray-300 hover:bg-gray-400 focus:ring-4 focus:outline-none focus:ring-gray-200 rounded-lg border border-gray-200 text-sm font-medium px-5 py-2.5 hover:text-gray-900 focus:z-10 " Text="Close" OnClick="ButtonOrderClose_Click1" />
                        <a runat="server" id="ButtonSendEmail" href="mailto:weeyanlee1231@gmail.com?Subject=Refund" class="w-full text-white bg-[#FB923C] hover:bg-[#FDBA74] focus:ring-4 focus:outline-none focus:ring-primary-300 font-medium rounded-lg text-sm px-5 py-2.5 text-center">Send Email
                        </a>
                    </div>
                </div>
            </div>
    </asp:Panel>
</asp:Content>
