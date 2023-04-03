<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="HomePage.aspx.cs" Inherits="Groceries.HomePage" MasterPageFile="~/MasterPage/Customer.Master" %>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<!--Content-->
    <!--
<section class="bg-center bg-no-repeat bg-[url('../images/header.png')] bg-gray-700 bg-blend-multiply">
    <div class="px-4 mx-auto max-w-screen-xl text-center py-24 lg:py-56 relative">
        <h1 class="mb-4 text-4xl font-extrabold tracking-tight leading-none text-white md:text-5xl lg:text-6xl">We invest in the world’s potential</h1>
        <p class="mb-8 text-lg font-normal text-gray-300 lg:text-xl sm:px-16 lg:px-48">
            Here at Flowbite we focus on markets where technology, innovation, and capital can unlock long-term value and drive economic growth.
        </p>
    </div>
</section>
    -->

    <div class="relative">
        <img class="h-full w-full" src="../images/header.png" alt="header-pic" />
        <img class="absolute top-20 left-20 mx-8" src="../images/yellow-rec.png" alt="yellow-rec" />
        <img class="absolute bottom-0 right-0 mx-8" src="../images/grocery-header.png" alt="grocery-header" />
    </div>

<div class="bg-white">
  <div class="mx-auto max-w-2xl px-4 py-16 sm:px-6 sm:py-24 lg:max-w-7xl lg:px-8">
    <h2 class="text-3xl font-normal tracking-tight text-gray-900 text-center mb-6">Promotion items</h2>

    <div class="grid grid-cols-1 gap-x-6 gap-y-10 sm:grid-cols-2 lg:grid-cols-3 xl:grid-cols-4 xl:gap-x-8">
        <a href="#" class="group">
            <div class="relative w-full h-0 bg-gray-200 rounded-lg" style="padding-bottom: 100%">
                <div class="absolute inset-0 flex justify-center items-center">
                    <img src="../images/rabbit-candy.png" alt="rabbit-candy" class="h-auto w-2/4 object-cover object-center group-hover:opacity-75">
                </div>
            </div>
            <h3 class="mt-4 text-sm text-gray-700">
            White Rabbit Creamy Candy (108g)
        </h3>
        <p class="mt-1 text-lg font-medium text-gray-900">$48</p>
      </a>

      <a href="#" class="group">
        <div class="relative w-full h-0 bg-gray-200 rounded-lg" style="padding-bottom: 100%">
                <div class="absolute inset-0 flex justify-center items-center">
                    <img src="../images/rabbit-candy.png" alt="rabbit-candy" class="h-auto w-2/4 object-cover object-center group-hover:opacity-75">
                </div>
            </div>
        <h3 class="mt-4 text-sm text-gray-700">Nomad Tumbler</h3>
        <p class="mt-1 text-lg font-medium text-gray-900">$35</p>
      </a>

      <a href="#" class="group">
          <div class="relative w-full h-0 bg-gray-200 rounded-lg" style="padding-bottom: 100%">
              <div class="absolute inset-0 flex justify-center items-center">
                  <img src="../images/rabbit-candy.png" alt="rabbit-candy" class="h-auto w-2/4 object-cover object-center group-hover:opacity-75">
              </div>
          </div>
        <h3 class="mt-4 text-sm text-gray-700">Focus Paper Refill</h3>
        <p class="mt-1 text-lg font-medium text-gray-900">$89</p>
      </a>

      <a href="#" class="group">
          <div class="relative w-full h-0 bg-gray-200 rounded-lg" style="padding-bottom: 100%">
              <div class="absolute inset-0 flex justify-center items-center">
                  <img src="../images/rabbit-candy.png" alt="rabbit-candy" class="h-auto w-2/4 object-cover object-center group-hover:opacity-75">
              </div>
          </div>
        <h3 class="mt-4 text-sm text-gray-700">Machined Mechanical Pencil</h3>
        <p class="mt-1 text-lg font-medium text-gray-900">$35</p>
      </a>

    </div>
  </div>
</div>

</asp:Content>