<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Checkout.aspx.cs" Inherits="Groceries.Customer.Checkout" MasterPageFile="~/MasterPage/Customer.Master" %>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="py-14 px-4 md:px-6 2xl:px-20 2xl:container xl:mx-auto bg-stone-50">
        <div class="mx-auto" style="max-width: 1000px">
            <div class="border-gray-900/10 rounded-lg bg-white shadow-lg border px-4 py-4 md:py-6 md:p-6 xl:p-8 w-full">
                <div class="flex justify-start item-start space-y-2 flex-col">
                    <h1 class="pb-4 text-2xl lg:text-3xl font-semibold leading-7 lg:leading-9 text-gray-800">Shipping Address</h1>
                </div>

                <asp:SqlDataSource ID="AddressDataSource" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT Address.AddressID, Address.SavedName, Address.SavedContact, Address.Street, Address.State, Address.Postcode, Address.City FROM Address INNER JOIN Customers ON Address.CustomerID = Customers.CustomerID"></asp:SqlDataSource>

                <asp:GridView ID="AddressGridView" runat="server" DataSourceID="AddressDataSource" AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" ForeColor="Black" GridLines="Horizontal" HorizontalAlign="Center" OnSelectedIndexChanged="AddressGridView_SelectedIndexChanged" DataKeyNames="AddressID">
                    <Columns>
                        <asp:BoundField DataField="AddressID" HeaderText="No" InsertVisible="False" ReadOnly="True" SortExpression="AddressID" />
                        <asp:BoundField DataField="SavedName" HeaderText="Name" SortExpression="SavedName"></asp:BoundField>
                        <asp:BoundField DataField="SavedContact" HeaderText="Contact" SortExpression="SavedContact"></asp:BoundField>
                        <asp:BoundField DataField="Street" HeaderText="Street" SortExpression="Street"></asp:BoundField>
                        <asp:BoundField DataField="State" HeaderText="State" SortExpression="State"></asp:BoundField>
                        <asp:BoundField DataField="Postcode" HeaderText="Postcode" SortExpression="Postcode"></asp:BoundField>
                        <asp:BoundField DataField="City" HeaderText="City" SortExpression="City"></asp:BoundField>
                        <asp:CommandField ShowSelectButton="True" ItemStyle-CssClass=" cursor-pointer font-medium text-blue-600 hover:underline mx-5"/>
                    </Columns>
                    <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
                    <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
                    <SelectedRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
                    <SortedAscendingCellStyle BackColor="#F7F7F7" />
                    <SortedAscendingHeaderStyle BackColor="#4B4B4B" />
                    <SortedDescendingCellStyle BackColor="#E5E5E5" />
                    <SortedDescendingHeaderStyle BackColor="#242121" />
                </asp:GridView>
                <asp:Label ID="LabelErrorAddress" runat="server" Text="" ForeColor="#CC0000" CssClass=" pt-5 text-center block mb-2 text-1xl font-medium"></asp:Label>

            </div>

            <!-- Modal toggle -->
            <asp:Button ID="Button1" runat="server" Text="Add New Address" CssClass="block ml-auto mt-6 px-5 py-2.5 bg-[#003049] hover:bg-stone-300 focus:bg-neutral-900 text-white rounded-lg px-3 py-3 font-semibold" OnClick="Button1_Click" />


        </div>

        <div class="grid grid-cols-2 gap-4 mt-10 flex flex-col xl:flex-row jusitfy-center items-stretch w-full">
            <div class="flex flex-col justify-start items-start rounded-lg bg-white shadow-lg border px-4 py-4 md:py-6 md:p-6 xl:p-8 w-full">
                <div class="mx-auto">
                    <div class="flex justify-between item-between space-y-2 flex-col">
                        <h1 class="pb-4 px-4 text-2xl lg:text-3xl font-semibold leading-7 lg:leading-9 text-gray-800">Delivery Method</h1>
                    </div>
                    <asp:Label ID="LabelErrorDeliveryMethod" runat="server" Text="" ForeColor="#CC0000" CssClass="block mb-2 text-sm font-medium"></asp:Label>
                    <asp:RadioButtonList ID="deliveryMethod" runat="server">
                        <asp:ListItem class="inline-flex items-center justify-between w-full px-8 py-4 my-4 mx-6 text-black bg-white border border-black-200 rounded-lg cursor-pointer hover:text-gray-600 hover:bg-gray-100" Selected="True">GoExpress</asp:ListItem>
                        <asp:ListItem class="inline-flex items-center justify-between w-full px-8 py-4 my-4 mx-6 text-black bg-white border border-black-200 rounded-lg cursor-pointer hover:text-gray-600 hover:bg-gray-100">Lalamove</asp:ListItem>
                    </asp:RadioButtonList>
                </div>
            </div>

            <div class="flex flex-col justify-start items-start rounded-lg bg-white shadow-lg border px-4 py-4 md:py-6 md:p-6 xl:p-8 w-full">
                <div class="mx-auto">
                    <div class="flex justify-start item-start space-y-2 flex-col">
                        <h1 class="pb-4 px-4 text-2xl lg:text-3xl font-semibold leading-7 lg:leading-9 text-gray-800">Payment Method</h1>
                    </div>
                    <asp:Label ID="LabelErrorPaymentMethod" runat="server" Text="" ForeColor="#CC0000" CssClass="block mb-2 text-sm font-medium"></asp:Label>
                    <asp:RadioButtonList ID="paymentMethod" runat="server">
                        <asp:ListItem class="inline-flex items-center justify-between w-full px-8 py-4 my-4 mx-4 text-black bg-white border border-black-200 rounded-lg cursor-pointer hover:text-gray-600 hover:bg-gray-100" Selected="True">Paypal</asp:ListItem>
                    </asp:RadioButtonList>
                </div>
                <asp:Button ID="btnProceedPayment" runat="server" Text="Proceed" class="mt-6 block ml-auto px-8 py-2.5 bg-[#003049] hover:bg-stone-300 focus:bg-neutral-900 text-white rounded-lg px-3 py-3 font-semibold" OnClick="btnProceedPayment_Click" />
            </div>
        </div>
    </div>

    <!--Modal of Added Product Successful-->
    <asp:Panel ID="PanelAddAddress" runat="server" Visible="False">
        <div class="bg-black bg-opacity-50 md:bg-opacity-50 fixed top-0 left-0 right-0 z-50  p-4 overflow-x-hidden overflow-y-auto md:inset-0 h-[calc(100%-1rem)] md:h-full">
            <div class="relative w-full h-full max-w-md md:h-auto mx-auto my-20">
                <!--Pop Out-->
                <div class="relative bg-white rounded-lg shadow ">
                    <div class="relative bg-white rounded-lg shadow ">
                        <asp:Button ID="btnCloseModal" runat="server" CssClass="absolute top-3 right-2.5 text-gray-400 bg-transparent hover:bg-gray-200 hover:text-gray-900 rounded-lg text-sm p-1.5 ml-auto inline-flex items-center" OnClick="btnCloseModal_Click" Text='X' />
                        <div class="px-6 py-6 lg:px-8">
                            <h2 class="text-xl font-semibold leading-7 text-gray-900">Add Shipping address</h2>
                            <div class="mt-4 grid grid-cols-1 gap-x-6 gap-y-8 sm:grid-cols-6">
                                <div class="sm:col-span-3">
                                    <label for="name" class="block text-sm font-medium leading-6 text-gray-900">Your Name</label>
                                    <div class="mt-2">
                                        <asp:TextBox ID="txtName" runat="server" class="block w-full rounded-md border-0 py-1.5 text-gray-900 shadow-sm ring-1 ring-inset ring-gray-300 placeholder:text-gray-400 focus:ring-2 focus:ring-inset focus:ring-indigo-600 sm:text-sm sm:leading-6" Text="" MaxLength="100"></asp:TextBox>
                                        <asp:Label ID="LabelErrorName" runat="server" Text="" ForeColor="#CC0000" CssClass="block mb-2 text-sm font-medium"></asp:Label>
                                    </div>
                                </div>
                                <div class="sm:col-span-3">
                                    <label for="contact" class="block text-sm font-medium leading-6 text-gray-900">Contact Number</label>
                                    <div class="mt-2">
                                        <asp:TextBox ID="txtContact" runat="server" class="block w-full rounded-md border-0 py-1.5 text-gray-900 shadow-sm ring-1 ring-inset ring-gray-300 placeholder:text-gray-400 focus:ring-2 focus:ring-inset focus:ring-indigo-600 sm:text-sm sm:leading-6" Text="" MaxLength="12"></asp:TextBox>
                                        <asp:Label ID="LabelErrorContact" runat="server" Text="" ForeColor="#CC0000" CssClass="block mb-2 text-sm font-medium"></asp:Label>
                                    </div>
                                </div>
                                <div class="sm:col-span-3">
                                    <label for="street" class="block text-sm font-medium leading-6 text-gray-900">Street Address</label>
                                    <div class="mt-2">
                                        <asp:TextBox ID="txtStreet" runat="server" class="block w-full rounded-md border-0 py-1.5 text-gray-900 shadow-sm ring-1 ring-inset ring-gray-300 placeholder:text-gray-400 focus:ring-2 focus:ring-inset focus:ring-indigo-600 sm:text-sm sm:leading-6" Text="" MaxLength="100"></asp:TextBox>
                                        <asp:Label ID="LabelErrorStreet" runat="server" Text="" ForeColor="#CC0000" CssClass="block mb-2 text-sm font-medium"></asp:Label>
                                    </div>
                                </div>
                                <div class="sm:col-span-3">
                                    <label for="state" class="block text-sm font-medium leading-6 text-gray-900">State</label>
                                    <div class="mt-2">
                                        <asp:TextBox ID="txtState" runat="server" class="block w-full rounded-md border-0 py-1.5 text-gray-900 shadow-sm ring-1 ring-inset ring-gray-300 placeholder:text-gray-400 focus:ring-2 focus:ring-inset focus:ring-indigo-600 sm:text-sm sm:leading-6" Text="" MaxLength="50"></asp:TextBox>
                                        <asp:Label ID="LabelErrorState" runat="server" Text="" ForeColor="#CC0000" CssClass="block mb-2 text-sm font-medium"></asp:Label>
                                    </div>
                                </div>
                                <div class="sm:col-span-3">
                                    <label for="postalcode" class="block text-sm font-medium leading-6 text-gray-900">Postal Code</label>
                                    <div class="mt-2">
                                        <asp:TextBox ID="txtPostalCode" runat="server" class="block w-full rounded-md border-0 py-1.5 text-gray-900 shadow-sm ring-1 ring-inset ring-gray-300 placeholder:text-gray-400 focus:ring-2 focus:ring-inset focus:ring-indigo-600 sm:text-sm sm:leading-6" Text="" MaxLength="5"></asp:TextBox>
                                        <asp:Label ID="LabelErrorCode" runat="server" Text="" ForeColor="#CC0000" CssClass="block mb-2 text-sm font-medium"></asp:Label>
                                    </div>
                                </div>
                                <div class="sm:col-span-3">
                                    <label for="city" class="block text-sm font-medium leading-6 text-gray-900">City</label>
                                    <div class="mt-2">
                                        <asp:TextBox ID="txtCity" runat="server" class="block w-full rounded-md border-0 py-1.5 text-gray-900 shadow-sm ring-1 ring-inset ring-gray-300 placeholder:text-gray-400 focus:ring-2 focus:ring-inset focus:ring-indigo-600 sm:text-sm sm:leading-6" Text="" MaxLength="50"></asp:TextBox>
                                        <asp:Label ID="LabelErrorCity" runat="server" Text="" ForeColor="#CC0000" CssClass="block mb-2 text-sm font-medium"></asp:Label>
                                    </div>
                                </div>
                            </div>
                            <div>
                                <asp:Button ID="btnCheckout" runat="server" Text="Save" class="mt-10 mb-2 block ml-auto px-8 py-2.5 bg-[#003049] hover:bg-stone-300 focus:bg-neutral-900 text-white rounded-lg px-3 py-3 font-semibold" PostBackUrl="~/Customer/Checkout.aspx" OnClick="btnCheckout_Click" />
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </asp:Panel>


</asp:Content>
