<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="Groceries.Contact" MasterPageFile="~/MasterPage/Customer.Master" %>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h2 class=" mt-5 text-5xl font-bold text-[#003049] text-center mb-6 mt-10">Contact Us</h2>
    <p class="text-center my-5 text-gray-500">How can we help you?</p>

       <asp:Panel ID="PanelContactUs" runat="server" Visible="True" CssClass="bg-gray-50 p-20">
        <!--Start of Contact Us-->
        <div class="flex flex-col items-center justify-center px-6 py-8 mx-auto md:h-screen lg:py-0">
            <div class="w-full rounded-lg shadow  md:mt-0 sm:max-w-md xl:p-0 ">
                <div class="p-6 space-y-4 md:space-y-6 sm:p-8">
                    <h1 class="text-0.5xl font-normal leading-tight tracking-tight text-gray-900 ">
                        Have a issue? Write to us here, and we will respond as quickly as possible.
                    </h1>
                    <div class="space-y-4 md:space-y-6" action="#">
                        <div>
                            <label for="TextBoxUserName" class="block mb-2 text-sm font-medium text-gray-900 ">
                                Goceries Username
                            </label>
                            <asp:TextBox ID="TextBoxUserName" placeholder="John Smith" runat="server" required="" CssClass="bg-gray-50 border border-gray-300 text-gray-900 sm:text-sm rounded-lg focus:ring-primary-600 focus:border-primary-600 block w-full p-2.5" MaxLength="40"></asp:TextBox>
                            <asp:Label ID="LabelErrorUserName" runat="server" Text="" ForeColor="#CC0000" CssClass="block mb-2 text-sm font-medium"></asp:Label>
                        </div>
                        <div>
                            <label for="TextBoxEmail" class="block mb-2 text-sm font-medium text-gray-900 ">
                                Email Address
                            </label>
                            <asp:TextBox ID="TextBoxEmail" placeholder="user@sample.com" runat="server" required="" CssClass="bg-gray-50 border border-gray-300 text-gray-900 sm:text-sm rounded-lg focus:ring-primary-600 focus:border-primary-600 block w-full p-2.5"></asp:TextBox>
                            <asp:Label ID="LabelErrorEmail" runat="server" Text="" ForeColor="#CC0000" CssClass="block mb-2 text-sm font-medium"></asp:Label>                        
                        </div>
                        <div>
                            <label for="TextBoxDescriptions" class="block mb-2 text-sm font-medium text-gray-900 ">
                                Description
                            </label>
                            <asp:TextBox ID="TextBoxDescriptions" runat="server" placeholder="Descriptions" Rows="4" required="" TextMode="MultiLine" CssClass=" border-1 border-solid border-gray-700 peer block min-h-[auto] w-full rounded  bg-transparent py-[0.32rem] px-3 leading-[1.6] outline-none transition-all duration-200 ease-linear" MaxLength="50"></asp:TextBox>
                            <asp:Label ID="LabelErrorDescription" runat="server" Text="" ForeColor="#CC0000" CssClass="block mb-2 text-sm font-medium"></asp:Label>                                                
                        </div>
                            <label for="FileUploadProductImage" class="block mb-2 text-sm font-medium text-gray-900 ">
                                File Upload
                            </label>
                            <asp:FileUpload ID="FileUploadProductImage" runat="server" CssClass="relative m-0 block w-full min-w-0 flex-auto rounded border border-solid border-neutral-300 bg-clip-padding py-[0.32rem] px-3 text-base font-normal text-neutral-700 transition duration-300 ease-in-out file:-mx-3 file:-my-[0.32rem] file:overflow-hidden file:rounded-none file:border-0 file:border-solid file:border-inherit file:bg-neutral-100 file:px-3 file:py-[0.32rem] file:text-neutral-700 file:transition file:duration-150 file:ease-in-out file:[margin-inline-end:0.75rem] file:[border-inline-end-width:1px] hover:file:bg-neutral-200 focus:border-primary focus:text-neutral-700 focus:shadow-[0_0_0_1px] focus:shadow-primary focus:outline-none" />
                            <asp:Label ID="LabelErrorFileUpload" runat="server" Text="" ForeColor="#CC0000" CssClass="block mb-2 text-sm font-medium"></asp:Label>                                                
                    </div>
                        <div class="flex justify-center space-x-2 p-4">
                            <asp:Button ID="ButtonSubmit" runat="server" Text="Submit" CssClass="w-full text-white bg-[#FB923C] hover:bg-[#FDBA74] focus:ring-4 focus:outline-none focus:ring-primary-300 font-medium rounded-lg text-sm px-5 py-2.5 text-center" OnClick="ButtonSubmit_Click" />
                            <asp:Button ID="ButtonReset" type="reset" runat="server" Text="Reset" CssClass="w-full text-white bg-[#FDBA74] hover:bg-[#FB923C] focus:ring-4 focus:outline-none focus:ring-primary-300 font-medium rounded-lg text-sm px-5 py-2.5 text-center" />
                        </div>
                    </div>
                </div>
            </div>
    </asp:Panel>

        <!--Modal of Sent Inquiry Success-->
    <asp:Panel ID="PanelInquirySuccess" runat="server" Visible="False">
        <div class="bg-black bg-opacity-50 md:bg-opacity-50 fixed top-0 left-0 right-0 z-50  p-4 overflow-x-hidden overflow-y-auto md:inset-0 h-[calc(100%-1rem)] md:h-full">
            <div class="relative w-full h-full max-w-md md:h-auto mx-auto my-20">
                <!--Pop Out-->
                <div class="relative bg-white rounded-lg shadow ">
                    <div class="p-6 text-center ">
                        <svg xmlns="http://www.w3.org/2000/svg" class="text-[#059669] mx-auto h-11 rounded-full bg-[#D1FAE5] w-11" fill="none" viewBox="0 0 24 24" stroke="currentColor">
                            <path stroke-linecap="round" stroke-linejoin="round" stroke-width="1" d="M5 13l4 4L19 7" />
                        </svg>
                        <span class="text-2xl font-medium">Inquiry Sent Successful</span>
                        <p class="text-center">Press continue to go to Homepage.</p>
                        <asp:Button ID="Button1" runat="server" Text="Continue" CssClass=" my-3 cursor-pointer text-white bg-[#FB923C] hover:bg-[#FDBA74] focus:outline-none  font-medium rounded-full text-sm px-5 py-2.5 text-center mr-2 mb-2 " PostBackUrl="HomePage.aspx" />
                    </div>
                </div>
            </div>
        </div>
    </asp:Panel>

</asp:Content>
