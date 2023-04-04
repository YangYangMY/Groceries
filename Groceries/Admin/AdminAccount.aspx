<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage/Admin.Master" AutoEventWireup="true" CodeBehind="AdminAccount.aspx.cs" Inherits="Groceries.Admin.AdminAccount" %>
<asp:content id="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
    <h1 class="mb-4 text-3xl font-bold text-black md:text-4xl lg:text-3xl">Account</h1>
    <h1 class="pt-4 mt-4 space-y-2 font-medium border-t border-gray-200 dark:border-gray-700"></h1>

        <asp:Panel ID="PanelAddProduct" runat="server" Visible="True" CssClass="bg-gray-50 p-1">
        <!--Start of add Product-->
            <div class="flex flex-col items-center justify-center px-6 py-8 mx-auto md:h-screen lg:py-0">
                <div class="w-full bg-white rounded-lg shadow  md:mt-0 sm:max-w-md xl:p-0 ">
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
                                <asp:TextBox ID="TextBoxEmail" value="John@gmail.com" runat="server"  CssClass="mb-6 bg-gray-100 border border-gray-300 text-gray-900 text-sm rounded-lg focus:ring-blue-500 focus:border-blue-500 block w-full p-2.5" Enabled="False"></asp:TextBox>
                            </div>
                                   <div>
                                <label for="TextBoxEmail" class="block mb-2 text-sm font-medium text-gray-900 ">
                                    Password
                                </label>
                                <asp:TextBox ID="TextBoxPassword" placeholder="*******" runat="server"  CssClass="mb-6 bg-gray-100 border border-gray-300 text-gray-900 text-sm rounded-lg focus:ring-blue-500 focus:border-blue-500 block w-full p-2.5" Enabled="False" TextMode="Password"></asp:TextBox>
                            </div>
                            <asp:Button ID="ButtonEdit" runat="server" Text="Edit" CssClass="w-full text-white bg-[#FB923C] hover:bg-[#FDBA74] focus:ring-4 focus:outline-none focus:ring-primary-300 font-medium rounded-lg text-sm px-5 py-2.5 text-center" OnClick="ButtonEdit_Click" />
                            <asp:Button ID="ButtonSave" runat="server" Text="Save" CssClass="w-full text-white bg-[#FB923C] hover:bg-[#FDBA74] focus:ring-4 focus:outline-none focus:ring-primary-300 font-medium rounded-lg text-sm px-5 py-2.5 text-center" OnClick="ButtonSave_Click" Visible="False" />
                            <asp:Button ID="ButtonDelete"  runat="server" Text="Delete Account" CssClass="w-full text-white bg-red-700 hover:bg-red-400 focus:ring-4 focus:outline-none focus:ring-primary-300 font-medium rounded-lg text-sm px-5 py-2.5 text-center" />
                        </form>
                    </div>
                </div>
            </div>
    </asp:Panel>




</asp:content>
