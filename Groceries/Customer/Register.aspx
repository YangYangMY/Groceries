<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="Groceries.Customer.Register" MasterPageFile="~/MasterPage/Customer.Master"%>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <!--Content-->
    <div class="min-w-screen min-h-screen bg-white flex items-center justify-center px-5 py-5">
    <div class="bg-gray-100 text-gray-500 rounded-3xl shadow-xl w-full overflow-hidden" style="max-width:1000px">
        <div class="md:flex w-full">
            <div class="hidden md:block w-1/2 bg-white">
               <img class="h-full transition-all duration-300 rounded-lg blur-none hover:blur-sm" src="../images/registerBg.jpg" alt="Register"/>
            </div>
            <div class="w-full md:w-1/2 py-10 px-5 md:px-10">
                <div class="text-center mb-10">
                    <h1 class="font-bold text-3xl text-gray-900">REGISTER</h1>
                    <p>Enter your information to register</p>
                </div>
                <div>
                    <div class="flex -mx-3">
                        <div class="w-1/2 px-3 mb-5">
                            <span class="font-semibold">Name</span><div class="flex">
                                <div class="w-10 z-10 pl-1 text-center pointer-events-none flex items-center justify-center">
                                    <i class="mdi mdi-account-outline text-gray-400 text-lg"></i>
                                </div>
                                <asp:TextBox ID="txtName" runat="server" class="w-full -ml-10 pl-10 pr-3 py-2 rounded-lg border-2 border-gray-200 outline-none focus:border-indigo-500" placeholder="John"></asp:TextBox>
                                <br />
                            </div>
                        </div>&nbsp;
                        <div class="w-1/2 px-3 mb-5">
                            <span class="font-semibold">Phone Numbe</span><div class="flex">
                                <div class="r-10 z-10 pl-1 text-center pointer-events-none flex items-center justify-center">
                                    <i class="mdi mdi-account-outline text-gray-400 text-lg"></i></div>
                                <asp:TextBox ID="txtPNumber" runat="server" class="w-full -ml-10 pl-10 pr-3 py-2 rounded-lg border-2 border-gray-200 outline-none focus:border-indigo-500" placeholder="011-11111111"></asp:TextBox>
                            </div>
                        </div>
                    </div>
                    <div class="flex -mx-3">
                        <div class="w-full px-3 mb-5">
                            <label for="" class="text-xs font-semibold px-1">Email</label>
                            <div class="flex">
                                <div class="w-10 z-10 pl-1 text-center pointer-events-none flex items-center justify-center"><i class="mdi mdi-email-outline text-gray-400 text-lg"></i></div>
                                <asp:TextBox ID="txtEmail" runat="server" class="w-full -ml-10 pl-10 pr-3 py-2 rounded-lg border-2 border-gray-200 outline-none focus:border-indigo-500" placeholder="johnsmith@example.com"></asp:TextBox>
                            </div>
                            <asp:Label ID="LabelErrorEmail" runat="server" Text="" ForeColor="#CC0000" CssClass="block mb-2 text-sm font-medium"></asp:Label>
                        </div>
                    </div>
                    <div class="flex -mx-3">
                        <div class="w-full px-3 mb-5">
                            <label for="" class="text-xs font-semibold px-1">Birthday</label>
                            <div class="flex">
                                <div class="w-10 z-10 pl-1 text-center pointer-events-none flex items-center justify-center"><i class="mdi mdi-lock-outline text-gray-400 text-lg"></i></div> <!--OnTextChanged="TextBox4_TextChanged"-->
                                <asp:TextBox ID="txtBirthday" runat="server" class="w-full -ml-10 pl-10 pr-3 py-2 rounded-lg border-2 border-gray-200 outline-none focus:border-indigo-500" placeholder="    Select birthday date"></asp:TextBox>
                            </div>
                        </div>
                    </div>
                    <div class="flex -mx-3">
                        <div class="w-full px-3 mb-5">
                            <label for="" class="text-xs font-semibold px-1">Password</label>
                            <div class="flex">
                                <div class="w-10 z-10 pl-1 text-center pointer-events-none flex items-center justify-center"><i class="mdi mdi-lock-outline text-gray-400 text-lg"></i></div>
                                <asp:TextBox ID="txtPassword" runat="server" class="w-full -ml-10 pl-10 pr-3 py-2 rounded-lg border-2 border-gray-200 outline-none focus:border-indigo-500" placeholder="************"></asp:TextBox>
                            </div>
                        </div>
                    </div>
                    <div class="flex -mx-3">
                        <div class="w-full px-3 mb-12">
                            <label for="" class="text-xs font-semibold px-1">Confirm password</label>
                            <div class="flex">
                                <div class="w-10 z-10 pl-1 text-center pointer-events-none flex items-center justify-center"><i class="mdi mdi-lock-outline text-gray-400 text-lg"></i></div>
                                <asp:TextBox ID="txtConPassword" runat="server" class="w-full -ml-10 pl-10 pr-3 py-2 rounded-lg border-2 border-gray-200 outline-none focus:border-indigo-500" placeholder="************"></asp:TextBox>
                                <span class="font-semibold">
                                <br />
                                <asp:Label ID="lblErrorMessage" runat="server"></asp:Label>
                                </span>
                            </div>
                        </div>
                    </div>
                    <div class="flex -mx-3">
                        <div class="w-full px-3 mb-5">
                            <asp:Button class="block w-full max-w-xs mx-auto bg-red-500 hover:bg-amber-400 focus:bg-amber-400 text-white rounded-lg px-3 py-3 font-semibold" 
                                ID="btnRegister" runat="server" Text="REGISTER NOW" OnClick="Button1_Click"  />
                        </div>
                    </div>
                </div>
            </div>
        </div>
        </div>
    </div>
        <!--Modal of Added new Customer Account Successful-->
    <asp:Panel ID="PanelAddSuccess" runat="server" Visible="False">
        <div class="bg-black bg-opacity-50 md:bg-opacity-50 fixed top-0 left-0 right-0 z-50  p-4 overflow-x-hidden overflow-y-auto md:inset-0 h-[calc(100%-1rem)] md:h-full">
            <div class="relative w-full h-full max-w-md md:h-auto mx-auto my-20">
                <!--Pop Out-->
                <div class="relative bg-white rounded-lg shadow ">
                    <div class="p-6 text-center ">
                        <svg xmlns="http://www.w3.org/2000/svg" class="text-[#059669] mx-auto h-11 rounded-full bg-[#D1FAE5] w-11" fill="none" viewBox="0 0 24 24" stroke="currentColor">
                            <path stroke-linecap="round" stroke-linejoin="round" stroke-width="1" d="M5 13l4 4L19 7" />
                        </svg>
                        <span class="text-2xl font-medium">New Customer Account Created Successfully</span>
                        <p class="text-center">Press continue to go to Login page.</p>
                        <asp:Button ID="Button1" runat="server" Text="Continue" CssClass=" my-3 cursor-pointer text-white bg-[#FB923C] hover:bg-[#FDBA74] focus:outline-none  font-medium rounded-full text-sm px-5 py-2.5 text-center mr-2 mb-2 " PostBackUrl="~/Customer/Login.aspx" />
                    </div>
                </div>
            </div>
        </div>
    </asp:Panel>
</asp:Content>
