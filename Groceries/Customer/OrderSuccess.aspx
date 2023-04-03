﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="OrderSuccess.aspx.cs" Inherits="Groceries.Customer.OrderSuccess" MasterPageFile="~/MasterPage/Customer.Master"%>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="bg-stone-50 flex items-center justify-center">
    <div class="my-28 w-full mx-auto rounded-lg bg-white shadow-lg p-5 text-gray-700" style="max-width:600px">
            <div class="text-center">
            <img src="../images/oderConfirmed.png" class="text-green-600 w-16 h-16 mx-auto my-6" style="max-width:200px"/>
            <h3 class="my-10 md:text-2xl text-base text-gray-900 font-semibold text-center">Order Confirmed</h3>
            <p class="text-gray-600 my-2">Thank you for your purchase!</p>
            <p> Have a great day!  </p>
            <div class="py-10 text-center">
                <asp:Button ID="Button1" runat="server" Text="View Orders" class="block w-full max-w-xs mx-auto bg-[#003049] hover:bg-stone-300 focus:bg-neutral-900 text-white rounded-lg px-3 py-3 font-semibold" />
            </div>
        </div>
        </div>
     </div>
</asp:Content> 
