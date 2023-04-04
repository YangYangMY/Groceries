<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="Groceries.Customer.Register" MasterPageFile="~/MasterPage/Customer.Master"%>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <!--Content-->

    <section class="bg-cover bg-center bg-[url('/images/registerbg.jpg')] scroll-smooth md:scroll-auto">
        <div class="h-screen flex justify-center items-center ">  
            <!--class="flex flex-col items-center justify-center px-6 py-8 mx-auto md:h-screen lg:py-0"-->
            <!----> 
            <div class="rounded-lg shadow dark:border md:mt-100 sm:max-w-md xl:p-0 dark:bg-white-800 dark:border-white-700">
                <div class="p-6 space-y-4 md:space-y-6 sm:p-8">
                    <h1 class="text-xl font-bold leading-tight tracking-tight text-gray-900 md:text-2xl dark:text-white">Register Account</h1>
                     
                    <asp:FormView class="space-y-4 md:space-y-6" action="#" ID="fvLogin" runat="server" DefaultMode="Insert" InsertMethod="fvLogin_InsertItem" ItemType="GroceryModel.GroceryModel.Customers" DataKeyName="CustomerID" Istyle="margin-right: 47px" OnPageIndexChanging="fvLogin_PageIndexChanging">
                         <InsertItemTemplate>
                             <asp:Label ID="lblName" runat="server" Text="Name" class="block mb-2 text-sm font-medium text-gray-900 dark:text-white"></asp:Label>
                             <br />
                             <asp:TextBox ID="txtName" runat="server" class="bg-gray-50 border border-gray-300 text-gray-900 sm:text-sm rounded-lg focus:ring-primary-600 focus:border-primary-600 block w-full p-2.5 dark:bg-gray-700 dark:border-gray-600 dark:placeholder-gray-400 dark:text-white dark:focus:ring-blue-500 dark:focus:border-blue-500" placeholder="name@company.com" required=""></asp:TextBox>
                             <br />
                             <asp:Label ID="lblBirthday" runat="server" class="block mb-2 text-sm font-medium text-gray-900 dark:text-white" Text="Birthday"></asp:Label>
                             <asp:TextBox ID="txtBirthday" runat="server" class="bg-gray-50 border border-gray-300 text-gray-900 sm:text-sm rounded-lg focus:ring-primary-600 focus:border-primary-600 block w-full p-2.5 dark:bg-gray-700 dark:border-gray-600 dark:placeholder-gray-400 dark:text-white dark:focus:ring-blue-500 dark:focus:border-blue-500" placeholder="name@company.com" required=""></asp:TextBox>
                             <br />
                             <asp:Label ID="lblPhone" runat="server" Text="Phone number" class="block mb-2 text-sm font-medium text-gray-900 dark:text-white"></asp:Label>
                             <br />
                             <asp:TextBox ID="txtPhoneNum" runat="server" class="bg-gray-50 border border-gray-300 text-gray-900 sm:text-sm rounded-lg focus:ring-primary-600 focus:border-primary-600 block w-full p-2.5 dark:bg-gray-700 dark:border-gray-600 dark:placeholder-gray-400 dark:text-white dark:focus:ring-blue-500 dark:focus:border-blue-500" placeholder="name@company.com" required=""></asp:TextBox>
                             <br />
                             <br />
                             <asp:Label ID="lblEmail" runat="server" Text="Email address" class="block mb-2 text-sm font-medium text-gray-900 dark:text-white"></asp:Label>
                             <br />
                             <asp:TextBox ID="txtEmail" runat="server" class="bg-gray-50 border border-gray-300 text-gray-900 sm:text-sm rounded-lg focus:ring-primary-600 focus:border-primary-600 block w-full p-2.5 dark:bg-gray-700 dark:border-gray-600 dark:placeholder-gray-400 dark:text-white dark:focus:ring-blue-500 dark:focus:border-blue-500" placeholder="name@company.com" required=""></asp:TextBox>
                             <br />
                             <br />
                             <asp:Label ID="lblPassword" runat="server" Text="Password" class="block mb-2 text-sm font-medium text-gray-900 dark:text-white"></asp:Label>
                             <br />
                             <asp:TextBox ID="txtPassword" runat="server"
                                 placeholder="••••••••" class="bg-gray-50 border border-gray-300 text-gray-900 sm:text-sm rounded-lg 
                                 focus:ring-primary-600 focus:border-primary-600 block w-full p-2.5 dark:bg-gray-700 dark:border-gray-600 
                                 dark:placeholder-gray-400 dark:text-white dark:focus:ring-blue-500 dark:focus:border-blue-500" required=""></asp:TextBox>
                             <br />
                             <br />
                             <asp:Label ID="lblConfirm" runat="server" Text="Confirm password" class="block mb-2 text-sm font-medium text-gray-900 dark:text-white"></asp:Label>
                             <br />
                             <asp:TextBox ID="txtConfirm" runat="server" placeholder="••••••••" 
                                 class="bg-gray-50 border border-gray-300 text-gray-900 sm:text-sm rounded-lg focus:ring-primary-600 
                                 focus:border-primary-600 block w-full p-2.5 dark:bg-gray-700 
                                 dark:border-gray-600 dark:placeholder-gray-400 dark:text-white 
                                 dark:focus:ring-blue-500 dark:focus:border-blue-500" required="" OnTextChanged="txtConfirm_TextChanged"></asp:TextBox>
                             <br />
                             <table class="w-full p-0.5">
                                 <tr>
                                     <td style="width: 370px">
                                         <asp:Label ID="lblCountry" runat="server" class="block mb-2 text-sm font-medium text-gray-900 dark:text-white" Text="Country">
                                         </asp:Label>
                                         <br />
                                         <asp:TextBox ID="txtCountry" runat="server"></asp:TextBox>
                                     </td>
                                     <td><asp:Label ID="lblCity" runat="server" Text="City"
                                         class="block mb-2 text-sm font-medium text-gray-900 dark:text-white">
                                               </asp:Label>
                                         <br />
                                         <asp:TextBox ID="txtCity" runat="server"></asp:TextBox>
                                     </td>
                                 </tr>
                                 <tr>
                                     <td style="width: 370px">
                                         <asp:Label ID="lblRegion" runat="server" Text="Region" class="block mb-2 text-sm font-medium text-gray-900 dark:text-white">
                                         </asp:Label>
                                         <br />
                                         <asp:TextBox ID="txtRegion" runat="server"></asp:TextBox>
                                     </td>
                                     <td>
                                         <asp:Label ID="lblPostalCode" runat="server" Text="Postal code" class="block mb-2 text-sm font-medium text-gray-900 dark:text-white" Width="327px"></asp:Label>
                                         <br />
                                         <br />
                                         <asp:TextBox ID="txtPostalCode" runat="server"></asp:TextBox>
                                     </td>
                                 </tr>
                                 <tr>
                                     <td colspan="2">
                                         <br />
                                         <asp:Label ID="lblAddress" runat="server" class="block mb-2 text-sm font-medium text-gray-900 dark:text-white" Text="Address">
                                         </asp:Label>
                                         <asp:TextBox ID="txtAddress" runat="server"></asp:TextBox>
                                     </td>
                                 </tr>
                             </table>
                             <br />
                             <asp:Label ID="lblDisplayError" runat="server" ForeColor="Red" class="block mb-2 text-sm font-medium text-gray-900 dark:text-white">
                             </asp:Label>
                             <br />
                             <br />
                             <asp:RadioButton ID="rbAcceptCondition" runat="server" class="font-light text-gray-500 dark:text-gray-300" Text=" I accept the Terms and Conditions  " />
                             <br />
                             <br />
                             <asp:Button ID="btnCreateAccount" runat="server" Text="Create an account" 
                                 class="w-full text-white bg-primary-600 hover:bg-primary-700 focus:ring-4 focus:outline-none 
                                 focus:ring-primary-300 font-medium rounded-lg text-sm px-5 py-2.5 
                                 text-center dark:bg-primary-600 dark:hover:bg-primary-700 dark:focus:ring-primary-800"  />
                             <br />
                             <p class="text-sm font-light text-gray-500 dark:text-gray-400">Already have account? 
                             <asp:HyperLink ID="hplLogin" runat="server" class="font-medium text-primary-600 hover:underline dark:text-primary-500" 
                                 NavigateUrl="~/Customer/Login.aspx">Login here</asp:HyperLink>
                             </p>
                         </InsertItemTemplate>
                    </asp:FormView>
                    
   <!-------------------------------------------------------------------------------------------------------                
                    <form class="space-y-4 md:space-y-6" action="#">
                        <div>
                            <label for="email" class="block mb-2 text-sm font-medium text-gray-900 dark:text-white">
                            <br />
                            <br />
                           
                            <br />
                            Name 
                            <br />
                            <br />
                            Your email</label>
                            <input type="email" name="email" id="email" class="bg-gray-50 border border-gray-300 text-gray-900 sm:text-sm rounded-lg focus:ring-primary-600 focus:border-primary-600 block w-full p-2.5 dark:bg-gray-700 dark:border-gray-600 dark:placeholder-gray-400 dark:text-white dark:focus:ring-blue-500 dark:focus:border-blue-500" placeholder="name@company.com" required="">
                        </div>
                        <!--2. Password
                        <div>
                            <label for="password" class="block mb-2 text-sm font-medium text-gray-900 dark:text-white">
                            <br />
                            <br />
                            Password</label>
                            <input type="password" name="password" id="password" placeholder="••••••••" class="bg-gray-50 border border-gray-300 text-gray-900 sm:text-sm rounded-lg focus:ring-primary-600 focus:border-primary-600 block w-full p-2.5 dark:bg-gray-700 dark:border-gray-600 dark:placeholder-gray-400 dark:text-white dark:focus:ring-blue-500 dark:focus:border-blue-500" required="">
                        </div>
                        <!--3. Confirm Password
                        <div>
                            <label for="confirm-password" class="block mb-2 text-sm font-medium text-gray-900 dark:text-white">Confirm password</label>
                            <input type="confirm-password" name="confirm-password" id="confirm-password" placeholder="••••••••" class="bg-gray-50 border border-gray-300 text-gray-900 sm:text-sm rounded-lg focus:ring-primary-600 focus:border-primary-600 block w-full p-2.5 dark:bg-gray-700 dark:border-gray-600 dark:placeholder-gray-400 dark:text-white dark:focus:ring-blue-500 dark:focus:border-blue-500" required=""><br />
                            <asp:Label ID="lblUnmatchMsg" runat="server"></asp:Label>
                        </div>


                        <div class="flex items-start">
                            <div class="flex items-center h-5">
                                <input id="terms" aria-describedby="terms" type="checkbox" class="w-4 h-4 border border-gray-300 rounded bg-gray-50 focus:ring-3 focus:ring-primary-300 dark:bg-gray-700 dark:border-gray-600 dark:focus:ring-primary-600 dark:ring-offset-gray-800" required="">
                            </div>
                            <div class="ml-3 text-sm">
                                <label for="terms" class="font-light text-gray-500 dark:text-gray-300">I accept the <a class="font-medium text-primary-600 hover:underline dark:text-primary-500" href="#">Terms and Conditions</a></label>
                            </div>
                        </div>
                        <br />
                        <!--<button type="submit" class="w-full text-white bg-primary-600 hover:bg-primary-700 focus:ring-4 focus:outline-none focus:ring-primary-300 font-medium rounded-lg text-sm px-5 py-2.5 text-center dark:bg-primary-600 dark:hover:bg-primary-700 dark:focus:ring-primary-800">Create an account</button>
                        <asp:Button 
                            type="submit" 
                            
                            ID="btnCreateAccount" 
                            class="w-full text-white bg-primary-600 hover:bg-primary-700 focus:ring-4 focus:outline-none 
                            focus:ring-primary-300 font-medium rounded-lg text-sm px-5 py-2.5 
                            text-center dark:bg-primary-600 dark:hover:bg-primary-700 dark:focus:ring-primary-800" 
                            runat="server" Text="Create" />
                        <p class="text-sm font-light text-gray-500 dark:text-gray-400">
                      Already have an account? <a href="#" class="font-medium text-primary-600 hover:underline dark:text-primary-500">Login here</a>
                        </p>
                    </form>-->
                </div>
            </div>
        </div>
    </section>
</asp:Content>
