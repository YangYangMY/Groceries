<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="About.aspx.cs" Inherits="Groceries.About" MasterPageFile="~/MasterPage/Customer.Master" %>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="max-h-screen bg-cover bg-center bg-[url('/images/aboutus.jpg')]">
    </div>
    <section class="bg-white-950 antialiased">
        <div class="max-w-screen-xl px-4 py-8 mx-auto lg:px-6 sm:py-16 lg:py-24">
            <div class="max-w-2xl mx-auto text-center" >
                <h2 class="text-3xl font-extrabold leading-tight tracking-tight 
                    text-black-900 sm:text-4xl dark:text-black">About Us
                </h2>
                <p class="mt-4 text-base font-normal text-gray-500 sm:text-xl dark:text-gray-400">
                    Crafted with skill and care to help our clients grow their business!
                </p>
            </div>
            <div class="my-4 flex items-center before:mt-0.5 before:flex-1 before:border-t before:border-neutral-300 after:mt-0.5 after:flex-1 
                      after:border-t after:border-neutral-300"></div>
            <!---------------------------Company Principles--------------------------------------> 
            <div class="grid grid-cols-1 mt-12 text-center sm:mt-16 gap-x-20 gap-y-15 sm:grid-cols-2 lg:grid-cols-3">
                <div class="space-y-4">
                    <div class="px-10">
                        <img src="../images/qualityGuarantee.png" alt="" />
                    </div>
                    <h3 class="text-2xl font-bold leading-tight text-gray-900 dark:text-black">Quality Product</h3>
                    <p class="text-lg font-normal text-gray-500 dark:text-gray-400">
                        <span>Groceries</span> guarantee the item purchase are within high quality.
                    </p>
                    <a href="#" title="" class="text-white bg-primary-700 justify-center hover:bg-primary-800 inline-flex items-center  focus:ring-4 focus:outline-none focus:ring-primary-300 font-medium rounded-lg text-sm px-5 py-2.5 text-center 
                        dark:bg-primary-600 dark:hover:bg-primary-700 dark:focus:ring-primary-800" role="button"> View case study
                        <svg aria-hidden="true" class="w-5 h-5 ml-2 -mr-1" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 20 20"
                            fill="currentColor">
                            <path fill-rule="evenodd" d="M12.293 5.293a1 1 0 011.414 0l4 4a1 1 0 010 1.414l-4 4a1 1 0 01-1.414-1.414L14.586 
                                11H3a1 1 0 110-2h11.586l-2.293-2.293a1 1 0 010-1.414z" clip-rule="evenodd" />
                        </svg>
                    </a>
                </div>
                <div class="space-y-4">
                    <div class="px-10">
                        <img src="../images/fastDelivery.png" alt="" />
                    </div>
                    <h3 class="text-2xl font-bold leading-tight text-gray-900 dark:text-black">Management system</h3><p class="text-lg font-normal text-gray-500 dark:text-gray-400">
                        Flowbite helps you connect with friends, family and communities of people who share your interests.</p>
                    <a href="#" title="" class="text-white bg-primary-700 justify-center hover:bg-primary-800 inline-flex items-center  focus:ring-4 focus:outline-none focus:ring-primary-300 font-medium 
                        rounded-lg text-sm px-5 py-2.5 text-center dark:bg-primary-600 dark:hover:bg-primary-700 dark:focus:ring-primary-800" role="button">View case study
                        <svg aria-hidden="true" class="w-5 h-5 ml-2 -mr-1" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 20 20" fill="currentColor">
                            <path fill-rule="evenodd" d="M12.293 5.293a1 1 0 011.414 0l4 4a1 1 0 010 1.414l-4 4a1 1 0 01-1.414-1.414L14.586 11H3a1 1 0 110-2h11.586l-2.293-2.293a1 1 0 010-1.414z" clip-rule="evenodd" />
                        </svg>
                    </a> 
                </div>
                <div class="space-y-4">
                    <div class="px-10">
                        <img src="../images/varietyGrocery.png" alt="" />
                    </div>
                    <h3 class="text-2xl font-bold leading-tight text-gray-900 dark:text-black">Logo design</h3>
                    <p class="text-lg font-normal text-gray-500 dark:text-gray-400">
                        Flowbite helps you connect with friends, family and communities of people who share your interests.
                    </p>
                    <a href="#" title=""class="text-white bg-primary-700 justify-center hover:bg-primary-800 inline-flex items-center  focus:ring-4 focus:outline-none focus:ring-primary-300 font-medium rounded-lg text-sm px-5 py-2.5 text-center 
                        dark:bg-primary-600 dark:hover:bg-primary-700 dark:focus:ring-primary-800"role="button">View case study
                        <svg aria-hidden="true" class="w-5 h-5 ml-2 -mr-1" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 20 20"
                            fill="currentColor"><path fill-rule="evenodd" d="M12.293 5.293a1 1 0 011.414 0l4 4a1 1 0 010 1.414l-4 4a1 1 0 01-1.414-1.414L14.586 11H3a1 1 0 
                                110-2h11.586l-2.293-2.293a1 1 0 010-1.414z"clip-rule="evenodd" />
                        </svg>
                    </a>
                </div>
            </div>
        </div>
    </section>
</asp:Content>
