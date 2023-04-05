<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="About.aspx.cs" Inherits="Groceries.About" MasterPageFile="~/MasterPage/Customer.Master" %>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="max-h-screen bg-cover bg-center bg-[url('/images/aboutus.jpg')]">
            <div class="">
                <h1>Nice to meet you</h1>
                <p><Strong>Goceries</Strong>, an online groceries website 
                    developed since Year 2020 aims to provide one-stop shop service</p>
            </div>
        </div>
    <section class="bg-white-950 antialiased">
        
  <div class="max-w-screen-xl px-4 py-8 mx-auto lg:px-6 sm:py-16 lg:py-24">
    <div class="max-w-2xl mx-auto text-center" >
      <h2 class="text-3xl font-extrabold leading-tight tracking-tight text-gray-900 sm:text-4xl dark:text-white">
        About Us
      </h2>
      <p class="mt-4 text-base font-normal text-gray-500 sm:text-xl dark:text-gray-400">
        Crafted with skill and care to help our clients grow their business!
      </p>
    </div>
     
      <!---------------------------Company Principles--------------------------------------> 
      <div class="max-w-screen-xl align-center bg-orange-700 bg-opacity-25">
     <h1 class="pt-10 font-serif text-4xl font-semibold text-center text-white">Company Principles</h1> 
      <div class="flex min-h items-center justify-center p-10">
          
  <div class="py-8 bg-white-200 grid grid-cols-1 gap-3 md:grid-cols-2 lg:grid-cols-3">
      
    <div class="bg-white group relative cursor-pointer items-center justify-center overflow-hidden transition-shadow hover:shadow-xl hover:shadow-white/30">
      <div class="h-96 w-72 bg-white">
        <img class="h-5/6 w-full object-cover bg-white transition-transform duration-500 group-hover:rotate-3 group-hover:scale-100" src="../images/qualityGuarantee.png" alt="">
      </div>
      <div class="absolute inset-0 bg-gradient-to-b from-transparent via-transparent to-black group-hover:from-black/70 group-hover:via-black/60 group-hover:to-black/70"></div>
      <div class="absolute inset-0 flex translate-y-[60%] flex-col items-center justify-center px-9 text-center transition-all duration-500 group-hover:translate-y-0">
        <h1 class="font-dmserif text-3xl font-bold text-white py-5">Quality Guarantee</h1>
        <p class="mb-10 text-lg italic text-white opacity-0 transition-opacity duration-300 group-hover:opacity-100">Lorem ipsum dolor sit amet consectetur adipisicing elit. Facilis dolore adipisci placeat.</p>
      </div>
    </div>
    <div class="bg-white group relative cursor-pointer items-center justify-center overflow-hidden transition-shadow hover:shadow-xl hover:shadow-black/30">
      <div class="h-96 w-72 bg-white">
        <img class="h-5/6 w-full object-cover transition-transform duration-500 group-hover:rotate-3 group-hover:scale-100" src="../images/fastDelivery.jpg" alt="">
      </div>
      <div class="absolute inset-0 bg-gradient-to-b from-transparent via-transparent to-black group-hover:from-black/70 group-hover:via-black/60 group-hover:to-black/70"></div>
      <div class="absolute inset-0 flex translate-y-[60%] flex-col items-center justify-center px-9 text-center transition-all duration-500 group-hover:translate-y-0">
        <h1 class="font-dmserif text-3xl font-bold text-white py-5">Reliable delivery</h1>
        <p class="mb-10 text-lg italic text-white opacity-0 transition-opacity duration-300 group-hover:opacity-100">Lorem ipsum dolor sit amet consectetur adipisicing elit. Facilis dolore adipisci placeat.</p>
      </div>
    </div>
    <div class="bg-white group relative cursor-pointer items-center justify-center overflow-hidden transition-shadow hover:shadow-xl hover:shadow-black/30">
      <div class="h-96 w-72 bg-white">
        <img class="h-5/6 w-full object-cover transition-transform duration-500 group-hover:rotate-3 group-hover:scale-115" src="../images/varietyGrocery.png" alt="">
      </div>
      <div class="absolute inset-0 bg-gradient-to-b from-transparent via-transparent to-black group-hover:from-black/70 group-hover:via-black/60 group-hover:to-black/70"></div>
      <div class="absolute inset-0 flex translate-y-[60%] flex-col items-center justify-center px-9 text-center transition-all duration-500 group-hover:translate-y-0">
        <h1 class="font-dmserif text-3xl font-bold text-white py-5">Rich Product Variety</h1>
        <p class="mb-10 text-lg italic text-white opacity-0 transition-opacity duration-300 group-hover:opacity-100">Lorem ipsum dolor sit amet consectetur adipisicing elit. Facilis dolore adipisci placeat.</p>
      </div>
    </div>
  </div>
 </div>
          </div>
