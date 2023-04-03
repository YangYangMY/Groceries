<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Payment.aspx.cs" Inherits="Groceries.Payment" MasterPageFile="~/MasterPage/Customer.Master" %>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

<div>
    <div class="min-w-screen min-h-screen bg-stone-50 flex items-center justify-center">
    <div class="w-full mx-auto rounded-lg bg-white shadow-lg p-5 text-gray-700" style="max-width:800px">
        <div class="grid grid-cols-3 gap-4">
            <div class="flex items-center pr-4 border-r-2">
                <img src="../images/card.png" alt="Credit card" />
            </div>
         <div class="col-span-2">
             <div class="mb-10">
            <h1 class="text-center font-bold text-xl uppercase">Payment</h1>
            </div>
        <div class="mb-3">
            <label class="font-bold text-sm mb-2 ml-1">Cardholder's Name<br /></label>
            <asp:TextBox ID="txtCardName" class="w-full px-3 py-2 mb-1 border-2 border-gray-200 rounded-md focus:outline-none focus:border-indigo-500 transition-colors" runat="server"></asp:TextBox>
        </div>
        <div class="mb-3">
            <label class="font-bold text-sm mb-2 ml-1">Card Number</label>
            <div>
                <asp:TextBox ID="txtCardNum" runat="server" class="w-full px-3 py-2 mb-1 border-2 border-gray-200 rounded-md focus:outline-none focus:border-indigo-500 transition-colors" ></asp:TextBox>
            </div>
        </div>
        <div class="mb-3 -mx-2 flex items-end">
            <div class="px-2 w-1/2">
                <label class="font-bold text-sm mb-2 ml-1">Expiry Date</label>
                <div>
                    <asp:DropDownList ID="ddlExpMonth" runat="server" class="w-full px-3 py-2 mb-1 border-2 border-gray-200 rounded-md focus:outline-none focus:border-indigo-500 transition-colors cursor-pointer">
                        <asp:ListItem Value="">Please Select</asp:ListItem>  
                        <asp:ListItem>January</asp:ListItem>
                        <asp:ListItem>Febuary</asp:ListItem>
                        <asp:ListItem>March</asp:ListItem>
                        <asp:ListItem>April</asp:ListItem>
                        <asp:ListItem>May</asp:ListItem>
                        <asp:ListItem>June</asp:ListItem>
                        <asp:ListItem>July</asp:ListItem>
                        <asp:ListItem>August</asp:ListItem>
                        <asp:ListItem>September</asp:ListItem>
                        <asp:ListItem>October</asp:ListItem>
                        <asp:ListItem>November</asp:ListItem>
                        <asp:ListItem>December</asp:ListItem>
                    </asp:DropDownList>
                </div>
            </div>
            <div class="px-2 w-1/2">
                <asp:DropDownList ID="ddlExpYear" runat="server" class="w-full px-3 py-2 mb-1 border-2 border-gray-200 rounded-md focus:outline-none focus:border-indigo-500 transition-colors cursor-pointer">
                    <asp:ListItem Value="">Please Select</asp:ListItem>  
                    <asp:ListItem>2023</asp:ListItem>
                    <asp:ListItem>2024</asp:ListItem>
                    <asp:ListItem>2025</asp:ListItem>
                    <asp:ListItem>2026</asp:ListItem>
                    <asp:ListItem>2027</asp:ListItem>
                    <asp:ListItem>2028</asp:ListItem>
                    <asp:ListItem>2029</asp:ListItem>
                    <asp:ListItem>2030</asp:ListItem>
                    <asp:ListItem>2031</asp:ListItem>
                    <asp:ListItem>2032</asp:ListItem>
                    <asp:ListItem>2033</asp:ListItem>
                </asp:DropDownList> 
            </div>
        </div>
        <div class="mb-10">
            <label class="font-bold text-sm mb-2 ml-1">CVV</label>
            <div>
                <asp:TextBox ID="txtCVV" runat="server" class="w-32 px-3 py-2 mb-1 border-2 border-gray-200 rounded-md focus:outline-none focus:border-indigo-500 transition-colors"></asp:TextBox>
            </div>
        </div>
        <div>

            <asp:Button ID="btnPay" runat="server" Text="PAY NOW" class="block w-full max-w-xs mx-auto bg-[#003049] hover:bg-stone-300 focus:bg-neutral-900 text-white rounded-lg px-3 py-3 font-semibold" PostBackUrl="~/Customer/OrderSuccess.aspx"/>

        </div>
    </div>
</div>
         </div>
        </div>
</div>   
</asp:Content>
