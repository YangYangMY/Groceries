﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ResetPassword.aspx.cs" Inherits="Groceries.Customer.ResetPassword" MasterPageFile="~/MasterPage/Customer.Master"%>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <!--Content-->
 <section class="h-screen">
  <div class="h-full">
      <div class="p-8 g-6 flex h-full flex-wrap items-center justify-center justify-normal">
      <div class="shrink-1 mb-10 grow-0 basis-auto md:mb-0 md:w-9/12 md:shrink-0 lg:w-6/12 xl:w-6/12"> 
          <img 
              src="../images/ForgotPassword.png"
              class="w-full"
              alt="Sample image" />
      </div>
          <div class="p-10 mb-12 md:mb-0 md:w-10/12 lg:w-5/12 xl:w-5/12">
              <form>
                  <h1 class="py-5 mb-4 text-3xl font-extrabold text-gray-900 dark:text-black md:text-5xl lg:text-6xl">Reset Password</h1>
                
                  <div class="my-4 flex items-center before:mt-0.5 before:flex-1 before:border-t before:border-neutral-300 after:mt-0.5 after:flex-1 
                      after:border-t after:border-neutral-300">
                  </div>
                  <div class="relative mb-6" data-te-input-wrapper-init>
                      <!-- Email input -->
                      <asp:Label ID="lblEmail" runat="server" Text="Email"
                          class="block mb-2 text-sm font-medium text-orange-300 dark:text-orange-500"></asp:Label>
                      <asp:TextBox ID="txtEmail" runat="server" class="appearance-none border-2 rounded w-full py-3 px-3 leading-tight border-gray-300 bg-gray-100 focus:outline-none focus:border-indigo-700 focus:bg-white text-gray-700 pr-16 font-mono" placeholder="name@flowbite.com"></asp:TextBox>
                      <br /><br />
                      
                      <!-- Password input -->
                      <asp:Label class="block mb-2 text-sm font-medium text-orange-300 dark:text-orange-500" ID="lblPassword" runat="server" Text="Password"></asp:Label>
                      <div class="relative w-full">
                          <asp:TextBox ID="TextBox1" runat="server" class="hidden js-password-toggle" placeholder="·········"></asp:TextBox>
                          <asp:TextBox ID="TextBox3" runat="server" class="appearance-none border-2 rounded w-full py-3 px-3 leading-tight border-gray-300 bg-gray-100 focus:outline-none focus:border-indigo-700 focus:bg-white text-gray-700 pr-16 font-mono js-password" placeholder="**********" autocomplete="off"></asp:TextBox>
                      </div>
                      <asp:SqlDataSource ID="SqlDataSource1" runat="server"></asp:SqlDataSource> <br />

                      <!-- Reset Password -->
                      <asp:Label class="block mb-2 text-sm font-medium text-orange-300 dark:text-orange-500" ID="Label1" runat="server" Text="Reset Password"></asp:Label>
                      <div class="relative w-full">
                          <asp:TextBox ID="TextBox2" runat="server" class="hidden js-password-toggle" placeholder="·········"></asp:TextBox>
                          <asp:TextBox ID="TextBox4" runat="server" class="appearance-none border-2 rounded w-full py-3 px-3 leading-tight border-gray-300 bg-gray-100 focus:outline-none focus:border-indigo-700 focus:bg-white text-gray-700 pr-16 font-mono js-password" placeholder="**********" autocomplete="off"></asp:TextBox>
                      </div>
                      <asp:SqlDataSource ID="SqlDataSource2" runat="server"></asp:SqlDataSource> <br />
                       
                      
                  <div class="text-center lg:text-left">
                      <div class="px-20 ml-20"> 
                          <asp:Button class="bg-yellow-500 hover:bg-yellow-400 text-white font-bold py-2 px-10 border-b-4 border-orange-700 hover:border-yellow-500 rounded" ID="btnReset" runat="server" Text="Reset" PostBackUrl="~/Customer/Login.aspx"/>
                      </div>
                     
                  </div>
              </form>
          </div>
      </div>
  </div>
</section>
</asp:Content>
