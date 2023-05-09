<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="test.aspx.cs" Inherits="Groceries.Customer.test1" MasterPageFile="~/MasterPage/Customer.Master"%>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1 class="mb-4 text-3xl font-bold text-black md:text-4xl lg:text-3xl">Add Customer</h1>
    <h1 class="pt-4 mt-4 space-y-2 font-medium border-t border-gray-700"></h1>

    <!--Start of Add Admin-->
    <section class="bg-gray-50">
        <div class="flex flex-col items-center justify-center px-6 py-8 mx-auto md:h-screen lg:py-0">
            <div class="w-full bg-white rounded-lg shadow  md:mt-0 sm:max-w-md xl:p-0 ">
                <div class="p-6 space-y-4 md:space-y-6 sm:p-8">
                    <h1 class="text-xl font-bold leading-tight tracking-tight text-gray-900 md:text-2xl ">Add New Admin
                    </h1>
                    <form class="space-y-4 md:space-y-6" action="#">
                        <!--Name Input-->
                        <div>
                            <label for="txtName" class="block mb-2 text-sm font-medium text-gray-900 ">Name</label>
                            <asp:TextBox ID="txtName" placeholder="John" runat="server" required="" CssClass="bg-gray-50 border border-gray-300 text-gray-900 sm:text-sm rounded-lg focus:ring-primary-600 focus:border-primary-600 block w-full p-2.5" MaxLength="40"></asp:TextBox>
                            <asp:Label ID="lblErrorName" runat="server" Text="" ForeColor="#CC0000" CssClass="block mb-2 text-sm font-medium"></asp:Label>
                        </div>
                        <!--Phone Number Input-->
                        <div>
                            <label for="txtPnumber" class="block mb-2 text-sm font-medium text-gray-900 ">Phone Number</label>
                            <asp:TextBox ID="txtPnumber" placeholder="John" runat="server" required="" CssClass="bg-gray-50 border border-gray-300 text-gray-900 sm:text-sm rounded-lg focus:ring-primary-600 focus:border-primary-600 block w-full p-2.5" MaxLength="40"></asp:TextBox>
                            <asp:Label ID="lblErrorPnumber" runat="server" Text="" ForeColor="#CC0000" CssClass="block mb-2 text-sm font-medium"></asp:Label>
                        </div>
                        <!--BirthDate input-->
                        <div>
                            <label for="txtBirthday" class="block mb-2 text-sm font-medium text-gray-900 ">Bidthday</label>
                            <asp:TextBox ID="txtBirthday" placeholder="John" runat="server" required="" CssClass="bg-gray-50 border border-gray-300 text-gray-900 sm:text-sm rounded-lg focus:ring-primary-600 focus:border-primary-600 block w-full p-2.5" MaxLength="40"></asp:TextBox>
                            <asp:Label ID="lblErrorBirthday" runat="server" Text="" ForeColor="#CC0000" CssClass="block mb-2 text-sm font-medium"></asp:Label>
                        </div>
                        <!--Email input-->
                        <div>
                            <label for="txtEmail" class="block mb-2 text-sm font-medium text-gray-900 ">Email</label>
                            <asp:TextBox ID="txtEmail" runat="server" placeholder="name@company.com" required="" TextMode="Email" CssClass="bg-gray-50 border border-gray-300 text-gray-900 sm:text-sm rounded-lg focus:ring-primary-600 focus:border-primary-600 block w-full p-2.5 " MaxLength="50"></asp:TextBox>
                            <asp:Label ID="lblErrorEmail" runat="server" Text="" ForeColor="#CC0000" CssClass="block mb-2 text-sm font-medium"></asp:Label>
                        </div>
                        <!--Pasword Input-->
                        <div>
                            <label for="txtPass" class="block mb-2 text-sm font-medium text-gray-900 ">Password</label>
                            <asp:TextBox ID="txtPass" runat="server" required="" placeholder="••••••••" CssClass="bg-gray-50 border border-gray-300 text-gray-900 sm:text-sm rounded-lg focus:ring-primary-600 focus:border-primary-600 block w-full p-2.5 " TextMode="Password" MaxLength="30"></asp:TextBox>
                            <asp:Label ID="lblErrorPass" runat="server" Text="" ForeColor="#CC0000" CssClass="block mb-2 text-sm font-medium"></asp:Label>
                        </div>
                        <!--Confirm Pasword Input-->
                        <div>
                            <label for="txtConPass" class="block mb-2 text-sm font-medium text-gray-900 ">Password</label>
                            <asp:TextBox ID="txtConPass" runat="server" required="" placeholder="••••••••" CssClass="bg-gray-50 border border-gray-300 text-gray-900 sm:text-sm rounded-lg focus:ring-primary-600 focus:border-primary-600 block w-full p-2.5 " TextMode="Password" MaxLength="30"></asp:TextBox>
                            <asp:Label ID="Label4" runat="server" Text="" ForeColor="#CC0000" CssClass="block mb-2 text-sm font-medium"></asp:Label>
                        </div>
                        <asp:Button ID="lblErrorConPass" runat="server" Text="Create Account" CssClass="w-full text-white bg-[#F6BD60] hover:bg-[#FDBA74] focus:ring-4 focus:outline-none focus:ring-primary-300 font-medium rounded-lg text-sm px-5 py-2.5 text-center" OnClick="ButtonCreate_Click" />
                    </form>
                </div>
            </div>
        </div>
    </section>

        <!--Modal of Added new Admin Account Successful-->
    <asp:Panel ID="PanelAddSuccess" runat="server" Visible="False">
        <div class="bg-black bg-opacity-50 md:bg-opacity-50 fixed top-0 left-0 right-0 z-50  p-4 overflow-x-hidden overflow-y-auto md:inset-0 h-[calc(100%-1rem)] md:h-full">
            <div class="relative w-full h-full max-w-md md:h-auto mx-auto my-20">
                <!--Pop Out-->
                <div class="relative bg-white rounded-lg shadow ">
                    <div class="p-6 text-center ">
                        <svg xmlns="http://www.w3.org/2000/svg" class="text-[#059669] mx-auto h-11 rounded-full bg-[#D1FAE5] w-11" fill="none" viewBox="0 0 24 24" stroke="currentColor">
                            <path stroke-linecap="round" stroke-linejoin="round" stroke-width="1" d="M5 13l4 4L19 7" />
                        </svg>
                        <span class="text-2xl font-medium">New Admin Account Created Successfully</span>
                        <p class="text-center">Press continue to go to Dashboard page.</p>
                        <asp:Button ID="Button1" runat="server" Text="Continue" CssClass=" my-3 cursor-pointer text-white bg-[#FB923C] hover:bg-[#FDBA74] focus:outline-none  font-medium rounded-full text-sm px-5 py-2.5 text-center mr-2 mb-2 " PostBackUrl="~/Admin/Dashboard.aspx" />
                    </div>
                </div>
            </div>
        </div>
    </asp:Panel>


</asp:Content>
