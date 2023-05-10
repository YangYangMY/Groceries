<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="HomePage.aspx.cs" Inherits="Groceries.HomePage" MasterPageFile="~/MasterPage/Customer.Master" %>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <!--Content-->

    <!--Hero Section-->
    <div class="relative">
        <img class="h-full w-full" src="../images/hero-pic.png" alt="hero-pic" />
    </div>
    
    <!--Category Section-->
    <div class="bg-white">
        <div class="grid items-center mx-auto max-w-2xl px-4 py-16 sm:px-6 sm:py-24 lg:max-w-7xl lg:px-8">
            <h2 class="text-3xl font-bold tracking-tight text-[#003049] text-center mb-10">Shop by Category</h2>

            <div class="grid lg:grid-cols-5 gap-x-6 gap-y-10 sm:grid-cols-3">

                <a class="grid content-between group" href="Meat.aspx">
                    <div class="relative w-3/4 h-0 bg-gray-200 rounded-lg align-center border-2 hover:border-[#F6BD60] hover:opacity-75 hover:bg-[#FBEBDB]" style="padding-bottom: 100%">
                        <div class="absolute inset-0 flex justify-center flex flex-col items-center pt-7">
                            <img src="../images/meat.png" alt="meats" class="h-2/5 w-suto object-cover object-center">
                            <h6 class="my-5 font-medium text-gray-500">Meats & Seafood</h6>
                        </div>
                    </div>
                </a>

                <a class="grid content-between group" href="Fruits.aspx">
                    <div class="relative w-3/4 h-0 bg-gray-200 rounded-lg align-center border-2 hover:border-[#F6BD60] hover:opacity-75 hover:bg-[#FBEBDB]" style="padding-bottom: 100%">
                        <div class="absolute inset-0 justify-center flex flex-col items-center pt-7">
                            <img src="../images/vegetable.png" alt="vege" class="h-2/5 w-suto object-cover object-center">
                            <h6 class="my-5 font-medium text-gray-500">Fruits & Vegetables</h6>
                        </div>
                    </div>
                </a>

                <a class="grid content-between group" href="Snacks.aspx">
                    <div class="relative w-3/4 h-0 bg-gray-200 rounded-lg align-center border-2 hover:border-[#F6BD60] hover:opacity-75 hover:bg-[#FBEBDB]" style="padding-bottom: 100%">
                        <div class="absolute inset-0 flex justify-center flex flex-col items-center pt-7">
                            <img src="../images/snack.png" alt="snack" class="h-2/5 w-suto object-cover object-center">
                            <h6 class="my-5 font-medium text-gray-500">Snacks</h6>
                        </div>
                    </div>
                </a>

                <a class="grid content-between group" href="Dairy.aspx">
                    <div class="relative w-3/4 h-0 bg-gray-200 rounded-lg align-center border-2 hover:border-[#F6BD60] hover:opacity-75 hover:bg-[#FBEBDB]" style="padding-bottom: 100%">
                        <div class="absolute inset-0 flex justify-center flex flex-col items-center pt-7">
                            <img src="../images/dairy.png" alt="bakery" class="h-2/5 w-suto object-cover object-center">
                            <h6 class="my-5 font-medium text-gray-500">Dairy</h6>
                        </div>
                    </div>
                </a>

                <a class="grid content-between group" href="Drinks.aspx">
                    <div class="relative w-3/4 h-0 bg-gray-200 rounded-lg align-center border-2 hover:border-[#F6BD60] hover:opacity-75 hover:bg-[#FBEBDB]" style="padding-bottom: 100%">
                        <div class="absolute inset-0 flex justify-center flex flex-col items-center pt-7">
                            <img src="../images/drinks.png" alt="drinks" class="h-2/5 w-suto object-cover object-center">
                            <h6 class="my-5 font-medium text-gray-500">Drinks</h6>
                        </div>
                    </div>
                </a>

            </div>
        </div>
    </div>

    <!--First Section-->
    <div class="bg-white">
        <div class="mx-auto max-w-2xl px-4 py-16 sm:px-6 sm:py-24 lg:max-w-7xl lg:px-8">
            <h2 class="text-3xl font-bold tracking-tight text-[#003049] text-center mb-10">Popular items</h2>

            <div class="grid grid-cols-1 gap-x-6 gap-y-10 sm:grid-cols-2 lg:grid-cols-4 xl:grid-cols-4 xl:gap-x-8">
                <asp:Repeater ID="reptProduct" runat="server" OnItemCommand="reptProduct_ItemCommand">
                    <ItemTemplate>
                        <div class="grid content-between group">
                            <div class="relative w-full h-0 rounded-lg" style="padding-bottom: 100%">
                                <div class="absolute inset-0 flex justify-center items-center">
                                    <asp:Image runat="server" ID="prdImg" ImageUrl='<%# "~/ProductImageupload/" + Eval("Media") %>' CssClass="h-3/4 w-auto object-cover object-center transition ease-in-out hover:-translate-y-1 hover:scale-110 duration-700" />
                                </div>
                            </div>
                            <asp:Label runat="server" ID="lblName" Text='<%# Eval("ProductName") %>' CssClass="mt-4 text-lg text-gray-700"></asp:Label>
                            <p cssclass="mt-1 text-lg font-medium text-gray-900">
                                RM
                            <asp:Label runat="server" ID="lblPrice" Text='<%# Eval("UnitPrice") %>' CssClass="mt-1 text-lg font-medium text-gray-900"></asp:Label>
                            </p>
                            <div class="flex flex-row mt-2">
                                <asp:Button ID="btnAddToCart" runat="server" CssClass="text-white bg-[#F6BD60] hover:opacity-75 font-medium rounded-lg text-sm px-5 py-2.5 text-center inline-flex items-center" CommandName="AddToCart" Text="Add to cart" CommandArgument='<%# Eval("ProductID") %>' />
                                <button type="button" class="text-white bg-[#F6BD60] hover:opacity-75 font-medium rounded-lg text-sm p-2.5 text-center ml-2">
                                    <svg aria-hidden="true" class="w-4 h-4" fill="currentColor" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 512 512">
                                        <path d="M225.8 468.2l-2.5-2.3L48.1 303.2C17.4 274.7 0 234.7 0 192.8v-3.3c0-70.4 50-130.8 119.2-144C158.6 37.9 198.9 47 231 69.6c9 6.4 17.4 13.8 25 22.3c4.2-4.8 8.7-9.2 13.5-13.3c3.7-3.2 7.5-6.2 11.5-9c0 0 0 0 0 0C313.1 47 353.4 37.9 392.8 45.4C462 58.6 512 119.1 512 189.5v3.3c0 41.9-17.4 81.9-48.1 110.4L288.7 465.9l-2.5 2.3c-8.2 7.6-19 11.9-30.2 11.9s-22-4.2-30.2-11.9zM239.1 145c-.4-.3-.7-.7-1-1.1l-17.8-20c0 0-.1-.1-.1-.1c0 0 0 0 0 0c-23.1-25.9-58-37.7-92-31.2C81.6 101.5 48 142.1 48 189.5v3.3c0 28.5 11.9 55.8 32.8 75.2L256 430.7 431.2 268c20.9-19.4 32.8-46.7 32.8-75.2v-3.3c0-47.3-33.6-88-80.1-96.9c-34-6.5-69 5.4-92 31.2c0 0 0 0-.1 .1s0 0-.1 .1l-17.8 20c-.3 .4-.7 .7-1 1.1c-4.5 4.5-10.6 7-16.9 7s-12.4-2.5-16.9-7z" />
                                    </svg>
                                    <span class="sr-only">Icon description</span>
                                </button>
                            </div>
                        </div>
                    </ItemTemplate>
                </asp:Repeater>
                
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Products]"></asp:SqlDataSource>
            </div>
        </div>
    </div>
    <!--Second Section Repeater-->
    <div class="bg-[#FFF6E7] my-5">
       <div class="mx-auto max-w-2xl px-4 py-16 sm:px-6 sm:py-24 lg:max-w-7xl lg:px-8">
            <h2 class="text-3xl font-bold tracking-tight text-[#003049] text-center mb-10">Han-gry for Korean Foods?</h2>

           <div class="grid grid-cols-1 gap-x-6 gap-y-10 sm:grid-cols-2 lg:grid-cols-4 xl:grid-cols-4 xl:gap-x-8">
                <asp:Repeater ID="reptProduct2" runat="server" OnItemCommand="reptProduct_ItemCommand">
                    <ItemTemplate>
                        <div class="grid content-between group">
                            <div class="relative w-full h-0 rounded-lg" style="padding-bottom: 100%">
                                <div class="absolute inset-0 flex justify-center items-center">
                                    <asp:Image runat="server" ID="prdImg" ImageUrl='<%# "~/ProductImageupload/" + Eval("Media") %>' CssClass="h-3/4 w-auto object-cover object-center transition ease-in-out hover:-translate-y-1 hover:scale-110 duration-700" />
                                </div>
                            </div>
                            <asp:Label runat="server" ID="lblName" Text='<%# Eval("ProductName") %>' CssClass="mt-4 text-lg text-gray-700"></asp:Label>
                            <p cssclass="mt-1 text-lg font-medium text-gray-900">
                                RM
                            <asp:Label runat="server" ID="lblPrice" Text='<%# Eval("UnitPrice") %>' CssClass="mt-1 text-lg font-medium text-gray-900"></asp:Label>
                            </p>
                            <div class="flex flex-row mt-2">
                                <asp:Button ID="btnAddToCart" runat="server" CssClass="text-white bg-[#F6BD60] hover:opacity-75 font-medium rounded-lg text-sm px-5 py-2.5 text-center inline-flex items-center" CommandName="AddToCart" Text="Add to cart" CommandArgument='<%# Eval("ProductID") %>' />
                                <button type="button" class="text-white bg-[#F6BD60] hover:opacity-75 font-medium rounded-lg text-sm p-2.5 text-center ml-2">
                                    <svg aria-hidden="true" class="w-4 h-4" fill="currentColor" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 512 512">
                                        <path d="M225.8 468.2l-2.5-2.3L48.1 303.2C17.4 274.7 0 234.7 0 192.8v-3.3c0-70.4 50-130.8 119.2-144C158.6 37.9 198.9 47 231 69.6c9 6.4 17.4 13.8 25 22.3c4.2-4.8 8.7-9.2 13.5-13.3c3.7-3.2 7.5-6.2 11.5-9c0 0 0 0 0 0C313.1 47 353.4 37.9 392.8 45.4C462 58.6 512 119.1 512 189.5v3.3c0 41.9-17.4 81.9-48.1 110.4L288.7 465.9l-2.5 2.3c-8.2 7.6-19 11.9-30.2 11.9s-22-4.2-30.2-11.9zM239.1 145c-.4-.3-.7-.7-1-1.1l-17.8-20c0 0-.1-.1-.1-.1c0 0 0 0 0 0c-23.1-25.9-58-37.7-92-31.2C81.6 101.5 48 142.1 48 189.5v3.3c0 28.5 11.9 55.8 32.8 75.2L256 430.7 431.2 268c20.9-19.4 32.8-46.7 32.8-75.2v-3.3c0-47.3-33.6-88-80.1-96.9c-34-6.5-69 5.4-92 31.2c0 0 0 0-.1 .1s0 0-.1 .1l-17.8 20c-.3 .4-.7 .7-1 1.1c-4.5 4.5-10.6 7-16.9 7s-12.4-2.5-16.9-7z" />
                                    </svg>
                                    <span class="sr-only">Icon description</span>
                                </button>
                            </div>
                        </div>
                    </ItemTemplate>
                </asp:Repeater>
            </div>
        </div>
    </div>

    <!--Third Section-->
    <div class="bg-white py-24 sm:py-32">
        <div class="mx-auto max-w-7xl px-6 lg:px-8">
                 <h2 class="text-3xl font-bold text-[#003049] text-center mb-10">Top-Rated Products</h2>
            <div class="mx-auto mt-10 grid max-w-xl grid-rows-2 gap-x-6 gap-y-10 lg:mx-1/2">
                <div class="grid grid-cols-2 sm:grid-cols-2 gap-x-10">
                    <div class="relative w-content h-0 bg-gray-200 rounded-lg" style="padding-bottom: 100%">
                        <div class="absolute inset-0 flex justify-center items-center">
                            <img src="../images/yoghurt.png" alt="yoghurt" class="h-auto w-2/4 object-cover object-center transition ease-in-out hover:-translate-y-1 hover:scale-110 duration-700">
                        </div>
                    </div>
                <div class="flex max-w-xl flex-col items-start justify-between my-8">
                    <div class="group relative">
                            <h3 class="mt-3 text-lg font-semibold leading-6 text-gray-900 group-hover:text-gray-600">
                                <a href="#">
                                    <span class="absolute inset-0"></span>
                                    Bulla Fat Free Frozen Yogurt Wildberry (1L)
                                </a>
                            </h3>
                        <p class="mt-5 line-clamp-3 text-sm leading-6 text-gray-600">
                           A burst of fruity sweetness that satisfies my craving for dessert without the guilt of added fat. 
                        </p>
                    </div>
                    <div class="relative mt-8 flex items-center gap-x-10">
                        <img src="https://images.unsplash.com/photo-1519244703995-f4e0f30006d5?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=facearea&facepad=2&w=256&h=256&q=80" alt="" class="h-10 w-10 rounded-full bg-gray-50">
                        <div class="text-sm leading-6">
                            <p class="font-semibold text-gray-900">
                                <a href="#">
                                    <span class="absolute inset-0"></span>
                                    Michael Foster
                                </a>
                            </p>
                        </div>
                        </div>
                    </div>
                </div>

                <div class="grid grid-cols-2 sm:grid-cols-2 gap-x-10">
                    <div class="relative w-content h-0 bg-gray-200 rounded-lg" style="padding-bottom: 100%">
                        <div class="absolute inset-0 flex justify-center items-center">
                            <img src="../images/avocado.png" alt="guacamole" class="h-auto w-2/4 object-cover object-center transition ease-in-out hover:-translate-y-1 hover:scale-110 duration-700">
                        </div>
                    </div>
                <div class="flex max-w-xl flex-col items-start justify-between my-8">
                    <div class="group relative">
                            <h3 class="mt-3 text-lg font-semibold leading-6 text-gray-900 group-hover:text-gray-600">
                                <a href="#">
                                    <span class="absolute inset-0"></span>
                                    Simply Organic Guacamole Mix (113g)
                                </a>
                            </h3>
                        <p class="mt-5 line-clamp-3 text-sm leading-6 text-gray-600">
                            It is simply delicious with the rich taste and creamy texture. 
                        </p>
                    </div>
                    <div class="relative mt-8 flex items-center gap-x-10">
                        <img src="https://images.unsplash.com/photo-1519244703995-f4e0f30006d5?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=facearea&facepad=2&w=256&h=256&q=80" alt="" class="h-10 w-10 rounded-full bg-gray-50">
                        <div class="text-sm leading-6">
                            <p class="font-semibold text-gray-900">
                                <a href="#">
                                    <span class="absolute inset-0"></span>
                                    Michael Foster
                                </a>
                            </p>
                        </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
 
</asp:Content>