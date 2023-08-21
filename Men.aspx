<%@ Page Title="" Language="C#" MasterPageFile="~/Client.Master" AutoEventWireup="true" CodeBehind="Men.aspx.cs" Inherits="WebApplication3.Men" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

     <asp:DataList ID="dtListProducts" runat="server" CellPadding="75" ForeColor="#333333" RepeatColumns="4">
        <AlternatingItemStyle BackColor="White" ForeColor="#284775" />
        <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
        <ItemStyle BackColor="#F7F6F3" ForeColor="#333333" />
        <ItemTemplate>
            <table style="width: 220px;" cellspacing="2" cellpadding="2">
                <tr>
                    <td><b>Product Name:</b> <%#DataBinder.Eval(Container.DataItem, "Name")%></td>
                </tr>
                <tr>
                    <td><b>Description:</b> <%#DataBinder.Eval(Container.DataItem, "Description")%></td>
                </tr>
                                <tr>
                    <td><b>Normal Price:</b> <%#DataBinder.Eval(Container.DataItem, "NormalPrice")%></td>
                </tr>
                <tr>
                    <td>
                        <img src="<%#DataBinder.Eval(Container.DataItem, "ImageURL")%>" style="width:100%; height:100px; /></td>
                </tr>
                <tr>
                    <td>
                         <asp:HyperLink ID="lnkAddToCart" runat="server" NavigateUrl='<%# Eval("id") %>' Text='Add to cart' />
                </tr>
                <tr>
                    <td>
                        <asp:HyperLink ID="lnkBuyNow" runat="server" NavigateUrl='<%# Eval("id") %>' Text='Buy Now' />

                    </td>
                </tr>
            </table>
        </ItemTemplate>
        <SelectedItemStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
    </asp:DataList>

</asp:Content>
