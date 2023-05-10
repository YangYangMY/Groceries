<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Promotion.aspx.cs" Inherits="Groceries.Promotion" MasterPageFile="~/MasterPage/Customer.Master" %>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <h2 class="text-5xl font-bold text-[#003049] text-center mt-10">What's on SALE?</h2>
    <p class="text-center mt-5 text-gray-500">Do not Hesitate, Purchase Today.</p>

    <div class="flex justify-center">
        <div class="bg-[#FFF6E7] rounded-xl my-5 w-3/4">
            <div class="mx-auto max-w-2xl px-4 py-16 sm:px-6 sm:py-24 lg:max-w-7xl lg:px-8">
                <h2 class="text-3xl font-medium text-[#003049] text-center tracking-wide">15.05 - 30.05</h2>
                <hr class="mt-10 justify-center border-1 border-[#003049]" />

                <div class="grid grid-cols-1 gap-x-6 gap-y-10 sm:grid-cols-2 lg:grid-cols-4 xl:grid-cols-4 xl:gap-x-8">
                    <asp:Repeater ID="reptProduct" runat="server" OnItemCommand="reptProduct_ItemCommand">
                        <ItemTemplate>
                            <div class="grid content-between group">
                                <div class="relative w-full h-0 rounded-lg bg-white mt-10" style="padding-bottom: 100%">
                                    <div class="absolute inset-0 flex justify-center items-center">
                                        <asp:Image runat="server" ID="prdImg" ImageUrl='<%# "~/ProductImageupload/" + Eval("Media") %>' CssClass="h-3/4 w-auto object-cover object-center transition ease-in-out hover:-translate-y-1 hover:scale-110 duration-700" />
                                    </div>
                                </div>
                                <asp:Label runat="server" ID="lblName" Text='<%# Eval("ProductName") %>' CssClass="mt-4 text-lg text-gray-700"></asp:Label>
                                <p cssclass="mt-1 text-lg font-medium text-gray-900">
                                    RM
                            <asp:Label runat="server" ID="lblPrice" Text='<%# Eval("UnitPrice") %>' CssClass="mt-1 text-lg font-medium text-gray-900"></asp:Label>
                                </p>

                                <p class="mt-1 text-lg font-medium text-gray-400 line-through">
                                    RM
                                <asp:Label runat="server" ID="lblOriPrice" Text='<%# Convert.ToDecimal(Eval("UnitPrice")) + 3 %>' CssClass="mt-1 text-lg font-medium text-gray-400 line-through"></asp:Label>
                                </p>
                                <div class="flex flex-row mt-2">
                                    <asp:Button ID="btnAddToCart" runat="server" CssClass="text-white bg-[#F6BD60] hover:opacity-75 font-medium rounded-lg text-sm px-5 py-2.5 text-center inline-flex items-center" CommandName="AddToCart" Text="Add to cart" CommandArgument='<%# Eval("ProductID") %>' />
                                </div>
                            </div>
                        </ItemTemplate>
                    </asp:Repeater>
                    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT ProductID, ProductName, Description, UnitPrice, UnitInStock, Media, CategoryID FROM Products WHERE (ProductID = '10') OR (ProductID = '11') OR (ProductID = '12') OR (ProductID = '13')"></asp:SqlDataSource>
                </div>
            </div>
        </div>
    </div>

</asp:Content>
