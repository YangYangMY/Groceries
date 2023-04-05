<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Profile.aspx.cs" Inherits="Groceries.Customer.Profile" MasterPageFile="~/MasterPage/MyProfile.master"%>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <div class="bg-white max-w-2xl shadow overflow-hidden sm:rounded-lg">
        <div class="px-4 py-5 sm:px-6">
            <h1 class="text-lg leading-6 font-medium text-gray-900">Personal Information</h1>
            <p class="mt-1 max-w-2xl text-sm text-gray-500">
                Details and informations about user.
            </p>
        </div>
        <div class="border-t border-gray-200">
            <table style="width:100%;">
                <tr class="bg-gray-50 px-4 py-5 sm:grid sm:grid-cols-3 sm:gap-4 sm:px-6">
                    <td class="text-sm font-medium text-gray-500">Full Name</td>
                    <td>&nbsp;</td>
                </tr> 
                <tr class="bg-gray-50 px-4 py-5 sm:grid sm:grid-cols-3 sm:gap-4 sm:px-6">
                    <td class="text-sm font-medium text-gray-500">CustomerID</td>
                    <td>&nbsp;</td>
                </tr>
                <tr class="bg-gray-50 px-4 py-5 sm:grid sm:grid-cols-3 sm:gap-4 sm:px-6">
                    <td class="text-sm font-medium text-gray-500">Birthday</td>
                    <td>&nbsp;</td>
                </tr>
                <tr class="bg-gray-50 px-4 py-5 sm:grid sm:grid-cols-3 sm:gap-4 sm:px-6">
                    <td class="text-sm font-medium text-gray-500">Phone Number</td>
                    <td>&nbsp;</td>
                </tr>
                <tr class="bg-gray-50 px-4 py-5 sm:grid sm:grid-cols-3 sm:gap-4 sm:px-6">
                    <td class="text-sm font-medium text-gray-500">Email Address</td>
                    <td>&nbsp;</td>
                </tr>
            </table>
        </div>
    </div>
</asp:Content>
