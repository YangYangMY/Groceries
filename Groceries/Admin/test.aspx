<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="test.aspx.cs" Inherits="Groceries.Customer.test" MasterPageFile="~/MasterPage/Customer.Master" %>
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
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
                                ID="btnRegister" runat="server" Text="REGISTER NOW" OnClick="Button1_Click" PostBackUrl="~/Customer/Login.aspx" />
                        </div>
                    </div>
                </div>
    </form>
</body>
</html>
