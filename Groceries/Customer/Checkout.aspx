﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Checkout.aspx.cs" Inherits="Groceries.Customer.Checkout" MasterPageFile="~/MasterPage/Customer.Master"%>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

<div class="py-14 px-4 md:px-6 2xl:px-20 2xl:container xl:mx-auto bg-stone-50">
    <div class="mx-auto" style="max-width:1000px">
    <div class="border-gray-900/10 rounded-lg bg-white shadow-lg border px-4 py-4 md:py-6 md:p-6 xl:p-8 w-full" >
    <div class="flex justify-start item-start space-y-2 flex-col">
        <h1 class="pb-4 text-2xl lg:text-3xl font-semibold leading-7 lg:leading-9 text-gray-800">Shipping Address</h1>
    </div> 
    
    <div class="relative overflow-x-auto shadow-md sm:rounded-lg">
    <table class="w-full text-sm text-left text-gray-500 ">
        <thead class="text-xs text-gray-700 uppercase bg-gray-50 ">
            <tr>
                <th scope="col" class="px-6 py-3">
                    
                </th>
                <th scope="col" class="px-6 py-3">
                    Name
                </th>
                <th scope="col" class="px-6 py-3">
                    Contact Number
                </th>
                <th scope="col" class="px-6 py-3">
                    Address
                </th>
            </tr>
        </thead>
        <tbody>
            <tr class="bg-white border-b ">
                <th scope="row" class="px-6 py-4 font-medium text-gray-900 whitespace-nowrap">
                    <asp:RadioButton ID="RadioButton1" runat="server" AutoPostBack="True" />
                </th>
                <td class="px-6 py-4">
                    Chia Chia
                </td>
                <td class="px-6 py-4">
                    018-8888888
                </td>
                <td class="px-6 py-4">
                    B-8-8, PV9 Residences, Taman Melati, Setapak, 54400, Kuala Lumpur.
                </td>
            </tr>
            <tr class="bg-white border-b ">
                <th scope="row" class="px-6 py-4 font-medium text-gray-900 whitespace-nowrap ">
                    <asp:RadioButton ID="RadioButton2" runat="server" />
                </th>

                <td class="px-6 py-4">
                    Gamen
                </td>
                <td class="px-6 py-4">
                    019-9999999
                </td>
                <td class="px-6 py-4">
                    B-9-9, PV9 Residences, Taman Melati, Setapak, 54400, Kuala Lumpur.
                </td>
            </tr> 
        </tbody>
    </table>
</div>

    <!-- Modal toggle -->
    <button data-modal-target="authentication-modal" data-modal-toggle="authentication-modal" class="block ml-auto mt-6 px-5 py-2.5 bg-[#003049] hover:bg-stone-300 focus:bg-neutral-900 text-white rounded-lg px-3 py-3 font-semibold" type="button">
    Add New Address
    </button>

</div>  
    
        <div class="grid grid-cols-2 gap-4 mt-10 flex flex-col xl:flex-row jusitfy-center items-stretch w-full">
             <div class="flex flex-col justify-start items-start rounded-lg bg-white shadow-lg border px-4 py-4 md:py-6 md:p-6 xl:p-8 w-full">
             <div class=mx-auto>
             <div class="flex justify-between item-between space-y-2 flex-col">
                <h1 class="pb-4 px-4 text-2xl lg:text-3xl font-semibold leading-7 lg:leading-9 text-gray-800">Delivery Method</h1>
             </div>
             
                 <asp:RadioButtonList ID="deliveryMethod" runat="server">
                     <asp:ListItem class="inline-flex items-center justify-between w-full px-8 py-4 my-4 mx-6 text-black bg-white border border-black-200 rounded-lg cursor-pointer hover:text-gray-600 hover:bg-gray-100">GoExpress</asp:ListItem>
                     <asp:ListItem class="inline-flex items-center justify-between w-full px-8 py-4 my-4 mx-6 text-black bg-white border border-black-200 rounded-lg cursor-pointer hover:text-gray-600 hover:bg-gray-100">Lalamove</asp:ListItem>
                 </asp:RadioButtonList>
             </div>
             </div>
            
            <div class="flex flex-col justify-start items-start rounded-lg bg-white shadow-lg border px-4 py-4 md:py-6 md:p-6 xl:p-8 w-full">
            <div class=mx-auto>
            <div class="flex justify-start item-start space-y-2 flex-col">
                <h1 class="pb-4 px-4 text-2xl lg:text-3xl font-semibold leading-7 lg:leading-9 text-gray-800">Payment Method</h1>
             </div>
                <asp:RadioButtonList ID="paymentMethod" runat="server">
                     <asp:ListItem class="inline-flex items-center justify-between w-full px-8 py-4 my-4 mx-4 text-black bg-white border border-black-200 rounded-lg cursor-pointer hover:text-gray-600 hover:bg-gray-100">Cash On Delivery</asp:ListItem>
                     <asp:ListItem class="inline-flex items-center justify-between w-full px-8 py-4 my-4 mx-4 text-black bg-white border border-black-200 rounded-lg cursor-pointer hover:text-gray-600 hover:bg-gray-100">Debit/Credit Card</asp:ListItem>
                 </asp:RadioButtonList>
            </div>
                <asp:Button ID="btnProceedPayment" runat="server" Text="Proceed" class="mt-6 block ml-auto px-8 py-2.5 bg-[#003049] hover:bg-stone-300 focus:bg-neutral-900 text-white rounded-lg px-3 py-3 font-semibold" PostBackUrl="~/Customer/Payment.aspx"/>
            </div>
        </div>
