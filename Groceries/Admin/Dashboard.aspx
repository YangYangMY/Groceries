<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Dashboard.aspx.cs" Inherits="Groceries.Dashboard" MasterPageFile="~/MasterPage/Admin.master" %>


<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1 class="mb-4 text-3xl font-bold text-black md:text-4xl lg:text-3xl">Hi, welcome back!</h1>

    <!--Total Profit, orders, products-->
    <div class="grid grid-cols-3 gap-10">
        <div class="w-full mx-auto px-0 py-5 ">
            <div class="pt-6 text-center bg-white rounded">
                <img class=" mx-auto justify-center items-center  md:h-auto md:w-20 " src="../images/save-money.gif" alt="">
                <div class="flex flex-col justify-between p-4 leading-normal">
                    <h5 class="mb-2 text-1.5xl font-bold tracking-tight text-[#4B49AC]">Total Profit</h5>
                    <h1 class="mb-1 text-2xl font-bold dark:text-black">RM 5,000.20</h1>
                    <span class="inline-block py-2 px-3 mb-2 text-xs text-white bg-green-500 rounded-full my-1">+RM1,015</span>
                </div>
            </div>
        </div>
        <div class="w-full mx-auto px-0 py-5 ">
            <div class="pt-6 text-center bg-white rounded">
                <img class=" mx-auto justify-center items-center  md:h-auto md:w-20 " src="../images/shopping-cart.gif" alt="">
                <div class="flex flex-col justify-between p-4 leading-normal">
                    <h5 class="mb-2 text-1.5xl font-bold tracking-tight text-[#4B49AC]">Total Orders</h5>
                    <h1 class="mb-1 text-2xl font-bold dark:text-black  my-1">400</h1>
                    <a href="Orders.aspx">
                        <button type="button" class="text-white bg-gradient-to-br from-purple-600 to-blue-500 hover:bg-gradient-to-bl focus:ring-4 focus:outline-none focus:ring-blue-300 dark:focus:ring-blue-800 font-medium rounded-lg text-sm px-5 py-2.5 text-center ">View Orders</button>
                    </a>
                </div>
            </div>
        </div>
        <div>
            <div class="w-full mx-auto px-0 py-5 ">
                <div class="pt-6 text-center bg-white rounded">
                    <img class=" mx-auto justify-center items-center  md:h-auto md:w-20 " src="../images/shopping-basket.gif" alt="">
                    <div class="flex flex-col justify-between p-4 leading-normal">
                        <h5 class="mb-2 text-1.5xl font-bold tracking-tight text-[#4B49AC]">Total Products</h5>
                        <h1 class="mb-1 text-2xl font-bold dark:text-black my-1">45</h1>
                        <a href="ProductList.aspx">
                            <button href="ProductList.aspx" type="button" class="text-white bg-gradient-to-br from-purple-600 to-blue-500 hover:bg-gradient-to-bl focus:ring-4 focus:outline-none focus:ring-blue-300 dark:focus:ring-blue-800 font-medium rounded-lg text-sm px-5 py-2.5 text-center ">View Products</button>
                        </a>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <!--Line Chart-->
    <div class="grid grid-cols-3 gap-10 ">

        <div class="block  p-6 bg-white border border-gray-200 rounded-lg shadow col-span-2">
            <h5 class="mb-2 text-2xl font-bold tracking-tight text-gray-900 dark:text-black">Sales Satistics</h5>
            <span class="text-base font-normal text-gray-500">Recent month</span>
            <div class="overflow-hidden rounded-lg shadow-lg">
                <canvas class="p-10" id="chartLine"></canvas>
            </div>

            <!-- Required chart.js -->
            <script src="https://cdn.jsdelivr.net/npm/chart.js"></script>

            <!-- Chart line -->
            <script>
                const labels = ["October", "November", "December", "January", "Feburary", "March"];
                const data = {
                    labels: labels,
                    datasets: [
                        {
                            label: "Sales Satistics Oct 2022 - March 2023",
                            backgroundColor: "hsl(217, 57%, 51%)",
                            borderColor: "hsl(217, 57%, 51%)",
                            data: [500, 1500, 600, 1000, 500, 1400],
                        },
                    ],
                };

                const configLineChart = {
                    type: "line",
                    data,
                    options: {},
                };

                var chartLine = new Chart(
                    document.getElementById("chartLine"),
                    configLineChart
                );
            </script>
        </div>

        <!--Doughnut Chart-->
        <div class="block max-w-full p-6 bg-white border border-gray-200 rounded-lg shadow ">
            <h5 class="mb-2 text-2xl font-bold tracking-tight text-gray-900 dark:text-black">Trends</h5>
            <span class="text-base font-normal text-gray-500">Product Categories</span>
            </br></br>
            <div class="overflow-hidden rounded-lg shadow-lg">
                <canvas class="p-10" id="chartDoughnut"></canvas>
            </div>

            <!-- Required chart.js -->
            <script src="https://cdn.jsdelivr.net/npm/chart.js"></script>

            <!-- Chart doughnut -->
            <script>
                const dataDoughnut = {
                    labels: ["Foods", "Drinks", "Diary"],
                    datasets: [
                        {
                            label: "Product Category",
                            data: [300, 500, 100],
                            backgroundColor: [
                                "rgb(133, 105, 241)",
                                "rgb(164, 101, 241)",
                                "rgb(101, 143, 241)",
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
    </div>

    <!--Latest Orders-->
    <div class="grid grid-cols-1 gap-10 ">
        <div class="bg-white shadow rounded-lg p-4 sm:p-6 xl:p-8 my-5 ">
            <div class="mb-4 flex items-center justify-between">
                <div>
                    <h3 class="text-xl font-bold text-gray-900 mb-2">Latest Orders</h3>
                </div>
                <div class="flex-shrink-0">
                    <a href="#" class="text-sm font-medium text-cyan-600 hover:bg-gray-100 rounded-lg p-2">View all</a>
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
                                    </tr>
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>



</asp:Content>
