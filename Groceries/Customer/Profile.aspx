<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Profile.aspx.cs" Inherits="Groceries.Customer.Profile" MasterPageFile="~/MasterPage/MyProfile.master"%>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <div class=" bg-white max-w-2xl shadow overflow-hidden sm:rounded-lg">
        <div class="px-4 py-5 sm:px-6">
            <h1 class="text-lg leading-6 font-medium text-gray-900">Personal Information</h1>
            <p class="mt-1 max-w-2xl text-sm text-gray-500">
                Details and informations about user.
            </p>
        </div>
        <div class="border-t border-gray-200">
            <table style="width:100%;">
                <tr class="bg-gray-50 px-4 py-5 sm:grid sm:grid-cols-3 sm:gap-4 sm:px-6">
                    <td class="text-sm font-medium text-gray-500" style="width: 438px">Full Name</td>
                    <td>
                        <asp:Label ID="lblName" runat="server" Text="Tan Wee Men"></asp:Label>
                    </td>
                </tr> 
                <tr class="bg-gray-50 px-4 py-5 sm:grid sm:grid-cols-3 sm:gap-4 sm:px-6">
                    <td class="text-sm font-medium text-gray-500" style="width: 438px">CustomerID</td>
                    <td>
                        <asp:Label ID="Label2" runat="server" Text="10012"></asp:Label>
                    </td>
                </tr>
                <tr class="bg-gray-50 px-4 py-5 sm:grid sm:grid-cols-3 sm:gap-4 sm:px-6">
                    <td class="text-sm font-medium text-gray-500" style="width: 438px">Birthday</td>
                    <td>
                        <asp:Label ID="lblBirthday" runat="server" Text="12-11-2007"></asp:Label>
                    </td>
                </tr>
                <tr class="bg-gray-50 px-4 py-5 sm:grid sm:grid-cols-3 sm:gap-4 sm:px-6">
                    <td class="text-sm font-medium text-gray-500" style="width: 438px">Phone Number</td>
                    <td>
                        <asp:Label ID="lblPNumber" runat="server" Text="011-5328465"></asp:Label>
                    </td>
                </tr>
                <tr class="bg-gray-50 px-4 py-5 sm:grid sm:grid-cols-3 sm:gap-4 sm:px-6">
                    <td class="text-sm font-medium text-gray-500" style="width: 438px">Email Address</td>
                    <td>
                        <asp:Label ID="lblEmail" runat="server" Text="weemen@gmail.com"></asp:Label>
                    </td>
                </tr>
            </table>
        </div>
    </div>
</asp:Content>
