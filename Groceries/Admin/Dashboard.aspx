<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Dashboard.aspx.cs" Inherits="Groceries.Dashboard" MasterPageFile="~/MasterPage/Admin.master" %>


<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1 class="mb-4 text-3xl font-bold text-black md:text-4xl lg:text-3xl">Dashboard</h1>
    <h1 class="pt-4 mt-4 space-y-2 font-medium border-t border-gray-200 dark:border-gray-700"></h1>
    <!--Total Profit, orders, products -->
    <div class="grid md:grid-cols-2 xl:grid-cols-3 gap-10 my-2">
        <div class="flex items-center p-8 bg-white shadow rounded-lg shadow-xl border-solid border-2">
            <div class="inline-flex flex-shrink-0 items-center justify-center h-16 w-16 text-purple-600 bg-purple-100 rounded-full mr-6">
                <img class="mx-4 object-cover w-full rounded-t-lg h-30 md:h-20 md:w-20 md:rounded-none md:rounded-l-lg" src="../images/save-money.gif" alt="">
            </div>
            <div>
                <span class="block text-1xl font-bold text-[#4B49AC]">Total Profit</span>
                <span class="block text-2xl text-black font-bold">RM 5,000.20</span>
            </div>
        </div>
        <div class="flex items-center p-8 bg-white shadow rounded-lg shadow-xl border-solid border-2">
            <div class="inline-flex flex-shrink-0 items-center justify-center h-16 w-16 text-purple-600 bg-purple-100 rounded-full mr-6">
                <img class="mx-4 object-cover w-full rounded-t-lg h-30 md:h-20 md:w-20 md:rounded-none md:rounded-l-lg" src="../images/shopping-cart.gif" alt="">
            </div>
            <div>
                <span class="block text-1xl font-bold text-[#4B49AC]">Total Orders</span>
                <span class="block text-2xl text-black font-bold">400</span>
            </div>
        </div>
        <div class="flex items-center p-8 bg-white shadow rounded-lg shadow-xl border-solid border-2">
            <div class="inline-flex flex-shrink-0 items-center justify-center h-16 w-16 text-purple-600 bg-purple-100 rounded-full mr-6">
                <img class="mx-4 object-cover w-full rounded-t-lg h-30 md:h-20 md:w-20 md:rounded-none md:rounded-l-lg" src="../images/shopping-basket.gif" alt="">
            </div>
            <div>
                <span class="block text-1xl font-bold text-[#4B49AC]">Total Products</span>
                <span class="block text-2xl text-black font-bold">40</span>
            </div>
        </div>
    </div>

    <!--end -->


    <div class="grid md:grid-cols-2 xl:grid-cols-3 gap-10 my-10 ">
        <!--Line Chart-->
        <!-- Component Start -->
        <div class="flex flex-col items-center w-auto max-w-screen-md p-6 pb-6 bg-white rounded-lg shadow-xl sm:p-8 col-span-2  border-solid border-2">
            <h2 class="text-xl font-bold">Monthly Revenue</h2>
            <span class="text-sm font-semibold text-gray-500">2022 - 2023</span>
            <div class="flex items-end flex-grow w-full mt-2 space-x-2 sm:space-x-3">
                <div class="relative flex flex-col items-center flex-grow pb-5 group">
                    <span class="absolute top-0 hidden -mt-6 text-xs font-bold group-hover:block">$37,500</span>
                    <div class="relative flex justify-center w-full h-8 bg-indigo-200"></div>
                    <div class="relative flex justify-center w-full h-6 bg-indigo-300"></div>
                    <div class="relative flex justify-center w-full h-16 bg-indigo-400"></div>
                    <span class="absolute bottom-0 text-xs font-bold">Mar</span>
                </div>
                <div class="relative flex flex-col items-center flex-grow pb-5 group">
                    <span class="absolute top-0 hidden -mt-6 text-xs font-bold group-hover:block">$45,000</span>
                    <div class="relative flex justify-center w-full h-10 bg-indigo-200"></div>
                    <div class="relative flex justify-center w-full h-6 bg-indigo-300"></div>
                    <div class="relative flex justify-center w-full h-20 bg-indigo-400"></div>
                    <span class="absolute bottom-0 text-xs font-bold">Apr</span>
                </div>
                <div class="relative flex flex-col items-center flex-grow pb-5 group">
                    <span class="absolute top-0 hidden -mt-6 text-xs font-bold group-hover:block">$47,500</span>
                    <div class="relative flex justify-center w-full h-10 bg-indigo-200"></div>
                    <div class="relative flex justify-center w-full h-8 bg-indigo-300"></div>
                    <div class="relative flex justify-center w-full h-20 bg-indigo-400"></div>
                    <span class="absolute bottom-0 text-xs font-bold">May</span>
                </div>
                <div class="relative flex flex-col items-center flex-grow pb-5 group">
                    <span class="absolute top-0 hidden -mt-6 text-xs font-bold group-hover:block">$50,000</span>
                    <div class="relative flex justify-center w-full h-10 bg-indigo-200"></div>
                    <div class="relative flex justify-center w-full h-6 bg-indigo-300"></div>
                    <div class="relative flex justify-center w-full h-24 bg-indigo-400"></div>
                    <span class="absolute bottom-0 text-xs font-bold">Jun</span>
                </div>
                <div class="relative flex flex-col items-center flex-grow pb-5 group">
                    <span class="absolute top-0 hidden -mt-6 text-xs font-bold group-hover:block">$47,500</span>
                    <div class="relative flex justify-center w-full h-10 bg-indigo-200"></div>
                    <div class="relative flex justify-center w-full h-8 bg-indigo-300"></div>
                    <div class="relative flex justify-center w-full h-20 bg-indigo-400"></div>
                    <span class="absolute bottom-0 text-xs font-bold">Jul</span>
                </div>
                <div class="relative flex flex-col items-center flex-grow pb-5 group">
                    <span class="absolute top-0 hidden -mt-6 text-xs font-bold group-hover:block">$55,000</span>
                    <div class="relative flex justify-center w-full h-12 bg-indigo-200"></div>
                    <div class="relative flex justify-center w-full h-8 bg-indigo-300"></div>
                    <div class="relative flex justify-center w-full h-24 bg-indigo-400"></div>
                    <span class="absolute bottom-0 text-xs font-bold">Aug</span>
                </div>
                <div class="relative flex flex-col items-center flex-grow pb-5 group">
                    <span class="absolute top-0 hidden -mt-6 text-xs font-bold group-hover:block">$60,000</span>
                    <div class="relative flex justify-center w-full h-12 bg-indigo-200"></div>
                    <div class="relative flex justify-center w-full h-16 bg-indigo-300"></div>
                    <div class="relative flex justify-center w-full h-20 bg-indigo-400"></div>
                    <span class="absolute bottom-0 text-xs font-bold">Sept</span>
                </div>
                <div class="relative flex flex-col items-center flex-grow pb-5 group">
                    <span class="absolute top-0 hidden -mt-6 text-xs font-bold group-hover:block">$57,500</span>
                    <div class="relative flex justify-center w-full h-12 bg-indigo-200"></div>
                    <div class="relative flex justify-center w-full h-10 bg-indigo-300"></div>
                    <div class="relative flex justify-center w-full h-24 bg-indigo-400"></div>
                    <span class="absolute bottom-0 text-xs font-bold">Oct</span>
                </div>
                <div class="relative flex flex-col items-center flex-grow pb-5 group">
                    <span class="absolute top-0 hidden -mt-6 text-xs font-bold group-hover:block">$67,500</span>
                    <div class="relative flex justify-center w-full h-12 bg-indigo-200"></div>
                    <div class="relative flex justify-center w-full h-10 bg-indigo-300"></div>
                    <div class="relative flex justify-center w-full h-32 bg-indigo-400"></div>
                    <span class="absolute bottom-0 text-xs font-bold">Nov</span>
                </div>
                <div class="relative flex flex-col items-center flex-grow pb-5 group">
                    <span class="absolute top-0 hidden -mt-6 text-xs font-bold group-hover:block">$65,000</span>
                    <div class="relative flex justify-center w-full h-12 bg-indigo-200"></div>
                    <div class="relative flex justify-center w-full h-12 bg-indigo-300"></div>
                    <div class="relative flex justify-center w-full bg-indigo-400 h-28"></div>
                    <span class="absolute bottom-0 text-xs font-bold">Dec</span>
                </div>
                <div class="relative flex flex-col items-center flex-grow pb-5 group">
                    <span class="absolute top-0 hidden -mt-6 text-xs font-bold group-hover:block">$70,000</span>
                    <div class="relative flex justify-center w-full h-8 bg-indigo-200"></div>
                    <div class="relative flex justify-center w-full h-8 bg-indigo-300"></div>
                    <div class="relative flex justify-center w-full h-40 bg-indigo-400"></div>
                    <span class="absolute bottom-0 text-xs font-bold">Jan</span>
                </div>
                <div class="relative flex flex-col items-center flex-grow pb-5 group">
                    <span class="absolute top-0 hidden -mt-6 text-xs font-bold group-hover:block">$75,000</span>
                    <div class="relative flex justify-center w-full h-12 bg-indigo-200"></div>
                    <div class="relative flex justify-center w-full h-8 bg-indigo-300"></div>
                    <div class="relative flex justify-center w-full h-40 bg-indigo-400"></div>
                    <span class="absolute bottom-0 text-xs font-bold">Feb</span>
                </div>
            </div>
            <div class="flex w-full mt-3">
                <div class="flex items-center ml-auto">
                    <span class="block w-4 h-4 bg-indigo-400"></span>
                    <span class="ml-1 text-xs font-medium">Existing</span>
                </div>
                <div class="flex items-center ml-4">
                    <span class="block w-4 h-4 bg-indigo-300"></span>
                    <span class="ml-1 text-xs font-medium">Upgrades</span>
                </div>
                <div class="flex items-center ml-4">
                    <span class="block w-4 h-4 bg-indigo-200"></span>
                    <span class="ml-1 text-xs font-medium">New</span>
                </div>
            </div>
        </div>
        <!-- Component End  -->


        <!--Doughnut Chart-->
        <div class="overflow-hidden rounded-lg shadow-lg border-solid border-2">
            <div
                class="text-xl font-bold py-5 px-5 bg-white text-black text-center">
                Product Trends
            </div>
            <canvas class="p-10" id="chartDoughnut"></canvas>
        </div>

        <!-- Required chart.js -->
        <script src="https://cdn.jsdelivr.net/npm/chart.js"></script>

        <!-- Chart doughnut -->
        <script>
            const dataDoughnut = {
                labels: ["Bread", "Sushi", "Drinks"],
                datasets: [
                    {
                        label: "My First Dataset",
                        data: [300, 50, 100],
                        backgroundColor: [
                            "rgb(100,200,1)",
                            "#F6BD60",
                            "rgb(1, 5, 51)",
                        ],
                        hoverOffset: 4,
                    },
                ],
            };

            const configDoughnut = {
                type: "doughnut",
                data: dataDoughnut,
                options: {},
            };

            var chartBar = new Chart(
                document.getElementById("chartDoughnut"),
                configDoughnut
            );
        </script>
    </div>



    <!--Latest Orders-->
        <div class="bg-white shadow rounded-lg p-4 sm:p-6 xl:p-8 my-5  border-solid border-2">
            <div class="mb-4 flex items-center justify-between">
                <div>
                    <h3 class="text-xl font-bold text-gray-900 mb-2">Latest Orders</h3>
                </div>
                <div class="flex-shrink-0">
                    <a href="Orders.aspx" class="text-sm font-medium text-cyan-600 hover:bg-gray-100 rounded-lg p-2">View all</a>
                </div>
            </div>
            <div class="flex flex-col mt-8">
                <div class="overflow-x-auto rounded-lg">
                    <div class="align-middle inline-block min-w-full">
                        <div class="shadow overflow-hidden sm:rounded-lg">
                            <table class="min-w-full divide-y divide-gray-200">
                                <thead class="bg-gray-50">
                                    <tr>
                                        <th scope="col" class="p-4 text-left text-xs font-medium text-gray-500 uppercase tracking-wider">Order ID
                                        </th>
                                        <th scope="col" class="p-4 text-left text-xs font-medium text-gray-500 uppercase tracking-wider">Buyer
                                        </th>
                                        <th scope="col" class="p-4 text-left text-xs font-medium text-gray-500 uppercase tracking-wider">Date
                                        </th>
                                        <th scope="col" class="p-4 text-left text-xs font-medium text-gray-500 uppercase tracking-wider">Amount
                                        </th>
                                    </tr>
                                </thead>
                                <tbody class="bg-white">
                                    <tr>
                                        <td class="p-4 whitespace-nowrap text-sm font-normal text-gray-900">1005 
                                        </td>
                                        <td class=" p-4 whitespace-nowrap text-sm font-semibold">Bonnie Green
                                        </td>
                                        <td class="p-4 whitespace-nowrap text-sm font-normal text-gray-500">Apr 23 ,2021
                                        </td>
                                        <td class="p-4 whitespace-nowrap text-sm font-semibold text-gray-900">RM 1300
                                        </td>
                                        <td class="p-4 whitespace-nowrap text-sm font-semibold text-gray-900">
                                            <a href="Orders.aspx" class="text-sm font-medium text-cyan-600 hover:bg-gray-100 rounded-lg p-2">View</a>
                                        </td>
                                    </tr>
                                    <tr class="bg-gray-50">
                                        <td class="p-4 whitespace-nowrap text-sm font-normal text-gray-900 rounded-lg rounded-left">1004
                                        </td>
                                        <td class=" p-4 whitespace-nowrap text-sm font-semibold">Yong Yue
                                        </td>
                                        <td class="p-4 whitespace-nowrap text-sm font-normal text-gray-500">Apr 23 ,2021
                                        </td>
                                        <td class="p-4 whitespace-nowrap text-sm font-semibold text-gray-900">RM 500
                                        </td>
                                        <td class="p-4 whitespace-nowrap text-sm font-semibold text-gray-900">
                                            <a href="Orders.aspx" class="text-sm font-medium text-cyan-600 hover:bg-gray-100 rounded-lg p-2">View</a>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="p-4 whitespace-nowrap text-sm font-normal text-gray-900">1003
                                        </td>
                                        <td class=" p-4 whitespace-nowrap text-sm font-semibold">Ga Men
                                        </td>
                                        <td class="p-4 whitespace-nowrap text-sm font-normal text-gray-500">Apr 18 ,2021
                                        </td>
                                        <td class="p-4 whitespace-nowrap text-sm font-semibold text-gray-900">RM 434
                                        </td>
                                        <td class="p-4 whitespace-nowrap text-sm font-semibold text-gray-900">
                                            <a href="Orders.aspx" class="text-sm font-medium text-cyan-600 hover:bg-gray-100 rounded-lg p-2">View</a>
                                        </td>
                                    </tr>
                                    <tr class="bg-gray-50">
                                        <td class="p-4 whitespace-nowrap text-sm font-normal text-gray-900 rounded-lg rounded-left">1002
                                        </td>
                                        <td class=" p-4 whitespace-nowrap text-sm font-semibold">Chia Chia
                                        </td>
                                        <td class="p-4 whitespace-nowrap text-sm font-normal text-gray-500">Apr 15 ,2021
                                        </td>
                                        <td class="p-4 whitespace-nowrap text-sm font-semibold text-gray-900">RM 450
                                        </td>
                                        <td class="p-4 whitespace-nowrap text-sm font-semibold text-gray-900">
                                            <a href="Orders.aspx" class="text-sm font-medium text-cyan-600 hover:bg-gray-100 rounded-lg p-2">View</a>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="p-4 whitespace-nowrap text-sm font-normal text-gray-900">1001
                                        </td>
                                        <td class=" p-4 whitespace-nowrap text-sm font-semibold">Wee Yan
                                        </td>
                                        <td class="p-4 whitespace-nowrap text-sm font-normal text-gray-500">Apr 15 ,2021
                                        </td>
                                        <td class="p-4 whitespace-nowrap text-sm font-semibold text-gray-900">RM 200
                                        </td>
                                        <td class="p-4 whitespace-nowrap text-sm font-semibold text-gray-900">
                                            <a href="Orders.aspx" class="text-sm font-medium text-cyan-600 hover:bg-gray-100 rounded-lg p-2">View</a>
                                        </td>
                                    </tr>
                            </table>
                        </div>
                    </div>
                </div>
            </div>
        </div>
</asp:Content>
