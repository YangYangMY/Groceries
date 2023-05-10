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
                            <span class="text-xs font-semibold">Name
                            <asp:RequiredFieldValidator ID="reqName" runat="server" ControlToValidate="txtName" ForeColor="red" ErrorMessage="Name is required.">*</asp:RequiredFieldValidator>
                            <br />
                            </span>
                            <div class="flex">
                                <asp:TextBox ID="txtName" runat="server" class="w-full pl-10 pr-3 py-2 rounded-lg border-2 border-gray-200 outline-none focus:border-indigo-500" placeholder="John"></asp:TextBox>
                                <br />
                            </div>
                        </div>&nbsp;
                        <div class="w-1/2 px-3 mb-5">
                            <span class="text-xs font-semibold pl-2">Phone Number</span><div class="flex">
                                <div class="r-10 z-10 pl-1 text-center pointer-events-none flex items-center justify-center">
                                    <i class="mdi mdi-account-outline text-gray-400 text-lg"></i></div>
                                <asp:TextBox ID="txtPNumber" runat="server" class="w-full pl-10 pr-3 py-2 rounded-lg border-2 border-gray-200 outline-none focus:border-indigo-500" placeholder="011-11111111" MaxLength="12"></asp:TextBox>
                            </div>
                        </div>
                    </div>
                    <div class="flex -mx-3">
                        <div class="w-full px-3 mb-5">
                            <label for="" class="text-xs font-semibold px-1">Email
                            <span class="font-semibold">
                            <asp:RequiredFieldValidator ID="reqEmail" runat="server" ControlToValidate="txtEmail" ForeColor="red" ErrorMessage="Email is required.">*</asp:RequiredFieldValidator>
                            <asp:RegularExpressionValidator ID="regEmail" runat="server" ErrorMessage="Invalid Email Format." ForeColor="red"  ValidationExpression="\w+([-+.]\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ControlToValidate="txtEmail">*</asp:RegularExpressionValidator>
                            </span></label>
                            &nbsp;<div class="flex">
                                <div class="w-10 z-10 pl-1 text-center pointer-events-none flex items-center justify-center"><i class="mdi mdi-email-outline text-gray-400 text-lg"></i></div>
                                <asp:TextBox ID="txtEmail" runat="server" class="w-full -ml-10 pl-10 pr-3 py-2 rounded-lg border-2 border-gray-200 outline-none focus:border-indigo-500" placeholder="johnsmith@example.com"></asp:TextBox>
                            </div>
                            <asp:Label ID="LabelErrorEmail" runat="server" Text="" ForeColor="#CC0000" CssClass="block mb-2 text-sm font-medium"></asp:Label>
                        </div>
                    </div>
                    <div class="flex -mx-3">
                        <div class="w-full px-3 mb-5">
                            <label for="" class="text-xs font-semibold px-1">Birthday</label>
                            <asp:CompareValidator ID="CompareValidator1" runat="server" ErrorMessage="Date of Birth format should be DD/MM/YYYY" ForeColor="red" Operator="DataTypeCheck" ControlToValidate="txtBirthday" Type="Date">*</asp:CompareValidator>
                            <div class="flex">
                                <div class="w-10 z-10 pl-1 text-center pointer-events-none flex items-center justify-center"><i class="mdi mdi-lock-outline text-gray-400 text-lg"></i></div> <!--OnTextChanged="TextBox4_TextChanged"-->
                                <asp:TextBox ID="txtBirthday" runat="server" class="w-full -ml-10 pl-10 pr-3 py-2 rounded-lg border-2 border-gray-200 outline-none focus:border-indigo-500" placeholder="    Select birthday date"></asp:TextBox>
                            </div>
                        </div>
                    </div>
                    <div class="flex -mx-3">
                        <div class="w-full px-3 mb-5">
                            <label for="" class="text-xs font-semibold px-1">Password
                            <span class="font-semibold">
                            <asp:RequiredFieldValidator ID="reqPass" runat="server" ControlToValidate="txtPassword" ForeColor="red" ErrorMessage="Password is required.">*</asp:RequiredFieldValidator>
                            </span>
                            <asp:RegularExpressionValidator ID="regPass" runat="server" ErrorMessage="Minimum 8 characters atleast 1 Alphabet, 1 Number and 1 Special Character" ForeColor="red" ValidationExpression="^(?=.*[A-Za-z])(?=.*\d)(?=.*[$@$!%*#?&amp;])[A-Za-z\d$@$!%*#?&amp;]{8,}$" ControlToValidate="txtPassword">*</asp:RegularExpressionValidator>
                            </label>
                            &nbsp;<div class="flex">
                                <div class="w-10 z-10 pl-1 text-center pointer-events-none flex items-center justify-center"><i class="mdi mdi-lock-outline text-gray-400 text-lg"></i></div>
                                <asp:TextBox ID="txtPassword" runat="server" class="w-full -ml-10 pl-10 pr-3 py-2 rounded-lg border-2 border-gray-200 outline-none focus:border-indigo-500" placeholder="************" TextMode="Password" MaxLength="30"></asp:TextBox>
                            </div>
                        </div>
                    </div>
                    <div class="flex -mx-3">
                        <div class="w-full px-3 mb-12">
                            <label for="" class="text-xs font-semibold px-1">Confirm password
                            <span class="font-semibold">
                            <asp:RequiredFieldValidator ID="reqConPass" runat="server" ControlToValidate="txtConPassword" ForeColor="red" ErrorMessage="Confirmation password is required.">*</asp:RequiredFieldValidator>
                            </span>
                            <asp:RegularExpressionValidator ID="regConPass" runat="server" ErrorMessage="Minimum 8 characters atleast 1 Alphabet, 1 Number and 1 Special Character" ForeColor="red" ValidationExpression="^(?=.*[A-Za-z])(?=.*\d)(?=.*[$@$!%*#?&amp;])[A-Za-z\d$@$!%*#?&amp;]{8,}$" ControlToValidate="txtConPassword">*</asp:RegularExpressionValidator>
                            <asp:CompareValidator ID="cmpPass" runat="server" ErrorMessage="Passwords do not match" ForeColor="red" ClientIDMode="AutoID" ControlToCompare="txtPassword" ControlToValidate="txtConPassword">*</asp:CompareValidator>
                            </label>
                            &nbsp;<div class="flex">
                                <div class="w-10 z-10 pl-1 text-center pointer-events-none flex items-center justify-center"><i class="mdi mdi-lock-outline text-gray-400 text-lg"></i></div>
                                <asp:TextBox ID="txtConPassword" runat="server" class="w-full -ml-10 pl-10 pr-3 py-2 rounded-lg border-2 border-gray-200 outline-none focus:border-indigo-500" placeholder="************" TextMode="Password" MaxLength="30"></asp:TextBox>
                                <span class="font-semibold">
                                <br />
                                <br />
                                </span>
                            </div>
                        </div>
                    </div>
                    <div>
                        <asp:Label ID="lblErrorMessage" runat="server"></asp:Label>
                        <br />
                        <asp:ValidationSummary ID="ValidationSummary1" runat="server" HeaderText="The following problems have been encountered" Width="1247px" />
                    </div>
                    <div class="flex -mx-3">
                        <div class="w-full px-3 mb-5">
                            <asp:Button class="block w-full max-w-xs mx-auto bg-red-500 hover:bg-amber-400 focus:bg-amber-400 text-white rounded-lg px-3 py-3 font-semibold" 
                                ID="btnRegister" runat="server" Text="REGISTER NOW" OnClick="btnRegister_Click" />
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
                        <br />
                        <a href="Login.aspx" class=" my-3 cursor-pointer text-white bg-[#FB923C] hover:bg-[#FDBA74] focus:outline-none  font-medium rounded-full text-sm px-5 py-2.5 text-center mr-2 mb-2 ">Continue</a>
                    </div>
                </div>
            </div>
        </div>
    </asp:Panel>
</asp:Content>
