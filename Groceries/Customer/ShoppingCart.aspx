<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ShoppingCart.aspx.cs" Inherits="Groceries.Customer.ShoppingCart" MasterPageFile="~/MasterPage/Customer.Master" %>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<div>
    <div class="py-14 px-4 md:px-6 2xl:px-20 2xl:container 2xl:mx-auto bg-stone-50">
    <div class="flex justify-start item-start space-y-2 flex-col">
        <h1 class="text-3xl lg:text-4xl font-semibold leading-7 lg:leading-9 text-gray-800">Shopping Cart</h1>
    </div> 
    <div class="grid grid-cols-4 gap-4 mt-10 flex flex-col xl:flex-row jusitfy-center items-stretch w-full xl:space-x-8 space-y-4 md:space-y-6 xl:space-y-0">
              
        <div class="col-span-3 flex flex-col justify-start items-start rounded-lg bg-white shadow-lg border px-4 py-4 md:py-6 md:p-6 xl:p-8 w-full">
                <div class="mt-0 border-b flex flex-col md:flex-row justify-start items-start md:items-center md:space-x-6 xl:space-x-8 w-full">
                    <div class="pb-4 md:pb-8 w-full md:w-40">
                    </div>
                    <div class="md:flex-row flex-col flex justify-between items-start w-full pb-2 space-y-4 md:space-y-0">
                        <div class="w-full flex flex-col justify-start items-start space-y-8 pr-2">
                            <h3 class="font-semibold text-base  xl:text-lg leading-6 text-gray-800 ">Product</h3>
                        </div>
                        <div class="flex justify-right space-x-14 items-start w-full">
                            <p class="font-semibold text-base xl:text-lg leading-6">Unit Price</p>
                            <p class="font-semibold text-base xl:text-lg leading-6 text-gray-800">Qty</p>
                            <p class="font-semibold text-base xl:text-lg leading-6 text-gray-800">Total Price</p>
                        </div>
                    </div>
                </div>
                <div class="mt-0 flex flex-col md:flex-row justify-start items-start md:items-center md:space-x-6 xl:space-x-8 w-full">
                    <div class="pb-4 md:pb-8 w-full md:w-40">
                        <img class="w-full hidden md:block" src="../images/massimobread.png" alt="missimo" />
                    </div>
                    <div class="border-b border-gray-200 md:flex-row flex-col flex justify-between items-start w-full pb-8 space-y-4 md:space-y-0">
                        <div class="w-full flex flex-col justify-start items-start space-y-8 pr-2">
                            <h3 class="text-l xl:text-l font-semibold leading-6 text-gray-800">Massimo Sandwich Loaf with Wheat Germ (400g)</h3>
                        </div>
                        <div class="flex justify-between space-x-6 items-start w-full">
                            <p class="text-base xl:text-lg leading-6">RM 3.19</p>
                            <div>
                            <%--<p class="text-base xl:text-lg leading-6 text-gray-800">1</p>--%>
                            <asp:Button ID="btnIncrement" runat="server" Text=" +  " class ="rounded-full bg-black text-white hover:bg-stone-300 hover:text-black" OnClick="btnIncrement_Click" />
                            <asp:Label ID="lblQty" runat="server" Text="" class="mx-2"></asp:Label>
                            <asp:Button ID="btnDecrement" runat="server" Text="  -  " class ="rounded-full bg-black text-white font-bold hover:bg-stone-300 hover:text-black" OnClick="btnDecrement_Click" />
                            </div>
                            <p class="text-base xl:text-lg font-semibold leading-6 text-gray-800">RM 3.19</p>
                            <asp:Button ID="btnRemoveItem" runat="server" Text="Remove" class="underline"/>
                        </div>
                    </div>
                </div>
                <div class="mt-6 md:mt-0 flex justify-start flex-col md:flex-row items-start md:items-center space-y-4 md:space-x-6 xl:space-x-8 w-full">
                    <div class="w-full md:w-40">
                        <img class="w-full hidden md:block" src="../images/hbchips.jpg" alt="chips" />
                    </div>
                    <div class="flex justify-between items-start w-full flex-col md:flex-row space-y-4 md:space-y-0">
                        <div class="w-full flex flex-col justify-start items-start space-y-8 pr-2">
                            <h3 class="text-l xl:text-l font-semibold leading-6 text-gray-800">Calbee Honey Butter Chips (60g)</h3>
                        </div>
                        <div class="flex justify-between space-x-8 items-start w-full">
                            <p class="text-base xl:text-lg leading-6">RM5.50</p>
                           <div>
                            <%--<p class="text-base xl:text-lg leading-6 text-gray-800">1</p>--%>
                            <asp:Button ID="ButtonIncrement2" runat="server" Text=" +  " class ="rounded-full bg-black text-white hover:bg-stone-300 hover:text-black" OnClick="btnIncrement_Click" />
                            <asp:Label ID="lblQty2" runat="server" Text="" class="mx-2"></asp:Label>
                            <asp:Button ID="ButtonDecrement2" runat="server" Text="  -  " class ="rounded-full bg-black text-white font-bold hover:bg-stone-300 hover:text-black" OnClick="btnDecrement_Click" />
                            </div>
                            <p class="text-base xl:text-lg font-semibold leading-6 text-gray-800">RM5.50</p>
                            <asp:Button ID="btnRemoveItem2" runat="server" Text="Remove" class="underline"/>
                        </div>
                    </div>
                </div>
            </div>
                
                <div class="flex flex-col px-4 py-6 md:p-6 xl:p-8 w-full rounded-lg bg-white shadow-lg border space-y-6">
                    <h3 class="text-xl font-semibold leading-5 text-gray-800">Summary</h3>
                    <div class="flex justify-center items-center w-full space-y-4 flex-col border-gray-200 border-b pb-4">
                        <div class="flex justify-between w-full">
                            <p class="text-base leading-4 text-gray-800">Subtotal</p>
                            <p class="text-base leading-4 text-gray-600">RM8.69</p>
                        </div>
                        <div class="flex justify-between items-center w-full">
                            <p class="text-base leading-4 text-gray-800">Shipping Fee</p>
                            <p class="text-base leading-4 text-gray-600">RM8.00</p>
                        </div>
                    </div>
                    <div class="flex justify-between items-center w-full">
                        <p class="text-base font-semibold leading-4 text-gray-800">Total</p>
                        <p class="text-base font-semibold leading-4 text-gray-600">RM16.69</p>
                    </div>
                    <div>
                        <asp:Button ID="btnCheckout" runat="server" Text="Checkout" class=" mt-28 mb-2 block w-full max-w-xs mx-auto bg-[#003049] hover:bg-stone-300 focus:bg-neutral-900 text-white rounded-lg px-3 py-3 font-semibold" />
                    </div>
            </div>
</div>

</div>
    </div>
</asp:Content>
