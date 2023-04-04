<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage/Admin.Master" AutoEventWireup="true" CodeBehind="AddAdmin.aspx.cs" Inherits="Groceries.Admin.RoleAssign" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1 class="mb-4 text-3xl font-bold text-black md:text-4xl lg:text-3xl">Add Admin</h1>
    <h1 class="pt-4 mt-4 space-y-2 font-medium border-t border-gray-700"></h1>

    <!--Start of Add Admin-->
    <section class="bg-gray-50">
        <div class="flex flex-col items-center justify-center px-6 py-8 mx-auto md:h-screen lg:py-0">
            <div class="w-full bg-white rounded-lg shadow  md:mt-0 sm:max-w-md xl:p-0 ">
                <div class="p-6 space-y-4 md:space-y-6 sm:p-8">
                    <h1 class="text-xl font-bold leading-tight tracking-tight text-gray-900 md:text-2xl ">Add New Admin
                    </h1>
                    <form class="space-y-4 md:space-y-6" action="#">
                        <div>
                            <label for="TextBoxName" class="block mb-2 text-sm font-medium text-gray-900 ">Name</label>
                            <asp:TextBox ID="TextBoxName" placeholder="John" runat="server" required="" CssClass="bg-gray-50 border border-gray-300 text-gray-900 sm:text-sm rounded-lg focus:ring-primary-600 focus:border-primary-600 block w-full p-2.5"></asp:TextBox>
                        </div>
                        <div>
                            <label for="TextBoxEmail" class="block mb-2 text-sm font-medium text-gray-900 ">Email</label>
                            <asp:TextBox ID="TextBoxEmail" runat="server" placeholder="name@company.com" required="" TextMode="Email" CssClass="bg-gray-50 border border-gray-300 text-gray-900 sm:text-sm rounded-lg focus:ring-primary-600 focus:border-primary-600 block w-full p-2.5 "></asp:TextBox>
                        </div>
                        <div>
                            <label for="TextBoxPass" class="block mb-2 text-sm font-medium text-gray-900 ">Password</label>
                            <asp:TextBox ID="TextBoxPass" runat="server" required="" placeholder="••••••••" CssClass="bg-gray-50 border border-gray-300 text-gray-900 sm:text-sm rounded-lg focus:ring-primary-600 focus:border-primary-600 block w-full p-2.5 " TextMode="Password"></asp:TextBox>
                        </div>
                        <div>
                            <label for="TextBoxConfirmPass" class="block mb-2 text-sm font-medium text-gray-900">Confirm password</label>
                            <asp:TextBox ID="TextBoxConfirmPass" runat="server" required="" placeholder="••••••••" CssClass="bg-gray-50 border border-gray-300 text-gray-900 sm:text-sm rounded-lg focus:ring-primary-600 focus:border-primary-600 block w-full p-2.5" TextMode="Password"></asp:TextBox>
                        </div>
                        <button type="submit" class="w-full text-white bg-[#F6BD60] hover:bg-[#FDBA74] focus:ring-4 focus:outline-none focus:ring-primary-300 font-medium rounded-lg text-sm px-5 py-2.5 text-center">Create an account</button>
                    </form>
                </div>
            </div>
        </div>
    </section>



</asp:Content>

