<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Dashboard.aspx.cs" Inherits="Groceries.Dashboard" MasterPageFile="~/MasterPage/Admin.master" %>

<asp:content id="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
    </br>
<h1 class="mb-4 text-3xl font-extrabold text-gray-900 dark:text-white md:text-4xl lg:text-4xl"><span class="text-transparent bg-clip-text bg-gradient-to-r to-emerald-600 from-sky-400">Dashboard</span></h1>
    </br>

    <div class="grid grid-cols-3 gap-3">
        <div>
            <div class="flex flex-col items-center bg-white  rounded-lg shadow md:flex-row w-11/12">
                <img class=" object-cover  w-full rounded-t-lg h-96 md:h-auto md:w-20 md:rounded-none md:rounded-l-lg" src="../images/save-money.gif" alt="">
                <div class="flex flex-col justify-between p-4 leading-normal">
                    <h5 class="mb-2 text-1.5xl font-bold tracking-tight text-gray-900 dark:text-gray-400">Total Sales</h5>
                    <h1 class="mb-1 text-2xl font-bold dark:text-black">RM 5,000,000.20</h1>
                </div>
            </div>
        </div>
        <div>
            <div class="flex flex-col items-center bg-white  rounded-lg shadow md:flex-row w-11/12">
                <img class=" object-cover  w-full rounded-t-lg h-96 md:h-auto md:w-20 md:rounded-none md:rounded-l-lg" src="../images/shopping-cart.gif" alt="">
                <div class="flex flex-col justify-between p-4 leading-normal">
                    <h5 class="mb-2 text-1.5xl font-bold tracking-tight text-gray-900 dark:text-gray-400">Total Orders</h5>
                    <h1 class="mb-1 text-2xl font-bold dark:text-black">450</h1>
                </div>
            </div>
        </div>
        <div>

            <div class="flex flex-col items-center bg-white  rounded-lg shadow md:flex-row w-11/12">
                <img class=" object-cover  w-full rounded-t-lg h-96 md:h-auto md:w-20 md:rounded-none md:rounded-l-lg" src="../images/shopping-basket.gif" alt="">
                <div class="flex flex-col justify-between p-4 leading-normal">
                    <h5 class="mb-2 text-1.5xl font-bold tracking-tight text-gray-900 dark:text-gray-400">Total Products</h5>
                    <h1 class="mb-1 text-2xl font-bold dark:text-black">45</h1>
                </div>
            </div>
        </div>
</div>
    


</asp:content>
