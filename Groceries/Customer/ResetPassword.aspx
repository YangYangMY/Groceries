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
                            <asp:RegularExpressionValidator ID="regPass" runat="server" ErrorMessage="Minimum 8 characters atleast 1 Alphabet, 1 Number and 1 Special Character" ForeColor="red" ValidationExpression="^(?=.*[A-Za-z])(?=.*\d)(?=.*[$@$!%*#?&amp;])[A-Za-z\d$@$!%*#?&amp;]{8,}$" ControlToValidate="txtPass">*</asp:RegularExpressionValidator>
                            <span class="font-semibold">
                            <asp:RequiredFieldValidator ID="reqPass" runat="server" ControlToValidate="txtPass" ForeColor="red" ErrorMessage="Password is required.">*</asp:RequiredFieldValidator>
                            </span>
                            </label>
                      <div class="relative w-full">
                          <asp:TextBox ID="txtPass" runat="server" class="appearance-none border-2 rounded w-full py-3 px-3 leading-tight border-gray-300 bg-gray-100 focus:outline-none focus:border-indigo-700 focus:bg-white text-gray-700 pr-16 font-mono js-password" placeholder="**********" TextMode="Password" MaxLength="30"></asp:TextBox>
                      </div>
                      <br />

                      <!-- Reset Password -->
                      <asp:Label class="block mb-2 text-sm font-medium text-orange-300 dark:text-orange-500" ID="Label1" runat="server" Text="Reset Password" Width="139px"></asp:Label>
                            <label for="" class="text-xs font-semibold px-1">
                            <asp:RegularExpressionValidator ID="regConPass" runat="server" ErrorMessage="Minimum 8 characters atleast 1 Alphabet, 1 Number and 1 Special Character" ForeColor="red" ValidationExpression="^(?=.*[A-Za-z])(?=.*\d)(?=.*[$@$!%*#?&amp;])[A-Za-z\d$@$!%*#?&amp;]{8,}$" ControlToValidate="txtConPass">*</asp:RegularExpressionValidator>
                            <span class="font-semibold">
                            <asp:RequiredFieldValidator ID="reqConPass" runat="server" ControlToValidate="txtConPass" ForeColor="red" ErrorMessage="Confirmation password is required.">*</asp:RequiredFieldValidator>
                            <asp:CompareValidator ID="cmpPass" runat="server" ErrorMessage="Passwords do not match" ForeColor="red" Operator="DataTypeCheck" ClientIDMode="AutoID" ControlToCompare="txtPass" ControlToValidate="txtConPass">*</asp:CompareValidator>
                            </span>
                            </label>
                      <div class="relative w-full">
                          <asp:TextBox ID="txtConPass" runat="server" class="appearance-none border-2 rounded w-full py-3 px-3 leading-tight border-gray-300 bg-gray-100 focus:outline-none focus:border-indigo-700 focus:bg-white text-gray-700 pr-16 font-mono js-password" placeholder="**********" TextMode="Password" MaxLength="30"></asp:TextBox>
                          <br />
                          <asp:Label ID="lblError" runat="server" ForeColor="red"></asp:Label>
                                <span class="font-semibold">
                                <asp:ValidationSummary ID="ValidationSummary1" runat="server" HeaderText="The following problems have been encountered" Width="1247px" />
                                </span>
                      </div>
                      <br />
                       
                      
                  <div class="text-center lg:text-left">
                      <div class="px-20 ml-20"> 
                          <asp:Button ID="btnRst" runat="server" class="bg-yellow-500 hover:bg-yellow-400 text-white font-bold py-2 px-10 border-b-4 border-orange-700 hover:border-yellow-500 rounded" Text="Reset" OnClick="btnRst_Click" />
                      </div>
                     
                  </div>
              </form>
          </div>
      </div>
  </div>
</section>
    <asp:Panel ID="PanelSuccessResetPassword" runat="server" Visible="False">
        <div class="bg-black bg-opacity-50 md:bg-opacity-50 fixed top-0 left-0 right-0 z-50  p-4 overflow-x-hidden overflow-y-auto md:inset-0 h-[calc(100%-1rem)] md:h-full">
            <div class="relative w-full h-full max-w-md md:h-auto mx-auto my-20">
                <!--Pop Out-->
                <div class="relative bg-white rounded-lg shadow ">
                    <div class="p-6 text-center ">
                        <svg xmlns="http://www.w3.org/2000/svg" class="text-[#059669] mx-auto h-11 rounded-full bg-[#D1FAE5] w-11" fill="none" viewBox="0 0 24 24" stroke="currentColor">
                            <path stroke-linecap="round" stroke-linejoin="round" stroke-width="1" d="M5 13l4 4L19 7" />
                        </svg>
                        <span class="text-2xl font-medium">Account Password Updated Successfully</span>
                        <p class="text-center">Press continue to view Profile.</p><br />
                        <a href="Login.aspx" class=" my-3 cursor-pointer text-white bg-[#FB923C] hover:bg-[#FDBA74] focus:outline-none  font-medium rounded-full text-sm px-5 py-2.5 text-center mr-2 mb-2 ">Continue</a>
                    </div>
                </div>
            </div>
        </div>
    </asp:Panel>
</asp:Content>
