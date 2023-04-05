<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Profile.aspx.cs" Inherits="Groceries.Customer.Profile" MasterPageFile="~/MasterPage/MyProfile.master"%>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <div>
        

        <formview>
            <div>
                <asp:PlaceHolder ID="PlaceHolder1" runat="server"></asp:PlaceHolder>
            </div>
        </formview>
        <br /> 
        <asp:FormView ID="FormView1" runat="server">

            <ItemTemplate>
                Personal Information<br />
                <table style="width:100%;">
                    <tr>
                        <td style="width: 233px">Full Name</td>
                        <td>
                            <asp:Label ID="displayFName" runat="server"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td style="width: 233px">Phone Number</td>
                        <td>
                            <asp:Label ID="lblPNumber" runat="server"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td style="width: 233px">Email Address</td>
                        <td>
                            <asp:Label ID="lbl" runat="server" Text="Label"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td style="width: 233px">Birthday</td>
                        <td>
                            <asp:Label ID="Label4" runat="server" Text="Label"></asp:Label>
                        </td>
                    </tr>
                </table>
                <br />
                
            </ItemTemplate>
            

        </asp:FormView>

    </div>
</asp:Content>
