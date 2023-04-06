<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="OrderHistory.aspx.cs" Inherits="Groceries.Customer.OrderHistory" MasterPageFile="~/MasterPage/MyProfile.master"%>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <div>
        <div class="py-4 2xl:container xl:mx-auto">
            <div class="" style="min-width:800px">
                <div class="border-gray-900/10 py-4 md:py-6 md:p-6 xl:p-8 w-full" >
                    <div class="flex justify-start item-start space-y-2 flex-col">
                        <h1 class="pb-4 text-2xl lg:text-3xl font-semibold leading-7 lg:leading-9 text-gray-800">Order Tracking</h1>
                    </div> 
                    <div class="rounded-lg bg-white shadow-lg border p-6 space-y-6">
                        <h1 class="pb-4 text-xl lg:text-2xl font-semibold leading-7 lg:leading-9 text-gray-800">Order #001</h1>
                        <div class="flex justify-start space-x-12 items-start w-full">
                            <p class="text-base xl:text-lg leading-6">Ordered Date:</p>
                            <p class="text-base xl:text-lg leading-6 text-gray-800">4/5/2023 1:18pm</p>
                        </div>
                        <div>
                            <div class="w-11/12 lg:w-6/6 mx-auto my-14">
                                <div class="bg-gray-200  h-1 flex items-center justify-between">
                                    <div class="w-1/3 bg-indigo-700 h-1 flex items-center">
                                        <div class="bg-indigo-700 h-6 w-6 rounded-full shadow flex items-center justify-center">
                                            <img src="https://tuk-cdn.s3.amazonaws.com/can-uploader/thin_with_steps-svg1.svg" alt="check"/>
                                        </div>
                            </div>
                            <div class="w-1/3 flex justify-between bg-indigo-700 h-1 items-center relative">
                                <div class="absolute right-0 -mr-2">
                                    <div class="relative bg-white  shadow-lg px-2 py-1 rounded mt-16 -mr-12">
                                        <svg class="absolute top-0 -mt-1 w-full right-0 left-0 text-white " width="16px" height="8px" viewBox="0 0 16 8" version="1.1" xmlns="http://www.w3.org/2000/svg">
                                            <g id="Page-1" stroke="none" stroke-width="1" fill="none" fill-rule="evenodd">
                                                <g id="Progress-Bars" transform="translate(-322.000000, -198.000000)" fill="currentColor">
                                                    <g id="Group-4" transform="translate(310.000000, 198.000000)">
                                                        <polygon id="Triangle" points="20 0 28 8 12 8"></polygon>
                                                    </g>
                                                </g>
                                            </g>
                                        </svg>
                                        <p tabindex="0" class="focus:outline-none text-indigo-700  text-xs font-bold">Out for Delivery</p>
                                    </div>
                                </div>
                                <div class="bg-indigo-700 h-6 w-6 rounded-full shadow flex items-center justify-center -ml-2">
                                    <img src="https://tuk-cdn.s3.amazonaws.com/can-uploader/thin_with_steps-svg1.svg" alt="check"/>
                                </div>
                                <div class="bg-white  h-6 w-6 rounded-full shadow flex items-center justify-center -mr-3 relative">
                                    <div class="h-3 w-3 bg-indigo-700 rounded-full"></div>
                                </div>
                            </div>
                            <div class="w-1/3 flex justify-end">
                                <div class="bg-white h-6 w-6 rounded-full shadow"></div>
                            </div>
                        </div>
                    </div>
    </div>

<div class="relative overflow-x-auto shadow-md sm:rounded-lg">
<table class="w-full text-sm text-center text-gray-500 ">
    <thead class="text-xs text-gray-700 uppercase bg-gray-50 ">
        <tr>
            <th scope="col" class="px-6 py-3">
                Product
            </th>
            <th scope="col" class="px-6 py-3">
                Quantity
            </th>
            <th scope="col" class="px-6 py-3">
                Total Price
            </th>
        </tr>
    </thead>
    <tbody>
        <tr class="bg-white border-b ">
            <th scope="row" class="px-6 py-4">
                <div class="w-full md:w-20 mx-auto">
                    <img class="hidden md:block" src="../images/massimobread.png" alt="missimo" />
                </div>
            </th>
            <td class="px-6 py-4">
                1
            </td>
            <td class="px-6 py-4">
                RM3.19
            </td>
        </tr>
        <tr class="bg-white border-b">
            <th scope="row" class="px-6 py-4">
                <div class="w-full md:w-20 mx-auto">
                    <img class="hidden md:block" src="../images/hbchips.jpg" alt="hbchips" />
                </div>
            </th>
            <td class="px-6 py-4">
                1
            </td>
            <td class="px-6 py-4">
                RM5.50
            </td>
        </tr> 
    </tbody>
</table>

        <div class="border-gray-200 md:flex-row flex-col flex justify-end items-start w-full space-y-4 md:space-y-0">
            <div class="flex justify-end space-x-12 items-start w-full pr-6 py-4">
            <p class="text-base xl:text-lg leading-6">Total Paid:</p>
            <p class="text-base xl:text-lg leading-6 text-gray-800">RM16.69</p>
        </div>
    </div>
         
</div>
</div>
        
</div>
</div>
</div> 
</div>
</asp:Content>

