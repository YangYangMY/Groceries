<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Groceries.Login" MasterPageFile="~/MasterPage/Customer.Master"%>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <!--Content-->
<section class="h-screen">
  <div class="h-full">
      <div class="p-8 g-6 flex h-full flex-wrap items-center justify-center justify-normal">
      <div class="shrink-1 mb-10 grow-0 basis-auto md:mb-0 md:w-9/12 md:shrink-0 lg:w-6/12 xl:w-6/12"> 
          <img 
              src="../images/Online%20shopping.jpg" 
              class="w-full"
              alt="Sample image" />
      </div>
          <div class="p-10 mb-12 md:mb-0 md:w-10/12 lg:w-5/12 xl:w-5/12">
              <form>
                  <h1 class="py-5 mb-4 text-3xl font-extrabold text-gray-900 dark:text-black md:text-5xl lg:text-6xl">Log in</h1>
                  <div
                      class="flex flex-row items-center justify-center lg:justify-start">
                      <p class="mb-0 mr-4 text-lg">Sign in with </p> 
                      <div>
                          <asp:ImageButton ID="ibtnGoogle" class="w-10 h-10" runat="server" BorderWidth="0" ImageUrl="~/images/google.png" 
                              alt="Go to GoogleLogin.com" OnClick="ibtnGoogle_Click"/>&nbsp;&nbsp;&nbsp;&nbsp;
                          <asp:ImageButton ID="ibtnFacebook" class="w-10 h-10" runat="server" BorderWidth="0" ImageUrl="~/images/facebook.png" 
                              alt="Go to FacebookLogin.com" OnClick="ibtnFacebook_Click"/>&nbsp;&nbsp;&nbsp;&nbsp;
                          <asp:ImageButton ID="ibtnInstagram" class="w-10 h-10" runat="server" BorderWidth="0" ImageUrl="~/images/instagram.png" 
                              alt="Go to InstagramLogin.com" OnClick="ibtnInstagram_Click"/>
                      </div>
                  </div>
                  <br />
                  <div class="my-4 flex items-center before:mt-0.5 before:flex-1 before:border-t before:border-neutral-300 after:mt-0.5 after:flex-1 
                      after:border-t after:border-neutral-300">
                      <p class="mx-4 mb-0 text-center font-semibold dark:text-black">Or</p>
                  </div>
                  <div class="relative mb-6" data-te-input-wrapper-init>
                      <!-- Email input -->
                      <asp:Label ID="lblEmail" runat="server" Text="Email"
                          class="block mb-2 text-sm font-medium text-blue-700 dark:text-blue-500"></asp:Label>
                      <asp:TextBox ID="txtEmail" runat="server" class="appearance-none border-2 rounded w-full py-3 px-3 leading-tight border-gray-300 bg-gray-100 focus:outline-none focus:border-indigo-700 focus:bg-white text-gray-700 pr-16 font-mono" placeholder="name@flowbite.com"></asp:TextBox>
                      <br /><br />
                      
                      <!-- Password input -->
                      <asp:Label class="block mb-2 text-sm font-medium text-blue-700 dark:text-blue-500" ID="lblPassword" runat="server" Text="Password"></asp:Label>
                      <div class="relative w-full">
                          <asp:TextBox ID="TextBox1" runat="server" class="hidden js-password-toggle" placeholder="·········"></asp:TextBox>
                          <asp:TextBox ID="txtPass" runat="server" class="appearance-none border-2 rounded w-full py-3 px-3 leading-tight border-gray-300 bg-gray-100 focus:outline-none focus:border-indigo-700 focus:bg-white text-gray-700 pr-16 font-mono js-password" placeholder="**********" autocomplete="off"></asp:TextBox>
                      </div>
                      <asp:SqlDataSource ID="SqlDataSource1" runat="server"></asp:SqlDataSource> <br />
                      <asp:Label ID="lblDisplayError" runat="server"></asp:Label><br /> 
                      
                      <!--Checkbox Remember me--->
                      <div class="flex items-center justify-between">
                          <div class="mb-[0.125rem] block min-h-[1.5rem] pl-[1.5rem]">
                              <asp:CheckBox ID="chkRemember" runat="server" Text=" Remember me" /><br />
                              
                              <!-----Forgot Password----> 
                          </div>
                          <asp:HyperLink class="text-right transition duration-150 ease-in-out 
                              hover:text-blue-600 focus:text-cyan-600 active:text-danger-700" 
                              ID="hplForgotPassword" runat="server" NavigateUrl="~/Customer/ResetPassword.aspx">Forgot password?</asp:HyperLink><br />
                      </div>
            </div>
                  <div class="text-center lg:text-left">
                      <div class="px-20 ml-20"> 
                          <asp:Button class="bg-blue-500 hover:bg-blue-400 text-white font-bold py-2 px-10 border-b-4 border-blue-700 hover:border-blue-500 rounded" ID="btnLogin" runat="server" Text="Log in" PostBackUrl="~/Customer/HomePage.aspx" OnClick="btnLogin_Click"/>
                      </div>
                      <p class="mt-2 mb-0 pt-1 text-sm font-semibold">Don't have an account?
                          <asp:HyperLink class="text-gray-600 transition duration-150 ease-in-out 
                              hover:text-blue-600 focus:text-cyan-600 active:text-danger-700" ID="hplRegister" 
                              runat="server" NavigateUrl="~/Customer/Register.aspx">Register</asp:HyperLink>
                      </p>
                  </div>
              </form>
          </div>
      </div>
  </div>
</section>
</asp:Content>