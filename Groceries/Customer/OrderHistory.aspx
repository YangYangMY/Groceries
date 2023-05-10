<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="OrderHistory.aspx.cs" Inherits="Groceries.Customer.OrderHistory" MasterPageFile="~/MasterPage/MyProfile.master"%>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <div>
        <div class="py-4 2xl:container xl:mx-auto">
            <div class="" style="min-width:800px">
                <div class="border-gray-900/10 py-4 md:py-6 md:p-6 xl:p-8 w-full" >
                    <div class="flex justify-start item-start space-y-2 flex-col">
                        <h1 class="pb-4 text-2xl lg:text-3xl font-semibold leading-7 lg:leading-9 text-gray-800">Order Tracking</h1>
                    </div> 


                    <asp:Repeater ID="Repeater1" runat="server">
                        <ItemTemplate> 


                        </ItemTemplate>
                    </asp:Repeater>

                    <div class="rounded-lg bg-white shadow-lg border p-6 space-y-6">
                        <h1 class="pb-4 text-xl lg:text-2xl font-semibold leading-7 lg:leading-9 text-gray-800">Order: </h1>
                        <div class="flex justify-start space-x-12 items-start w-full">
                            <p class="text-base xl:text-lg leading-6">Ordered Date:</p>
                            <p class="text-base xl:text-lg leading-6 text-gray-800">4/5/2023 1:18pm</p>
                        </div>
                    </div>

                  </div>   
                </div>
            </div>
    </div>
        
</asp:Content>

