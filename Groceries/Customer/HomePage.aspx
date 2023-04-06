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

            <div class="grid lg:grid-cols-6 gap-x-6 gap-y-10 sm:grid-cols-3">
                <a class="grid content-between group" href="Fruits.aspx">
                    <div class="relative w-3/4 h-auto bg-gray-200 rounded-lg align-center border-2 hover:border-[#F6BD60] hover:opacity-75 hover:bg-[#FBEBDB]" style="padding-bottom: 100%">
                        <div class="absolute inset-0 justify-center flex flex-col items-center pt-7">
                            <img src="../images/fruits.png" alt="fruits" class="h-2/5 w-suto object-cover object-center">
                            <h6 class="my-5 font-medium text-gray-500">Fruits</h6>
                        </div>
                    </div>
                </a>

                <a class="grid content-between group" href="Vegetables.aspx">
                    <div class="relative w-3/4 h-0 bg-gray-200 rounded-lg align-center border-2 hover:border-[#F6BD60] hover:opacity-75 hover:bg-[#FBEBDB]" style="padding-bottom: 100%">
                        <div class="absolute inset-0 justify-center flex flex-col items-center pt-7">
                            <img src="../images/vegetable.png" alt="vege" class="h-2/5 w-suto object-cover object-center">
                            <h6 class="my-5 font-medium text-gray-500">Vegetables</h6>
                        </div>
                    </div>
                </a>

                <a class="grid content-between group" href="Meat.aspx">
                    <div class="relative w-3/4 h-0 bg-gray-200 rounded-lg align-center border-2 hover:border-[#F6BD60] hover:opacity-75 hover:bg-[#FBEBDB]" style="padding-bottom: 100%">
                        <div class="absolute inset-0 flex justify-center flex flex-col items-center pt-7">
                            <img src="../images/meat.png" alt="meats" class="h-2/5 w-suto object-cover object-center">
                            <h6 class="my-5 font-medium text-gray-500">Meats</h6>
                        </div>
                    </div>
                </a>

                <a class="grid content-between group" href="Bakery.aspx">
                    <div class="relative w-3/4 h-0 bg-gray-200 rounded-lg align-center border-2 hover:border-[#F6BD60] hover:opacity-75 hover:bg-[#FBEBDB]" style="padding-bottom: 100%">
                        <div class="absolute inset-0 flex justify-center flex flex-col items-center pt-7">
                            <img src="../images/bakery.png" alt="bakery" class="h-2/5 w-suto object-cover object-center">
                            <h6 class="my-5 font-medium text-gray-500">Bakery</h6>
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

                <a class="grid content-between group" href="Beverages.aspx">
                    <div class="relative w-3/4 h-0 bg-gray-200 rounded-lg align-center border-2 hover:border-[#F6BD60] hover:opacity-75 hover:bg-[#FBEBDB]" style="padding-bottom: 100%">
                        <div class="absolute inset-0 flex justify-center flex flex-col items-center pt-7">
                            <img src="../images/drinks.png" alt="drinks" class="h-2/5 w-suto object-cover object-center">
                            <h6 class="my-5 font-medium text-gray-500">Beverages</h6>
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
                <div class="grid content-between group">
                    <div class="relative w-full h-0 bg-gray-200 rounded-lg" style="padding-bottom: 100%">
                        <div class="absolute inset-0 flex justify-center items-center">
                            <img src="../images/rabbit-candy.png" alt="rabbit-candy" class="h-auto w-2/4 object-cover object-center transition ease-in-out hover:-translate-y-1 hover:scale-110 duration-700">
                        </div>
                    </div>
                    <h3 class="mt-4 text-lg text-gray-700">White Rabbit Creamy Candy (108g)</h3>
                    <p class="mt-1 text-lg font-medium text-gray-900">RM 10.82</p>
                    <div class="flex flex-row mt-2">
                        <button type="button" class="text-white bg-[#F6BD60] hover:opacity-75 font-medium rounded-lg text-sm px-5 py-2.5 text-center inline-flex items-center">
                            <svg aria-hidden="true" class="w-5 h-5 mr-2 -ml-1" fill="currentColor" viewBox="0 0 20 20" xmlns="http://www.w3.org/2000/svg">
                                <path d="M3 1a1 1 0 000 2h1.22l.305 1.222a.997.997 0 00.01.042l1.358 5.43-.893.892C3.74 11.846 4.632 14 6.414 14H15a1 1 0 000-2H6.414l1-1H14a1 1 0 00.894-.553l3-6A1 1 0 0017 3H6.28l-.31-1.243A1 1 0 005 1H3zM16 16.5a1.5 1.5 0 11-3 0 1.5 1.5 0 013 0zM6.5 18a1.5 1.5 0 100-3 1.5 1.5 0 000 3z"></path></svg>
                            Add to Cart
                        </button>

                        <button type="button" class="text-white bg-[#F6BD60] hover:opacity-75 font-medium rounded-lg text-sm p-2.5 text-center ml-2">
                            <svg aria-hidden="true" class="w-4 h-4" fill="currentColor" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 512 512">
                                <path d="M225.8 468.2l-2.5-2.3L48.1 303.2C17.4 274.7 0 234.7 0 192.8v-3.3c0-70.4 50-130.8 119.2-144C158.6 37.9 198.9 47 231 69.6c9 6.4 17.4 13.8 25 22.3c4.2-4.8 8.7-9.2 13.5-13.3c3.7-3.2 7.5-6.2 11.5-9c0 0 0 0 0 0C313.1 47 353.4 37.9 392.8 45.4C462 58.6 512 119.1 512 189.5v3.3c0 41.9-17.4 81.9-48.1 110.4L288.7 465.9l-2.5 2.3c-8.2 7.6-19 11.9-30.2 11.9s-22-4.2-30.2-11.9zM239.1 145c-.4-.3-.7-.7-1-1.1l-17.8-20c0 0-.1-.1-.1-.1c0 0 0 0 0 0c-23.1-25.9-58-37.7-92-31.2C81.6 101.5 48 142.1 48 189.5v3.3c0 28.5 11.9 55.8 32.8 75.2L256 430.7 431.2 268c20.9-19.4 32.8-46.7 32.8-75.2v-3.3c0-47.3-33.6-88-80.1-96.9c-34-6.5-69 5.4-92 31.2c0 0 0 0-.1 .1s0 0-.1 .1l-17.8 20c-.3 .4-.7 .7-1 1.1c-4.5 4.5-10.6 7-16.9 7s-12.4-2.5-16.9-7z" />
                            </svg>
                            <span class="sr-only">Icon description</span>
                        </button>
                    </div>
                </div>

                <div class="grid content-between group">
                    <div class="relative w-full h-0 bg-gray-200 rounded-lg" style="padding-bottom: 100%">
                        <div class="absolute inset-0 flex justify-center items-center">
                            <img src="../images/cornflakes.png" alt="cornflakes" class="h-auto w-2/4 object-cover object-center transition ease-in-out hover:-translate-y-1 hover:scale-110 duration-700">
                        </div>
                    </div>
                    <h3 class="mt-4 text-lg text-gray-700">Kellogg's Frosted Flakes (108g)</h3>
                    <p class="mt-1 text-lg font-medium text-gray-900">RM 16.15</p>
                    <div class="flex flex-row mt-2">
                        <button type="button" class="text-white bg-[#F6BD60] hover:opacity-75 font-medium rounded-lg text-sm px-5 py-2.5 text-center inline-flex items-center">
                            <svg aria-hidden="true" class="w-5 h-5 mr-2 -ml-1" fill="currentColor" viewBox="0 0 20 20" xmlns="http://www.w3.org/2000/svg">
                                <path d="M3 1a1 1 0 000 2h1.22l.305 1.222a.997.997 0 00.01.042l1.358 5.43-.893.892C3.74 11.846 4.632 14 6.414 14H15a1 1 0 000-2H6.414l1-1H14a1 1 0 00.894-.553l3-6A1 1 0 0017 3H6.28l-.31-1.243A1 1 0 005 1H3zM16 16.5a1.5 1.5 0 11-3 0 1.5 1.5 0 013 0zM6.5 18a1.5 1.5 0 100-3 1.5 1.5 0 000 3z"></path></svg>
                            Add to Cart
                        </button>

                        <button type="button" class="text-white bg-[#F6BD60] hover:opacity-75 font-medium rounded-lg text-sm p-2.5 text-center ml-2">
                            <svg aria-hidden="true" class="w-4 h-4" fill="currentColor" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 512 512">
                                <path d="M225.8 468.2l-2.5-2.3L48.1 303.2C17.4 274.7 0 234.7 0 192.8v-3.3c0-70.4 50-130.8 119.2-144C158.6 37.9 198.9 47 231 69.6c9 6.4 17.4 13.8 25 22.3c4.2-4.8 8.7-9.2 13.5-13.3c3.7-3.2 7.5-6.2 11.5-9c0 0 0 0 0 0C313.1 47 353.4 37.9 392.8 45.4C462 58.6 512 119.1 512 189.5v3.3c0 41.9-17.4 81.9-48.1 110.4L288.7 465.9l-2.5 2.3c-8.2 7.6-19 11.9-30.2 11.9s-22-4.2-30.2-11.9zM239.1 145c-.4-.3-.7-.7-1-1.1l-17.8-20c0 0-.1-.1-.1-.1c0 0 0 0 0 0c-23.1-25.9-58-37.7-92-31.2C81.6 101.5 48 142.1 48 189.5v3.3c0 28.5 11.9 55.8 32.8 75.2L256 430.7 431.2 268c20.9-19.4 32.8-46.7 32.8-75.2v-3.3c0-47.3-33.6-88-80.1-96.9c-34-6.5-69 5.4-92 31.2c0 0 0 0-.1 .1s0 0-.1 .1l-17.8 20c-.3 .4-.7 .7-1 1.1c-4.5 4.5-10.6 7-16.9 7s-12.4-2.5-16.9-7z" />
                            </svg>
                            <span class="sr-only">Icon description</span>
                        </button>
                    </div>
                </div>

                <div class="grid content-between group">
                    <div class="relative w-full h-0 bg-gray-200 rounded-lg" style="padding-bottom: 100%">
                        <div class="absolute inset-0 flex justify-center items-center">
                            <img src="../images/massimo.png" alt="massimo" class="h-auto w-2/4 object-cover object-center transition ease-in-out hover:-translate-y-1 hover:scale-110 duration-700">
                        </div>
                    </div>
                    <h3 class="mt-4 text-lg text-gray-700">Massimo Sandwich Loaf with Wheat Germ (400g)</h3>
                    <p class="mt-1 text-lg font-medium text-gray-900">RM 3.19</p>
                    <div class="flex flex-row mt-2">
                        <button type="button" class="text-white bg-[#F6BD60] hover:opacity-75 font-medium rounded-lg text-sm px-5 py-2.5 text-center inline-flex items-center">
                            <svg aria-hidden="true" class="w-5 h-5 mr-2 -ml-1" fill="currentColor" viewBox="0 0 20 20" xmlns="http://www.w3.org/2000/svg">
                                <path d="M3 1a1 1 0 000 2h1.22l.305 1.222a.997.997 0 00.01.042l1.358 5.43-.893.892C3.74 11.846 4.632 14 6.414 14H15a1 1 0 000-2H6.414l1-1H14a1 1 0 00.894-.553l3-6A1 1 0 0017 3H6.28l-.31-1.243A1 1 0 005 1H3zM16 16.5a1.5 1.5 0 11-3 0 1.5 1.5 0 013 0zM6.5 18a1.5 1.5 0 100-3 1.5 1.5 0 000 3z"></path></svg>
                            Add to Cart
                        </button>

                        <button type="button" class="text-white bg-[#F6BD60] hover:opacity-75 font-medium rounded-lg text-sm p-2.5 text-center ml-2">
                            <svg aria-hidden="true" class="w-4 h-4" fill="currentColor" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 512 512">
                                <path d="M225.8 468.2l-2.5-2.3L48.1 303.2C17.4 274.7 0 234.7 0 192.8v-3.3c0-70.4 50-130.8 119.2-144C158.6 37.9 198.9 47 231 69.6c9 6.4 17.4 13.8 25 22.3c4.2-4.8 8.7-9.2 13.5-13.3c3.7-3.2 7.5-6.2 11.5-9c0 0 0 0 0 0C313.1 47 353.4 37.9 392.8 45.4C462 58.6 512 119.1 512 189.5v3.3c0 41.9-17.4 81.9-48.1 110.4L288.7 465.9l-2.5 2.3c-8.2 7.6-19 11.9-30.2 11.9s-22-4.2-30.2-11.9zM239.1 145c-.4-.3-.7-.7-1-1.1l-17.8-20c0 0-.1-.1-.1-.1c0 0 0 0 0 0c-23.1-25.9-58-37.7-92-31.2C81.6 101.5 48 142.1 48 189.5v3.3c0 28.5 11.9 55.8 32.8 75.2L256 430.7 431.2 268c20.9-19.4 32.8-46.7 32.8-75.2v-3.3c0-47.3-33.6-88-80.1-96.9c-34-6.5-69 5.4-92 31.2c0 0 0 0-.1 .1s0 0-.1 .1l-17.8 20c-.3 .4-.7 .7-1 1.1c-4.5 4.5-10.6 7-16.9 7s-12.4-2.5-16.9-7z" />
                            </svg>
                            <span class="sr-only">Icon description</span>
                        </button>
                    </div>
                </div>

                <div class="grid content-between group">
                    <div class="relative w-full h-0 bg-gray-200 rounded-lg" style="padding-bottom: 100%">
                        <div class="absolute inset-0 flex justify-center items-center">
                            <img src="../images/rabbit-candy.png" alt="rabbit-candy" class="h-auto w-2/4 object-cover object-center transition ease-in-out hover:-translate-y-1 hover:scale-110 duration-700">
                        </div>
                    </div>
                    <h3 class="mt-4 text-lg text-gray-700">White Rabbit Creamy Candy (108g)</h3>
                    <p class="mt-1 text-lg font-medium text-gray-900">RM 7.17</p>
                    <div class="flex flex-row mt-2">
                        <button type="button" class="text-white bg-[#F6BD60] hover:opacity-75 font-medium rounded-lg text-sm px-5 py-2.5 text-center inline-flex items-center">
                            <svg aria-hidden="true" class="w-5 h-5 mr-2 -ml-1" fill="currentColor" viewBox="0 0 20 20" xmlns="http://www.w3.org/2000/svg">
                                <path d="M3 1a1 1 0 000 2h1.22l.305 1.222a.997.997 0 00.01.042l1.358 5.43-.893.892C3.74 11.846 4.632 14 6.414 14H15a1 1 0 000-2H6.414l1-1H14a1 1 0 00.894-.553l3-6A1 1 0 0017 3H6.28l-.31-1.243A1 1 0 005 1H3zM16 16.5a1.5 1.5 0 11-3 0 1.5 1.5 0 013 0zM6.5 18a1.5 1.5 0 100-3 1.5 1.5 0 000 3z"></path></svg>
                            Add to Cart
                        </button>

                        <button type="button" class="text-white bg-[#F6BD60] hover:opacity-75 font-medium rounded-lg text-sm p-2.5 text-center ml-2">
                            <svg aria-hidden="true" class="w-4 h-4" fill="currentColor" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 512 512">
                                <path d="M225.8 468.2l-2.5-2.3L48.1 303.2C17.4 274.7 0 234.7 0 192.8v-3.3c0-70.4 50-130.8 119.2-144C158.6 37.9 198.9 47 231 69.6c9 6.4 17.4 13.8 25 22.3c4.2-4.8 8.7-9.2 13.5-13.3c3.7-3.2 7.5-6.2 11.5-9c0 0 0 0 0 0C313.1 47 353.4 37.9 392.8 45.4C462 58.6 512 119.1 512 189.5v3.3c0 41.9-17.4 81.9-48.1 110.4L288.7 465.9l-2.5 2.3c-8.2 7.6-19 11.9-30.2 11.9s-22-4.2-30.2-11.9zM239.1 145c-.4-.3-.7-.7-1-1.1l-17.8-20c0 0-.1-.1-.1-.1c0 0 0 0 0 0c-23.1-25.9-58-37.7-92-31.2C81.6 101.5 48 142.1 48 189.5v3.3c0 28.5 11.9 55.8 32.8 75.2L256 430.7 431.2 268c20.9-19.4 32.8-46.7 32.8-75.2v-3.3c0-47.3-33.6-88-80.1-96.9c-34-6.5-69 5.4-92 31.2c0 0 0 0-.1 .1s0 0-.1 .1l-17.8 20c-.3 .4-.7 .7-1 1.1c-4.5 4.5-10.6 7-16.9 7s-12.4-2.5-16.9-7z" />
                            </svg>
                            <span class="sr-only">Icon description</span>
                        </button>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <!--Second Section-->
    <div class="bg-[#FFF6E7] my-5">
       <div class="mx-auto max-w-2xl px-4 py-16 sm:px-6 sm:py-24 lg:max-w-7xl lg:px-8">
            <h2 class="text-3xl font-bold tracking-tight text-[#003049] text-center mb-10">Han-gry for Korean Foods?</h2>

           <div class="grid grid-cols-1 gap-x-6 gap-y-10 sm:grid-cols-2 lg:grid-cols-4 xl:grid-cols-4 xl:gap-x-8">
               <div class="grid content-between group">
                   <div class="relative w-full h-0 bg-gray-200 rounded-lg" style="padding-bottom: 100%">
                       <div class="absolute inset-0 flex justify-center items-center">
                           <img src="../images/chips.png" alt="chips" class="h-auto w-2/4 object-cover object-center transition ease-in-out hover:-translate-y-1 hover:scale-110 duration-700">
                       </div>
                   </div>
                   <h3 class="mt-4 text-lg text-gray-700">Calbee Honey Butter Chips (60g)</h3>
                   <p class="mt-1 text-lg font-medium text-gray-900">RM 5.50</p>
                   <div class="flex flex-row mt-2">
                       <button type="button" class="text-white bg-[#F6BD60] hover:opacity-75 font-medium rounded-lg text-sm px-5 py-2.5 text-center inline-flex items-center">
                           <svg aria-hidden="true" class="w-5 h-5 mr-2 -ml-1" fill="currentColor" viewBox="0 0 20 20" xmlns="http://www.w3.org/2000/svg">
                               <path d="M3 1a1 1 0 000 2h1.22l.305 1.222a.997.997 0 00.01.042l1.358 5.43-.893.892C3.74 11.846 4.632 14 6.414 14H15a1 1 0 000-2H6.414l1-1H14a1 1 0 00.894-.553l3-6A1 1 0 0017 3H6.28l-.31-1.243A1 1 0 005 1H3zM16 16.5a1.5 1.5 0 11-3 0 1.5 1.5 0 013 0zM6.5 18a1.5 1.5 0 100-3 1.5 1.5 0 000 3z"></path></svg>
                           Add to Cart
                       </button>

                       <button type="button" class="text-white bg-[#F6BD60] hover:opacity-75 font-medium rounded-lg text-sm p-2.5 text-center ml-2">
                           <svg aria-hidden="true" class="w-4 h-4" fill="currentColor" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 512 512">
                               <path d="M225.8 468.2l-2.5-2.3L48.1 303.2C17.4 274.7 0 234.7 0 192.8v-3.3c0-70.4 50-130.8 119.2-144C158.6 37.9 198.9 47 231 69.6c9 6.4 17.4 13.8 25 22.3c4.2-4.8 8.7-9.2 13.5-13.3c3.7-3.2 7.5-6.2 11.5-9c0 0 0 0 0 0C313.1 47 353.4 37.9 392.8 45.4C462 58.6 512 119.1 512 189.5v3.3c0 41.9-17.4 81.9-48.1 110.4L288.7 465.9l-2.5 2.3c-8.2 7.6-19 11.9-30.2 11.9s-22-4.2-30.2-11.9zM239.1 145c-.4-.3-.7-.7-1-1.1l-17.8-20c0 0-.1-.1-.1-.1c0 0 0 0 0 0c-23.1-25.9-58-37.7-92-31.2C81.6 101.5 48 142.1 48 189.5v3.3c0 28.5 11.9 55.8 32.8 75.2L256 430.7 431.2 268c20.9-19.4 32.8-46.7 32.8-75.2v-3.3c0-47.3-33.6-88-80.1-96.9c-34-6.5-69 5.4-92 31.2c0 0 0 0-.1 .1s0 0-.1 .1l-17.8 20c-.3 .4-.7 .7-1 1.1c-4.5 4.5-10.6 7-16.9 7s-12.4-2.5-16.9-7z" />
                           </svg>
                           <span class="sr-only">Icon description</span>
                       </button>
                   </div>
               </div>

                <div class="grid content-between group">
                    <div class="relative w-full h-0 bg-gray-200 rounded-lg" style="padding-bottom: 100%">
                        <div class="absolute inset-0 flex justify-center items-center">
                            <img src="../images/mandu.png" alt="mandu" class="h-auto w-2/4 object-cover object-center transition ease-in-out hover:-translate-y-1 hover:scale-110 duration-700">
                        </div>
                    </div>
                    <div>
                        <h3 class="mt-4 text-lg text-gray-700">CJ Bibigo Original Korea Dumplings Kimchi & Pork (525g)</h3>
                        <p class="mt-1 text-lg font-medium text-gray-900">RM 23.90</p>
                        <div class="flex flex-row mt-2">
                            <button type="button" class="text-white bg-[#F6BD60] hover:opacity-75 font-medium rounded-lg text-sm px-5 py-2.5 text-center inline-flex items-center">
                                <svg aria-hidden="true" class="w-5 h-5 mr-2 -ml-1" fill="currentColor" viewBox="0 0 20 20" xmlns="http://www.w3.org/2000/svg">
                                    <path d="M3 1a1 1 0 000 2h1.22l.305 1.222a.997.997 0 00.01.042l1.358 5.43-.893.892C3.74 11.846 4.632 14 6.414 14H15a1 1 0 000-2H6.414l1-1H14a1 1 0 00.894-.553l3-6A1 1 0 0017 3H6.28l-.31-1.243A1 1 0 005 1H3zM16 16.5a1.5 1.5 0 11-3 0 1.5 1.5 0 013 0zM6.5 18a1.5 1.5 0 100-3 1.5 1.5 0 000 3z"></path></svg>
                                Add to Cart
                            </button>

                            <button type="button" class="text-white bg-[#F6BD60] hover:opacity-75 font-medium rounded-lg text-sm p-2.5 text-center ml-2">
                                <svg aria-hidden="true" class="w-4 h-4" fill="currentColor" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 512 512">
                                    <path d="M225.8 468.2l-2.5-2.3L48.1 303.2C17.4 274.7 0 234.7 0 192.8v-3.3c0-70.4 50-130.8 119.2-144C158.6 37.9 198.9 47 231 69.6c9 6.4 17.4 13.8 25 22.3c4.2-4.8 8.7-9.2 13.5-13.3c3.7-3.2 7.5-6.2 11.5-9c0 0 0 0 0 0C313.1 47 353.4 37.9 392.8 45.4C462 58.6 512 119.1 512 189.5v3.3c0 41.9-17.4 81.9-48.1 110.4L288.7 465.9l-2.5 2.3c-8.2 7.6-19 11.9-30.2 11.9s-22-4.2-30.2-11.9zM239.1 145c-.4-.3-.7-.7-1-1.1l-17.8-20c0 0-.1-.1-.1-.1c0 0 0 0 0 0c-23.1-25.9-58-37.7-92-31.2C81.6 101.5 48 142.1 48 189.5v3.3c0 28.5 11.9 55.8 32.8 75.2L256 430.7 431.2 268c20.9-19.4 32.8-46.7 32.8-75.2v-3.3c0-47.3-33.6-88-80.1-96.9c-34-6.5-69 5.4-92 31.2c0 0 0 0-.1 .1s0 0-.1 .1l-17.8 20c-.3 .4-.7 .7-1 1.1c-4.5 4.5-10.6 7-16.9 7s-12.4-2.5-16.9-7z" />
                                </svg>
                                <span class="sr-only">Icon description</span>
                            </button>
                        </div>
                    </div>
                </div>

                <div class="grid content-between group">
                    <div class="relative w-full h-0 bg-gray-200 rounded-lg" style="padding-bottom: 100%">
                        <div class="absolute inset-0 flex justify-center items-center">
                            <img src="../images/milk.png" alt="milk" class="h-2/4 w-auto object-cover object-center transition ease-in-out hover:-translate-y-1 hover:scale-110 duration-700">
                        </div>
                    </div>
                    <h3 class="mt-4 text-lg text-gray-700">Korea Binggarae Banana Flavored Milk (6 x 240ml)</h3>
                    <p class="mt-1 text-lg font-medium text-gray-900">RM 18.75</p>
                    <div class="flex flex-row mt-2">
                        <button type="button" class="text-white bg-[#F6BD60] hover:opacity-75 font-medium rounded-lg text-sm px-5 py-2.5 text-center inline-flex items-center">
                            <svg aria-hidden="true" class="w-5 h-5 mr-2 -ml-1" fill="currentColor" viewBox="0 0 20 20" xmlns="http://www.w3.org/2000/svg">
                                <path d="M3 1a1 1 0 000 2h1.22l.305 1.222a.997.997 0 00.01.042l1.358 5.43-.893.892C3.74 11.846 4.632 14 6.414 14H15a1 1 0 000-2H6.414l1-1H14a1 1 0 00.894-.553l3-6A1 1 0 0017 3H6.28l-.31-1.243A1 1 0 005 1H3zM16 16.5a1.5 1.5 0 11-3 0 1.5 1.5 0 013 0zM6.5 18a1.5 1.5 0 100-3 1.5 1.5 0 000 3z"></path></svg>
                            Add to Cart
                        </button>

                        <button type="button" class="text-white bg-[#F6BD60] hover:opacity-75 font-medium rounded-lg text-sm p-2.5 text-center ml-2">
                            <svg aria-hidden="true" class="w-4 h-4" fill="currentColor" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 512 512">
                                <path d="M225.8 468.2l-2.5-2.3L48.1 303.2C17.4 274.7 0 234.7 0 192.8v-3.3c0-70.4 50-130.8 119.2-144C158.6 37.9 198.9 47 231 69.6c9 6.4 17.4 13.8 25 22.3c4.2-4.8 8.7-9.2 13.5-13.3c3.7-3.2 7.5-6.2 11.5-9c0 0 0 0 0 0C313.1 47 353.4 37.9 392.8 45.4C462 58.6 512 119.1 512 189.5v3.3c0 41.9-17.4 81.9-48.1 110.4L288.7 465.9l-2.5 2.3c-8.2 7.6-19 11.9-30.2 11.9s-22-4.2-30.2-11.9zM239.1 145c-.4-.3-.7-.7-1-1.1l-17.8-20c0 0-.1-.1-.1-.1c0 0 0 0 0 0c-23.1-25.9-58-37.7-92-31.2C81.6 101.5 48 142.1 48 189.5v3.3c0 28.5 11.9 55.8 32.8 75.2L256 430.7 431.2 268c20.9-19.4 32.8-46.7 32.8-75.2v-3.3c0-47.3-33.6-88-80.1-96.9c-34-6.5-69 5.4-92 31.2c0 0 0 0-.1 .1s0 0-.1 .1l-17.8 20c-.3 .4-.7 .7-1 1.1c-4.5 4.5-10.6 7-16.9 7s-12.4-2.5-16.9-7z" />
                            </svg>
                            <span class="sr-only">Icon description</span>
                        </button>
                    </div>
                </div>

                <div class="grid content-between group">
                    <div class="relative w-full h-0 bg-gray-200 rounded-lg" style="padding-bottom: 100%">
                        <div class="absolute inset-0 flex justify-center items-center">
                            <img src="../images/rabbit-candy.png" alt="rabbit-candy" class="h-auto w-2/4 object-cover object-center transition ease-in-out hover:-translate-y-1 hover:scale-110 duration-700">
                        </div>
                    </div>
                    <h3 class="mt-4 text-lg text-gray-700">White Rabbit Creamy Candy (108g)</h3>
                    <p class="mt-1 text-lg font-medium text-gray-900">RM 20.23</p>
                    <div class="flex flex-row mt-2">
                        <button type="button" class="text-white bg-[#F6BD60] hover:opacity-75 font-medium rounded-lg text-sm px-5 py-2.5 text-center inline-flex items-center">
                            <svg aria-hidden="true" class="w-5 h-5 mr-2 -ml-1" fill="currentColor" viewBox="0 0 20 20" xmlns="http://www.w3.org/2000/svg">
                                <path d="M3 1a1 1 0 000 2h1.22l.305 1.222a.997.997 0 00.01.042l1.358 5.43-.893.892C3.74 11.846 4.632 14 6.414 14H15a1 1 0 000-2H6.414l1-1H14a1 1 0 00.894-.553l3-6A1 1 0 0017 3H6.28l-.31-1.243A1 1 0 005 1H3zM16 16.5a1.5 1.5 0 11-3 0 1.5 1.5 0 013 0zM6.5 18a1.5 1.5 0 100-3 1.5 1.5 0 000 3z"></path></svg>
                            Add to Cart
                        </button>

                        <button type="button" class="text-white bg-[#F6BD60] hover:opacity-75 font-medium rounded-lg text-sm p-2.5 text-center ml-2">
                            <svg aria-hidden="true" class="w-4 h-4" fill="currentColor" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 512 512">
                                <path d="M225.8 468.2l-2.5-2.3L48.1 303.2C17.4 274.7 0 234.7 0 192.8v-3.3c0-70.4 50-130.8 119.2-144C158.6 37.9 198.9 47 231 69.6c9 6.4 17.4 13.8 25 22.3c4.2-4.8 8.7-9.2 13.5-13.3c3.7-3.2 7.5-6.2 11.5-9c0 0 0 0 0 0C313.1 47 353.4 37.9 392.8 45.4C462 58.6 512 119.1 512 189.5v3.3c0 41.9-17.4 81.9-48.1 110.4L288.7 465.9l-2.5 2.3c-8.2 7.6-19 11.9-30.2 11.9s-22-4.2-30.2-11.9zM239.1 145c-.4-.3-.7-.7-1-1.1l-17.8-20c0 0-.1-.1-.1-.1c0 0 0 0 0 0c-23.1-25.9-58-37.7-92-31.2C81.6 101.5 48 142.1 48 189.5v3.3c0 28.5 11.9 55.8 32.8 75.2L256 430.7 431.2 268c20.9-19.4 32.8-46.7 32.8-75.2v-3.3c0-47.3-33.6-88-80.1-96.9c-34-6.5-69 5.4-92 31.2c0 0 0 0-.1 .1s0 0-.1 .1l-17.8 20c-.3 .4-.7 .7-1 1.1c-4.5 4.5-10.6 7-16.9 7s-12.4-2.5-16.9-7z" />
                            </svg>
                            <span class="sr-only">Icon description</span>
                        </button>
                    </div>
                </div>
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

    <!--Newsletter-->
    <div class="relative isolate overflow-hidden flex justify-center">
        <div class="rounded-[50px] bg-[#003049] py-16 sm:py-24 lg:py-32 m-10 w-3/4">
            <div class="mx-auto max-w-7xl px-6 lg:px-8">
                <div class="mx-auto grid max-w-2xl grid-cols-1 gap-x-8 gap-y-16 lg:max-w-none lg:grid-cols-2">
                    <div class="max-w-xl lg:max-w-lg mx-10">
                        <h2 class="text-3xl font-bold text-white">Get more updates of Fresh Groceries</h2>
                        <p class="mt-4 text-lg leading-8 text-gray-400">Nostrud amet eu ullamco nisi aute in ad minim nostrud adipisicing velit quis. Duis tempor incididunt dolore.</p>
                        <div class="mt-6 flex max-w-md gap-x-4">
                            <label for="email-address" class="sr-only">Email address</label>
                            <input id="email-address" name="email" type="email" autocomplete="email" required class="min-w-0 flex-auto rounded-md border-0 bg-white/5 px-3.5 py-2 text-white shadow-sm ring-1 ring-inset ring-white/10 focus:ring-2 focus:ring-inset focus:ring-indigo-500 sm:text-sm sm:leading-6" placeholder="Enter your email">
                            <button type="submit" class="flex-none rounded-md bg-indigo-500 px-3.5 py-2.5 text-sm font-semibold text-white shadow-sm hover:bg-indigo-400 focus-visible:outline focus-visible:outline-2 focus-visible:outline-offset-2 focus-visible:outline-indigo-500">Subscribe</button>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>