</div>
</div>
        
<!-- Main modal -->
<div id="authentication-modal" tabindex="-1" aria-hidden="true" class="fixed top-0 left-0 right-0 z-50 hidden w-full p-4 overflow-x-hidden overflow-y-auto md:inset-0 h-[calc(100%-1rem)] md:h-full">
    <div class="relative w-full h-full max-w-2xl md:h-auto">
        <!-- Modal content -->
        <div class="relative bg-white rounded-lg shadow ">
            <button type="button" class="absolute top-3 right-2.5 text-gray-400 bg-transparent hover:bg-gray-200 hover:text-gray-900 rounded-lg text-sm p-1.5 ml-auto inline-flex items-center" data-modal-hide="authentication-modal">
                <svg aria-hidden="true" class="w-5 h-5" fill="currentColor" viewBox="0 0 20 20" xmlns="http://www.w3.org/2000/svg"><path fill-rule="evenodd" d="M4.293 4.293a1 1 0 011.414 0L10 8.586l4.293-4.293a1 1 0 111.414 1.414L11.414 10l4.293 4.293a1 1 0 01-1.414 1.414L10 11.414l-4.293 4.293a1 1 0 01-1.414-1.414L8.586 10 4.293 5.707a1 1 0 010-1.414z" clip-rule="evenodd"></path></svg>
                <span class="sr-only">Close modal</span>
            </button>
            <div class="px-6 py-6 lg:px-8">
                <h2 class="text-xl font-semibold leading-7 text-gray-900">Add Shipping address</h2>
    
      <div class="mt-4 grid grid-cols-1 gap-x-6 gap-y-8 sm:grid-cols-6">
        <div class="sm:col-span-3">
          <label for="first-name" class="block text-sm font-medium leading-6 text-gray-900">Your Name</label>
          <div class="mt-2">
            <input type="text" name="first-name" id="first-name" class="block w-full rounded-md border-0 py-1.5 text-gray-900 shadow-sm ring-1 ring-inset ring-gray-300 placeholder:text-gray-400 focus:ring-2 focus:ring-inset focus:ring-indigo-600 sm:text-sm sm:leading-6">
          </div>
        </div>

        <div class="sm:col-span-3">
          <label for="last-name" class="block text-sm font-medium leading-6 text-gray-900">Contact Number</label>
          <div class="mt-2">
            <input type="text" name="last-name" id="last-name"  class="block w-full rounded-md border-0 py-1.5 text-gray-900 shadow-sm ring-1 ring-inset ring-gray-300 placeholder:text-gray-400 focus:ring-2 focus:ring-inset focus:ring-indigo-600 sm:text-sm sm:leading-6">
          </div>
        </div>

        <div class="sm:col-span-3">
          <label for="email" class="block text-sm font-medium leading-6 text-gray-900">Street Address</label>
          <div class="mt-2">
            <input id="email" name="street" type="email" class="block w-full rounded-md border-0 py-1.5 text-gray-900 shadow-sm ring-1 ring-inset ring-gray-300 placeholder:text-gray-400 focus:ring-2 focus:ring-inset focus:ring-indigo-600 sm:text-sm sm:leading-6">
          </div>
        </div>

        <div class="sm:col-span-3">
          <label for="first-name" class="block text-sm font-medium leading-6 text-gray-900">State</label>
          <div class="mt-2">
            <input type="text" name="first-name" id="state" class="block w-full rounded-md border-0 py-1.5 text-gray-900 shadow-sm ring-1 ring-inset ring-gray-300 placeholder:text-gray-400 focus:ring-2 focus:ring-inset focus:ring-indigo-600 sm:text-sm sm:leading-6">
          </div>
        </div>

        <div class="sm:col-span-3">
          <label for="last-name" class="block text-sm font-medium leading-6 text-gray-900">City</label>
          <div class="mt-2">
            <input type="text" name="last-name" id="city"  class="block w-full rounded-md border-0 py-1.5 text-gray-900 shadow-sm ring-1 ring-inset ring-gray-300 placeholder:text-gray-400 focus:ring-2 focus:ring-inset focus:ring-indigo-600 sm:text-sm sm:leading-6">
          </div>
        </div>

         <div class="sm:col-span-3">
          <label for="last-name" class="block text-sm font-medium leading-6 text-gray-900">Postal Code</label>
          <div class="mt-2">
            <input type="text" name="last-name" id="postalcode"  class="block w-full rounded-md border-0 py-1.5 text-gray-900 shadow-sm ring-1 ring-inset ring-gray-300 placeholder:text-gray-400 focus:ring-2 focus:ring-inset focus:ring-indigo-600 sm:text-sm sm:leading-6">
          </div>
        </div>

      </div>
            <div>
                <asp:Button ID="btnCheckout" runat="server" Text="Save" class="mt-10 mb-2 block ml-auto px-8 py-2.5 bg-[#003049] hover:bg-stone-300 focus:bg-neutral-900 text-white rounded-lg px-3 py-3 font-semibold" PostBackUrl="~/Customer/Checkout.aspx" />
            </div>
                
                
            </div>
       </div>     
    </div>
  </div>

</asp:Content> 
