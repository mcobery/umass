<%@ Page Title="" Language="C#" MasterPageFile="~/Demo.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Demo.Default" %>
<asp:Content ID="Content1" ContentPlaceHolderID="header" runat="server">
    Sales Report
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="navigation" runat="server">
        <li><a href="http://foursquare.com">4sq</a></li>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="main" runat="server">
    <div class="container bs-docs-container">
        <div class="row">
            <div class="col-xs-4">
                Last Name:<asp:DropDownList ID="dlLastName" runat="server" DataSourceID="SqlDataSource" DataTextField="LastName" DataValueField="LastName"></asp:DropDownList>
            </div>
            <div class="col-xs-5">
                <asp:Button ID="btnGo" runat="server" Text="Go" />
            </div>
        </div>
    </div>
    
    <asp:SqlDataSource ID="SqlDataSource" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [LastName] FROM [Employees] ORDER BY [LastName]"></asp:SqlDataSource>
</asp:Content>

<asp:Content ID="Content4" ContentPlaceHolderID="footer" runat="server">
    Acme 2014
</asp:Content>