<!----------------------------------------------------------------------------------------------------------------------------------------------------------------->


      </div>

    <div class="grid grid-cols-1 mt-12 text-center sm:mt-16 gap-x-20 gap-y-15 sm:grid-cols-2 lg:grid-cols-3">
      <div class="space-y-4">
        <div class="px-10">
            <img src="../images/qualityGuarantee.png" alt="" />
        </div>
        <h3 class="text-2xl font-bold leading-tight text-gray-900 dark:text-black">
          Quality Product
        </h3>
        <p class="text-lg font-normal text-gray-500 dark:text-gray-400">
          <span>Groceries</span> guarantee the item purchase are within high quality.
        </p>
        <a href="#" title=""
          class="text-white bg-primary-700 justify-center hover:bg-primary-800 inline-flex items-center  focus:ring-4 focus:outline-none focus:ring-primary-300 font-medium rounded-lg text-sm px-5 py-2.5 text-center dark:bg-primary-600 dark:hover:bg-primary-700 dark:focus:ring-primary-800"
          role="button">
          View case study
          <svg aria-hidden="true" class="w-5 h-5 ml-2 -mr-1" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 20 20"
            fill="currentColor">
            <path fill-rule="evenodd"
              d="M12.293 5.293a1 1 0 011.414 0l4 4a1 1 0 010 1.414l-4 4a1 1 0 01-1.414-1.414L14.586 11H3a1 1 0 110-2h11.586l-2.293-2.293a1 1 0 010-1.414z"
              clip-rule="evenodd" />
          </svg>
        </a>
      </div>

      <div class="space-y-4">
       <div class="px-10">
            <img src="../images/fastDelivery.png" alt="" />
        </div>
        <h3 class="text-2xl font-bold leading-tight text-gray-900 dark:text-black">
          Management system
        </h3>
        <p class="text-lg font-normal text-gray-500 dark:text-gray-400">
          Flowbite helps you connect with friends, family and communities of people who share your interests.
        </p>
        <a href="#" title=""
          class="text-white bg-primary-700 justify-center hover:bg-primary-800 inline-flex items-center  focus:ring-4 focus:outline-none focus:ring-primary-300 font-medium rounded-lg text-sm px-5 py-2.5 text-center dark:bg-primary-600 dark:hover:bg-primary-700 dark:focus:ring-primary-800"
          role="button">
          View case study
          <svg aria-hidden="true" class="w-5 h-5 ml-2 -mr-1" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 20 20"
            fill="currentColor">
            <path fill-rule="evenodd"
              d="M12.293 5.293a1 1 0 011.414 0l4 4a1 1 0 010 1.414l-4 4a1 1 0 01-1.414-1.414L14.586 11H3a1 1 0 110-2h11.586l-2.293-2.293a1 1 0 010-1.414z"
              clip-rule="evenodd" />
          </svg>
        </a>
      </div>

      <div class="space-y-4">
        <div class="px-10">
            <img src="../images/varietyGrocery.png" alt="" />
        </div>
        <h3 class="text-2xl font-bold leading-tight text-gray-900 dark:text-black">
          Logo design
        </h3>
        <p class="text-lg font-normal text-gray-500 dark:text-gray-400">
          Flowbite helps you connect with friends, family and communities of people who share your interests.
        </p>
        <a href="#" title=""
          class="text-white bg-primary-700 justify-center hover:bg-primary-800 inline-flex items-center  focus:ring-4 focus:outline-none focus:ring-primary-300 font-medium rounded-lg text-sm px-5 py-2.5 text-center dark:bg-primary-600 dark:hover:bg-primary-700 dark:focus:ring-primary-800"
          role="button">
          View case study
          <svg aria-hidden="true" class="w-5 h-5 ml-2 -mr-1" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 20 20"
            fill="currentColor">
            <path fill-rule="evenodd"
              d="M12.293 5.293a1 1 0 011.414 0l4 4a1 1 0 010 1.414l-4 4a1 1 0 01-1.414-1.414L14.586 11H3a1 1 0 110-2h11.586l-2.293-2.293a1 1 0 010-1.414z"
              clip-rule="evenodd" />
          </svg>
        </a>
      </div>
    </div>
  </div>
</section>
</asp:Content>
