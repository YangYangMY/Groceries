<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage/ProductsCat.master" AutoEventWireup="true" CodeBehind="Fruits.aspx.cs" Inherits="Groceries.Customer.Fruits" %>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="flex items-baseline justify-between border-b border-gray-200 pb-6 pt-10">
        <h1 class="text-4xl font-bold tracking-tight text-[#003049]">Fruits</h1>
    </div>
</asp:Content>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <div class="grid grid-cols-1 gap-x-6 gap-y-10 sm:grid-cols-2 lg:grid-cols-4 xl:grid-cols-4 xl:gap-x-8">
        <asp:Repeater ID="reptProduct" runat="server" OnItemCommand="reptProduct_ItemCommand">
            <ItemTemplate>
                <div class="grid content-between group">
                    <div class="relative w-full h-0 bg-gray-200 rounded-lg" style="padding-bottom: 100%">
                        <div class="absolute inset-0 flex justify-center items-center">
                            <asp:Image runat="server" ID="prdImg" ImageUrl='<%# Eval("Media") %>' CssClass="h-auto w-2/4 object-cover object-center transition ease-in-out hover:-translate-y-1 hover:scale-110 duration-700" />
                        </div>
                    </div>
                    <asp:Label runat="server" ID="lblName" Text='<%# Eval("ProductName") %>' CssClass="mt-4 text-lg text-gray-700"></asp:Label>
                    <p cssclass="mt-1 text-lg font-medium text-gray-900">
                        RM
                            <asp:Label runat="server" ID="lblPrice" Text='<%# Eval("UnitPrice") %>' CssClass="mt-1 text-lg font-medium text-gray-900"></asp:Label>
                    </p>
                    <div class="flex flex-row mt-2">
                        <asp:Button ID="btnAddToCart" runat="server" CssClass="text-white bg-[#F6BD60] hover:opacity-75 font-medium rounded-lg text-sm px-5 py-2.5 text-center inline-flex items-center" CommandName="AddToCart" Text="Add to cart" CommandArgument='<%# Eval("ProductID") %>' />
                    </div>
                </div>
            </ItemTemplate>
        </asp:Repeater>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Products]"></asp:SqlDataSource>
    </div>
</asp:Content>
