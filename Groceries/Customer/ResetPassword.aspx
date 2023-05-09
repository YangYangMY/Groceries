<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ResetPassword.aspx.cs" Inherits="Groceries.Customer.ResetPassword" MasterPageFile="~/MasterPage/Customer.Master"%>

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
                          class="block mb-2 text-sm font-medium text-orange-300 dark:text-orange-500" Width="53px"></asp:Label>
                            <label for="" class="text-xs font-semibold px-1">
                            <span class="font-semibold">
                            <asp:RegularExpressionValidator ID="regEmail" runat="server" ErrorMessage="Invalid Email Format." ForeColor="red"  ValidationExpression="\w+([-+.]\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ControlToValidate="txtEmail">*</asp:RegularExpressionValidator>
                      <asp:RequiredFieldValidator ID="reqEmail" runat="server" ErrorMessage="Email is required. " ForeColor="red" ControlToValidate="txtEmail">*</asp:RequiredFieldValidator>
                            </span></label>
                      <asp:TextBox ID="txtEmail" runat="server" class="appearance-none border-2 rounded w-full py-3 px-3 leading-tight border-gray-300 bg-gray-100 focus:outline-none focus:border-indigo-700 focus:bg-white text-gray-700 pr-16 font-mono" placeholder="name@flowbite.com"></asp:TextBox>
                      <br /><br />
                      
                      <!-- Password input -->
                      <asp:Label class="block mb-2 text-sm font-medium text-orange-300 dark:text-orange-500" ID="lblPassword" runat="server" Text="Password" Width="93px"></asp:Label>
                            <label for="" class="text-xs font-semibold px-1">
                            <asp:RegularExpressionValidator ID="regPass0" runat="server" ErrorMessage="Password should be 6 characters" ForeColor="red" ValidationExpression="\w(6)" ControlToValidate="txtPass">*</asp:RegularExpressionValidator>
                            <span class="font-semibold">
                            <asp:RequiredFieldValidator ID="reqPass" runat="server" ControlToValidate="txtPass" ForeColor="red" ErrorMessage="Password is required.">*</asp:RequiredFieldValidator>
                            </span>
                            </label>
                      <div class="relative w-full">
                          <asp:TextBox ID="TextBox1" runat="server" class="hidden js-password-toggle" placeholder="·········"></asp:TextBox>
                          <asp:TextBox ID="TextBox3" runat="server" class="appearance-none border-2 rounded w-full py-3 px-3 leading-tight border-gray-300 bg-gray-100 focus:outline-none focus:border-indigo-700 focus:bg-white text-gray-700 pr-16 font-mono js-password" placeholder="**********" autocomplete="off"></asp:TextBox>
                      </div>
                      <br />

                      <!-- Reset Password -->
                      <asp:Label class="block mb-2 text-sm font-medium text-orange-300 dark:text-orange-500" ID="Label1" runat="server" Text="Reset Password" Width="139px"></asp:Label>
                            <label for="" class="text-xs font-semibold px-1">
                            <asp:RegularExpressionValidator ID="regConPass" runat="server" ErrorMessage="Password should be 6 characters" ForeColor="red" ValidationExpression="\w(6)" ControlToValidate="txtConPassword">*</asp:RegularExpressionValidator>
                            <span class="font-semibold">
                            <asp:RequiredFieldValidator ID="reqConPass" runat="server" ControlToValidate="txtConPass" ForeColor="red" ErrorMessage="Confirmation password is required.">*</asp:RequiredFieldValidator>
                            </span>
                            </label>
                      <div class="relative w-full">
                          <asp:TextBox ID="TextBox2" runat="server" class="hidden js-password-toggle" placeholder="·········"></asp:TextBox>
                          <asp:TextBox ID="TextBox4" runat="server" class="appearance-none border-2 rounded w-full py-3 px-3 leading-tight border-gray-300 bg-gray-100 focus:outline-none focus:border-indigo-700 focus:bg-white text-gray-700 pr-16 font-mono js-password" placeholder="**********" autocomplete="off"></asp:TextBox>
                          <br />
                                <span class="font-semibold">
                                <asp:ValidationSummary ID="ValidationSummary1" runat="server" HeaderText="The following problems have been encountered" Width="1247px" />
                                </span>
                      </div>
                      <br />
                       
                      
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
