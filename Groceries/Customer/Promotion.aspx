﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Promotion.aspx.cs" Inherits="Groceries.Promotion" MasterPageFile="~/MasterPage/Customer.Master" %>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <h2 class="text-5xl font-bold text-[#003049] text-center mt-10">What's on SALE?</h2>
    <p class="text-center mt-5 text-gray-500">Do not Hesitate, Purchase Today.</p>

    <div class="flex justify-center">
        <div class="bg-[#FBEBDB] rounded-xl py-5 sm:py-10 m-5 w-3/4">
            <h2 class="text-3xl font-medium text-[#003049] text-center tracking-wide">06.04 - 10.04</h2>
            <hr class="mt-10 justify-center border-1 border-[#003049]"/>
            <div class="lg:col-span-3 m-10">
                <div class="grid grid-cols-1 gap-x-6 gap-y-10 sm:grid-cols-2 lg:grid-cols-4 xl:grid-cols-4 xl:gap-x-8">
                    <div class="grid content-between group">
                        <div class="relative w-full h-0 bg-gray-200 rounded-lg" style="padding-bottom: 100%">
                            <div class="absolute inset-0 flex justify-center items-center">
                                <img src="../images/rabbit-candy.png" alt="rabbit-candy" class="h-auto w-2/4 object-cover object-center transition ease-in-out hover:-translate-y-1 hover:scale-110 duration-700">
                            </div>
                        </div>
                        <h3 class="mt-4 text-base text-gray-700">White Rabbit Creamy Candy (108g)</h3>
                        <p class="mt-1 text-xl font-bold text-gray-900">RM 7.32</p>
                        <p class="mt-1 text-lg font-medium text-gray-400 line-through">RM 10.82</p>
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
                        <h3 class="mt-4 text-base text-gray-700">Kellogg's Frosted Flakes (108g)</h3>
                        <p class="mt-1 text-xl font-bold text-gray-900">RM 13.50</p>
                        <p class="mt-1 text-lg font-medium text-gray-400 line-through">RM 16.15</p>
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
                        <h3 class="mt-4 text-base text-gray-700">Massimo Sandwich Loaf with Wheat Germ (400g) (400g)</h3>
                        <p class="mt-1 text-lg font-bold text-gray-900">RM 2.89</p>
                        <p class="mt-1 text-lg font-medium text-gray-400 line-through">RM 3.19</p>
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
                                <img src="../images/chips.png" alt="chips" class="h-auto w-2/4 object-cover object-center transition ease-in-out hover:-translate-y-1 hover:scale-110 duration-700">
                            </div>
                        </div>
                        <h3 class="mt-4 text-base text-gray-700">Calbee Honey Butter Chips (60g)</h3>
                        <p class="mt-1 text-xl font-bold text-gray-900">RM 4.50</p>
                        <p class="mt-1 text-lg font-medium text-gray-400 line-through">RM 5.50</p>
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

                <!--Add Products Here-->
                </div>
            </div>
        </div>

    <!--Second Promotion-->
        <div class="flex justify-center">
            <div class="bg-[#003049] rounded-xl py-5 sm:py-10 m-5 w-3/4">
                <h2 class="text-3xl font-medium text-[#FBEBDB] text-center tracking-wide">20.04 - 24.04</h2>
                <hr class="mt-10 justify-center border-1 border-[#FBEBDB]" />
            <div class="lg:col-span-3 m-10">
                <div class="grid grid-cols-1 gap-x-6 gap-y-10 sm:grid-cols-2 lg:grid-cols-4 xl:grid-cols-4 xl:gap-x-8">
                    <div class="grid content-between group">
                        <div class="relative w-full h-0 bg-gray-200 rounded-lg" style="padding-bottom: 100%">
                            <div class="absolute inset-0 flex justify-center items-center">
                                <img src="../images/rabbit-candy.png" alt="rabbit-candy" class="h-auto w-2/4 object-cover object-center transition ease-in-out hover:-translate-y-1 hover:scale-110 duration-700">
                            </div>
                        </div>
                        <h3 class="mt-4 text-base text-[#FFFFFF]">White Rabbit Creamy Candy (108g)</h3>
                        <p class="mt-1 text-xl font-bold text-[#FFFFFF]">RM 7.32</p>
                        <p class="mt-1 text-lg font-medium text-gray-400 line-through">RM 10.82</p>
                    </div>

                    <div class="grid content-between group">
                        <div class="relative w-full h-0 bg-gray-200 rounded-lg" style="padding-bottom: 100%">
                            <div class="absolute inset-0 flex justify-center items-center">
                                <img src="../images/cornflakes.png" alt="cornflakes" class="h-auto w-2/4 object-cover object-center transition ease-in-out hover:-translate-y-1 hover:scale-110 duration-700">
                            </div>
                        </div>
                        <h3 class="mt-4 text-base text-[#FFFFFF]">Kellogg's Frosted Flakes (108g)</h3>
                        <p class="mt-1 text-xl font-bold text-[#FFFFFF]">RM 13.50</p>
                        <p class="mt-1 text-lg font-medium text-gray-400 line-through">RM 16.15</p>
                    </div>

                    <div class="grid content-between group">
                        <div class="relative w-full h-0 bg-gray-200 rounded-lg" style="padding-bottom: 100%">
                            <div class="absolute inset-0 flex justify-center items-center">
                                <img src="../images/massimo.png" alt="massimo" class="h-auto w-2/4 object-cover object-center transition ease-in-out hover:-translate-y-1 hover:scale-110 duration-700">
                            </div>
                        </div>
                        <h3 class="mt-4 text-base text-[#FFFFFF]">Massimo Sandwich Loaf with Wheat Germ (400g) (400g)</h3>
                        <p class="mt-1 text-lg font-bold text-[#FFFFFF]">RM 2.89</p>
                        <p class="mt-1 text-lg font-medium text-gray-400 line-through">RM 3.19</p>
                    </div>

                    <div class="grid content-between group">
                        <div class="relative w-full h-0 bg-gray-200 rounded-lg" style="padding-bottom: 100%">
                            <div class="absolute inset-0 flex justify-center items-center">
                                <img src="../images/chips.png" alt="chips" class="h-auto w-2/4 object-cover object-center transition ease-in-out hover:-translate-y-1 hover:scale-110 duration-700">
                            </div>
                        </div>
                        <h3 class="mt-4 text-base text-[#FFFFFF]">Calbee Honey Butter Chips (60g)</h3>
                        <p class="mt-1 text-xl font-bold text-[#FFFFFF]">RM 4.50</p>
                        <p class="mt-1 text-lg font-medium text-gray-400 line-through">RM 5.50</p>
                    </div>
                </div>

                <!--Add Products Here-->

            </div>
        </div>
    </div>

    <div class="flex justify-center m-10">
        <button type="button" class="text-gray-900 hover:text-white border border-gray-800 hover:bg-gray-900 font-medium rounded-lg text-sm px-5 py-2.5 text-center mr-2 mb-2 dark:border-gray-600">Explore More Products</button>
    </div>

</asp:Content>
