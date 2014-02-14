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
            <div class="col-xs-3">
                Last Name:<asp:DropDownList ID="dlLastName" runat="server" 
                    DataSourceID="SqlDataSource" 
                    DataTextField="LastName" DataValueField="EmployeeID"></asp:DropDownList>
            </div>
            <div class="col-xs-3">
                <asp:Button ID="btnGo" runat="server" Text="Go" OnClick="btnGo_Click" />
            </div>
             <div class="col-xs-3">
                <asp:Button ID="btnShowReports" runat="server" Text="ShowReports" OnClick="btnShowReports_Click" />
            </div>
        </div>
        <div class="row">
            <div class="col-xs-12">
                <asp:Label ID="lblErrors" runat="server" Text="" Visible="false"></asp:Label>
                <asp:GridView ID="gvSales" runat="server" Visible="False" EnableModelValidation="True" 
                    AutoGenerateColumns="False">
                    <Columns>
                        <asp:BoundField DataField="LastName" HeaderText="LastName" SortExpression="LastName" />
                        <asp:BoundField DataField="FirstName" HeaderText="FirstName" SortExpression="FirstName" />
                        <asp:BoundField DataField="TerritoryDescription" HeaderText="TerritoryDescription" SortExpression="TerritoryDescription" />
                        <asp:BoundField DataField="RegionDescription" HeaderText="RegionDescription" SortExpression="RegionDescription" />
                    </Columns>
                </asp:GridView>
            </div>
        </div>
    </div>
    
    <asp:SqlDataSource ID="SqlDataSource" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
        SelectCommand="SELECT EmployeeID, LastName FROM Employees e"></asp:SqlDataSource>
    
</asp:Content>


<asp:Content ID="Content4" ContentPlaceHolderID="footer" runat="server">
    Acme 2014
</asp:Content>
