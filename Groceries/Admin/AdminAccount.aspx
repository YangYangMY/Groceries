<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage/Admin.Master" AutoEventWireup="true" CodeBehind="AdminAccount.aspx.cs" Inherits="Groceries.Admin.AdminAccount" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <h1 class="mb-4 text-3xl font-bold text-black md:text-4xl lg:text-3xl">Account</h1>
    <h1 class="pt-4 mt-4 space-y-2 font-medium border-t border-gray-200 dark:border-gray-700"></h1>

    <!--Start of add Product-->
    <div class="flex flex-col items-center justify-center px-3 py-4 mx-auto md:h-screen lg:py-0">
        <div class="w-full bg-white rounded-lg shadow border-2  md:mt-0 sm:max-w-md xl:p-0 ">
            <div class="p-6 space-y-4 md:space-y-6 sm:p-8">
                <h1 class="text-xl font-bold leading-tight tracking-tight text-gray-900 md:text-2xl ">Account
                </h1>
                <form class="space-y-4 md:space-y-6" action="#">
                    <div>
                        <label for="TextBoxAdminName" class="block mb-2 text-sm font-medium text-gray-900 ">
                            Name
                        </label>
                        <asp:TextBox ID="TextBoxAdminName" value="John" runat="server" CssClass="mb-6 bg-gray-100 border border-gray-300 text-gray-900 text-sm rounded-lg focus:ring-blue-500 focus:border-blue-500 block w-full p-2.5" Enabled="False"></asp:TextBox>
                    </div>
                    <div>
                        <label for="TextBoxEmail" class="block mb-2 text-sm font-medium text-gray-900 ">
                            Email Address
                        </label>
                        <asp:TextBox ID="TextBoxEmail" value="John@gmail.com" runat="server" CssClass="mb-6 bg-gray-100 border border-gray-300 text-gray-900 text-sm rounded-lg focus:ring-blue-500 focus:border-blue-500 block w-full p-2.5" Enabled="False"></asp:TextBox>
                    </div>
                    <div>
                        <label for="TextBoxEmail" class="block mb-2 text-sm font-medium text-gray-900 ">
                            Password
                        </label>
                        <asp:TextBox ID="TextBoxPassword" placeholder="*******" runat="server" CssClass="mb-6 bg-gray-100 border border-gray-300 text-gray-900 text-sm rounded-lg focus:ring-blue-500 focus:border-blue-500 block w-full p-2.5" Enabled="False" TextMode="Password"></asp:TextBox>
                    </div>
                    <asp:Button ID="ButtonEdit" runat="server" Text="Edit" CssClass="w-full text-white bg-[#FB923C] hover:bg-[#FDBA74] focus:ring-4 focus:outline-none focus:ring-primary-300 font-medium rounded-lg text-sm px-5 py-2.5 text-center" OnClick="ButtonEdit_Click" />
                    <asp:Button ID="ButtonSave" runat="server" Text="Save" CssClass="w-full text-white bg-[#FB923C] hover:bg-[#FDBA74] focus:ring-4 focus:outline-none focus:ring-primary-300 font-medium rounded-lg text-sm px-5 py-2.5 text-center" OnClick="ButtonSave_Click" Visible="False" />
                    <asp:Button ID="ButtonDelete" runat="server" Text="Delete Account" CssClass="w-full text-white bg-red-700 hover:bg-red-400 focus:ring-4 focus:outline-none focus:ring-primary-300 font-medium rounded-lg text-sm px-5 py-2.5 text-center" OnClick="ButtonDelete_Click" />
                </form>
            </div>
        </div>
    </div>

    <!--Modal of Confimration delete account-->
    <asp:Panel ID="PanelConfirmDelete" runat="server" Visible="False">
        <div class="bg-black bg-opacity-50 md:bg-opacity-50 fixed top-0 left-0 right-0 z-50  p-4 overflow-x-hidden overflow-y-auto md:inset-0 h-[calc(100%-1rem)] md:h-full">
            <div class="relative w-full h-full max-w-md md:h-auto mx-auto my-20">
                <!--Pop Out-->
                <div class="relative bg-white rounded-lg shadow ">
                    <asp:Button ID="ButtonCancelDeleteIcon" Text="X" runat="server" CssClass="text-3xl absolute top-3 right-2.5 text-gray-400 bg-transparent hover:bg-gray-200 hover:text-gray-900 rounded-lg text-sm p-1.5 ml-auto inline-flex items-center " OnClick="ButtonCancelDeleteIcon_Click" />
                    <div class="p-6 text-center ">
                        <svg class="mx-auto mb-4 text-gray-400 w-14 h-14 " fill="none" stroke="currentColor" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg">
                            <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M12 8v4m0 4h.01M21 12a9 9 0 11-18 0 9 9 0 0118 0z"></path></svg>
                        <h3 class="mb-5 text-lg font-normal text-gray-500 ">Are you sure you want to delete this account?</h3>
                        <asp:Button ID="ButtonConfirmDelete" runat="server" Text="Delete Account and Sign Out" CssClass="text-white bg-red-600 hover:bg-red-800 focus:ring-4 focus:outline-none focus:ring-red-300  font-medium rounded-lg text-sm inline-flex items-center px-5 py-2.5 text-center mr-2" />
                        <asp:Button ID="ButtonCancelDelete" runat="server" Text="Cancel" CssClass="text-gray-500 bg-gray-300 hover:bg-gray-400 focus:ring-4 focus:outline-none focus:ring-gray-200 rounded-lg border border-gray-200 text-sm font-medium px-5 py-2.5 hover:text-gray-900 focus:z-10 " OnClick="ButtonCancelDelete_Click" />
                    </div>
                </div>
            </div>
        </div>
    </asp:Panel>




</asp:Content>
