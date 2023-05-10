<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ShoppingCart.aspx.cs" Inherits="Groceries.Customer.ShoppingCart" MasterPageFile="~/MasterPage/Customer.Master" %>



<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div>
        <div class="py-14 px-4 md:px-6 2xl:px-20 2xl:container 2xl:mx-auto bg-stone-50">
            <div class="flex justify-between w-full">
                <h1 class="text-3xl lg:text-4xl font-semibold leading-7 lg:leading-9 text-gray-800">Shopping Cart</h1>
                <asp:HyperLink ID="hyperCS" runat="server" NavigateUrl="~/Customer/Products.aspx" Font-Underline="True" ForeColor="Black">Continue Shopping</asp:HyperLink>
            </div>


            <div class="grid grid-cols-4 gap-4 mt-10 flex flex-col xl:flex-row jusitfy-center items-stretch w-full">

                <div class="col-span-3 flex flex-col justify-start items-start rounded-lg bg-white shadow-lg border px-4 py-4 md:py-6 md:p-6 xl:p-8 w-full">
                    <asp:Label ID="lblEmptyCart" runat="server"></asp:Label>
                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" Height="200px" Width="941px" OnRowDeleting="GridView1_RowDeleting" AllowCustomPaging="True" ShowFooter="True" OnRowCommand="GridView1_RowCommand" CssClass="gridview">
                        <Columns>
                            <asp:BoundField DataField="no" HeaderText="No">
                                <HeaderStyle HorizontalAlign="Center" />
                                <ItemStyle HorizontalAlign="Center" />
                            </asp:BoundField>
                            <asp:BoundField DataField="ProductID" HeaderText="ProductID">
                                <HeaderStyle HorizontalAlign="Center" />
                                <ItemStyle HorizontalAlign="Center" />
                            </asp:BoundField>
                            <asp:BoundField DataField="ProductName" HeaderText="ProductName">
                                <HeaderStyle HorizontalAlign="Center" />
                                <ItemStyle HorizontalAlign="Center" />
                            </asp:BoundField>
                            <asp:BoundField DataField="UnitPrice" HeaderText="UnitPrice(RM)">
                                <HeaderStyle HorizontalAlign="Center" />
                                <ItemStyle HorizontalAlign="Center" />
                            </asp:BoundField>
                            <asp:TemplateField>
                                <ItemTemplate>
                                    <asp:Button ID="btnIncrement" runat="server" Text="+" CommandName="Increment" CommandArgument='<%# Eval("ProductId") %>' AutoPostBack="True" />
                                </ItemTemplate>
                                <ItemStyle HorizontalAlign="Center" />
                            </asp:TemplateField>
                            <asp:BoundField DataField="Quantity" HeaderText="Qty">
                                <HeaderStyle HorizontalAlign="Center" />
                                <ItemStyle HorizontalAlign="Center" />
                            </asp:BoundField>
                            <asp:TemplateField>
                                <ItemTemplate>
                                    <asp:Button ID="btnDecrement" runat="server" Text="-" CommandName="Decrement" CommandArgument='<%# Eval("ProductId") %>' AutoPostBack="True" />
                                </ItemTemplate>
                                <ItemStyle HorizontalAlign="Center" />
                            </asp:TemplateField>
                            <asp:BoundField DataField="totalprice" HeaderText="Total Price(RM)">
                                <HeaderStyle HorizontalAlign="Center" />
                                <ItemStyle HorizontalAlign="Center" Wrap="False" />
                            </asp:BoundField>
                            <asp:CommandField DeleteText="Remove" ShowDeleteButton="True">
                                <ControlStyle Font-Underline="True" />
                                <ItemStyle Font-Italic="False" ForeColor="Red" HorizontalAlign="Center" Wrap="False" />
                            </asp:CommandField>
                        </Columns>
                        <FooterStyle HorizontalAlign="Center" />
                    </asp:GridView>

                </div>

                <div class="flex flex-col px-4 py-6 xl:p-6 w-full rounded-lg bg-white shadow-lg border space-y-6 max-h-80">
                    <h3 class="text-xl font-semibold leading-5 text-gray-800">Summary</h3>
                    <div class="flex justify-center items-center w-full space-y-4 flex-col border-gray-200 border-b">
                        <div class="flex justify-between w-full">
                            <p class="text-base leading-4 text-gray-800">Subtotal(RM)</p>
                            <asp:Label ID="lblSubtotal" runat="server" Text="0.00"></asp:Label>
                        </div>
                        <div class="flex justify-between items-center w-full">
                            <p class="text-base leading-4 text-gray-800">Shipping Fee(RM)</p>
                            <asp:Label ID="lblShipFee" runat="server" Text="0.00"></asp:Label>
                        </div>
                        <div class="flex justify-between items-center w-full">
                            <p class="text-base leading-4 text-gray-800">Sales Tax(RM)</p>
                            <asp:Label ID="lblTax" runat="server" Text="0.00"></asp:Label>
                        </div>
                    </div>
                    <div class="flex justify-between items-center w-full">
                        <p class="text-base font-semibold leading-4 text-gray-800">Total(RM)</p>
                        <asp:Label ID="lbltotal" runat="server" Text="0.00"></asp:Label>
                    </div>
                    <div class="relative">
                        <div class="bottom-0">
                            <asp:Button ID="btnCheckout" runat="server" Text="Checkout" class="mt-2  mb-2 block w-full max-w-xs mx-auto bg-[#003049] hover:bg-stone-300 focus:bg-neutral-900 text-white rounded-lg px-3 py-3 font-semibold" OnClick="btnCheckout_Click" />
                        </div>
                    </div>
                </div>
            </div>

        </div>
    </div>

        <!--Modal of prompt add product-->
    <asp:Panel ID="PanelAddProduct" runat="server" Visible="False">
        <div class="bg-black bg-opacity-50 md:bg-opacity-50 fixed top-0 left-0 right-0 z-50  p-4 overflow-x-hidden overflow-y-auto md:inset-0 h-[calc(100%-1rem)] md:h-full">
            <div class="relative w-full h-full max-w-md md:h-auto mx-auto my-20">
                <!--Pop Out-->
                <div class="relative bg-white rounded-lg shadow ">
                    <div class="p-6 text-center ">
                        <span class="text-2xl font-medium">Checkout Failed</span>
                        <p class="text-center">Please add items into shopping cart before checkout.</p>
                        <asp:Button ID="Button1" runat="server" Text="Press to redirect to product page" CssClass=" my-3 cursor-pointer text-white bg-[#FB923C] hover:bg-[#FDBA74] focus:outline-none  font-medium rounded-full text-sm px-5 py-2.5 text-center mr-2 mb-2 " PostBackUrl="~/Customer/Products.aspx" />
                    </div>
                </div>
            </div>
        </div>
    </asp:Panel>


</asp:Content>
