<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Groceries.Login" MasterPageFile="~/MasterPage/Customer.Master"%>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <!--Content-->
    <div>
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
                      <asp:RequiredFieldValidator ID="reqEmail" runat="server" ErrorMessage="Email is required. " ForeColor="red" ControlToValidate="txtEmail">*</asp:RequiredFieldValidator>
                            <label for="" class="text-xs font-semibold px-1">
                            <span class="font-semibold">
                            <asp:RegularExpressionValidator ID="regEmail" runat="server" ErrorMessage="Invalid Email Format." ForeColor="red"  ValidationExpression="\w+([-+.]\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ControlToValidate="txtEmail">*</asp:RegularExpressionValidator>
                            </span></label>
                      <br />
                      <asp:TextBox ID="txtEmail" runat="server" class="appearance-none border-2 rounded w-full py-3 px-3 leading-tight border-gray-300 bg-gray-100 focus:outline-none focus:border-indigo-700 focus:bg-white text-gray-700 pr-16 font-mono" placeholder="name@flowbite.com"></asp:TextBox>
                      <br /><br />
                      
                      <!-- Password input -->
                      <asp:Label class="block mb-2 text-sm font-medium text-blue-700 dark:text-blue-500" ID="lblPassword" runat="server" Text="Password"></asp:Label>
                      <asp:RequiredFieldValidator ID="reqPassword" runat="server" ErrorMessage="Password is required. " ForeColor="red" ControlToValidate="txtPass">*</asp:RequiredFieldValidator>
                            <label for="" class="text-xs font-semibold px-1">
                            <asp:RegularExpressionValidator ID="regPass" runat="server" ErrorMessage="Password should be 6 characters" ForeColor="red" ValidationExpression="\w(6)" ControlToValidate="txtPass">*</asp:RegularExpressionValidator>
                            </label>
                      <div class="relative w-full">
                          <asp:TextBox ID="txtPass" runat="server" class="appearance-none border-2 rounded w-full py-3 px-3 leading-tight border-gray-300 bg-gray-100 focus:outline-none focus:border-indigo-700 focus:bg-white text-gray-700 pr-16 font-mono js-password" placeholder="**********" TextMode="Password" MaxLength="30"></asp:TextBox>
                      </div>
                      <asp:Label ID="lblDisplayError" runat="server" ForeColor="red"></asp:Label>
                      <br />
                      <asp:ValidationSummary ID="ValidationSummary1" runat="server" HeaderText="The following problems have been encountered" Width="1247px" />
                      <br /> <br /> 
                      
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
                          <asp:Button class="bg-blue-500 hover:bg-blue-400 text-white font-bold py-2 px-10 border-b-4 border-blue-700 hover:border-blue-500 rounded" ID="btnLogin" runat="server" Text="Log in" OnClick="btnLogin_Click"/>
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
</div>
     <!--Modal of Log in new Customer Account Successful-->
    <asp:Panel ID="PanelCustLoginSuccess" runat="server" Visible="False">
        <div class="bg-black bg-opacity-50 md:bg-opacity-50 fixed top-0 left-0 right-0 z-50  p-4 overflow-x-hidden overflow-y-auto md:inset-0 h-[calc(100%-1rem)] md:h-full">
            <div class="relative w-full h-full max-w-md md:h-auto mx-auto my-20">
                <!--Pop Out-->
                <div class="relative bg-white rounded-lg shadow ">
                    <div class="p-6 text-center ">
                        <svg xmlns="http://www.w3.org/2000/svg" class="text-[#059669] mx-auto h-11 rounded-full bg-[#D1FAE5] w-11" fill="none" viewBox="0 0 24 24" stroke="currentColor">
                            <path stroke-linecap="round" stroke-linejoin="round" stroke-width="1" d="M5 13l4 4L19 7" />
                        </svg>
                        <span class="text-2xl font-medium">Account Login Successfully</span>
                        <p class="text-center">Press continue to go to Home page.</p>
                        <asp:Button ID="Button1" runat="server" Text="Continue" CssClass=" my-3 cursor-pointer text-white bg-[#FB923C] hover:bg-[#FDBA74] focus:outline-none  font-medium rounded-full text-sm px-5 py-2.5 text-center mr-2 mb-2 " PostBackUrl="~/Customer/Login.aspx" />
                    </div>
                </div>
            </div>
        </div>
    </asp:Panel>
        <br />
     <asp:Panel ID="PanelAdminLoginSuccess" runat="server" Visible="False">
        <div class="bg-black bg-opacity-50 md:bg-opacity-50 fixed top-0 left-0 right-0 z-50  p-4 overflow-x-hidden overflow-y-auto md:inset-0 h-[calc(100%-1rem)] md:h-full">
            <div class="relative w-full h-full max-w-md md:h-auto mx-auto my-20">
                <!--Pop Out-->
                <div class="relative bg-white rounded-lg shadow ">
                    <div class="p-6 text-center ">
                        <svg xmlns="http://www.w3.org/2000/svg" class="text-[#059669] mx-auto h-11 rounded-full bg-[#D1FAE5] w-11" fill="none" viewBox="0 0 24 24" stroke="currentColor">
                            <path stroke-linecap="round" stroke-linejoin="round" stroke-width="1" d="M5 13l4 4L19 7" />
                        </svg>
                        <span class="text-2xl font-medium">Account Login Successfully</span>
                        <p class="text-center">Press continue to go to Admin Dashboard.</p>
                        <asp:Button ID="Button2" runat="server" Text="Continue" CssClass=" my-3 cursor-pointer text-white bg-[#FB923C] hover:bg-[#FDBA74] focus:outline-none  font-medium rounded-full text-sm px-5 py-2.5 text-center mr-2 mb-2 " PostBackUrl="~/Admin/Dashboard.aspx" />
                    </div>
                </div>
            </div>
        </div>
    </asp:Panel>
</asp:Content>