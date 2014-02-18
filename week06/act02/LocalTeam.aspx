<%@ Page Title="" Language="C#" MasterPageFile="~/Demo.Master" AutoEventWireup="true" CodeBehind="LocalTeam.aspx.cs" Inherits="Demo.LocalTeam" %>
<asp:Content ID="Content1" ContentPlaceHolderID="header" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="navigation" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="main" runat="server">
    <asp:RadioButtonList runat="server" ID="rlSelect" AutoPostBack="True" OnSelectedIndexChanged="rlSelect_SelectedIndexChanged">
        <asp:ListItem>Grid</asp:ListItem>
        <asp:ListItem>Details</asp:ListItem>
        <asp:ListItem>DataList</asp:ListItem>
        <asp:ListItem>Repeater</asp:ListItem>
        <asp:ListItem>FormView</asp:ListItem>
    </asp:RadioButtonList>

    <asp:FormView ID="fvEmployees" runat="server" AllowPaging="True" DataSourceID="SqlDataSource1" EnableModelValidation="True" Visible="False">
        <ItemTemplate>
            <asp:Button ID="Button2" runat="server" OnClientClick='<%# CreateAlert(Eval("LastName").ToString()) %>' Text='<%# Eval("LastName") %>' />
        </ItemTemplate>
    </asp:FormView>

    <asp:Repeater ID="reEmployees" runat="server" DataSourceID="SqlDataSource1" Visible="False">
        <ItemTemplate>
            <asp:Button ID="Button1" runat="server" Text='<%# Eval("FirstName") %>' 
                OnClientClick='<%# CreateAlert(Eval("LastName").ToString()) %>' />
        </ItemTemplate>
    </asp:Repeater>

    <asp:DataList ID="dlEmployees" runat="server" DataSourceID="SqlDataSource1" Visible="False">
        <ItemTemplate>
            <asp:Button ID="Button1" runat="server" Text='<%# Eval("LastName") %>' 
                OnClientClick='<%# CreateAlert(Eval("LastName").ToString()) %>' />
        </ItemTemplate>
    </asp:DataList>

    <asp:DetailsView ID="dvEmployees" runat="server" DataSourceID="SqlDataSource1" EnableModelValidation="True" Height="50px" Visible="False" Width="125px" AutoGenerateRows="False" AllowPaging="True">
        <Fields>
            <asp:BoundField DataField="LastName" HeaderText="LastName" SortExpression="LastName" />
            <asp:BoundField DataField="FirstName" HeaderText="FirstName" SortExpression="FirstName" />
            <asp:BoundField DataField="HireDate" HeaderText="HireDate" SortExpression="HireDate" />
            <asp:BoundField DataField="Address" HeaderText="Address" SortExpression="Address" />
            <asp:BoundField DataField="City" HeaderText="City" SortExpression="City" />
            <asp:BoundField DataField="Region" HeaderText="Region" SortExpression="Region" />
        </Fields>
    </asp:DetailsView>

    <asp:GridView ID="gvLocalTeam" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" EnableModelValidation="True">
        <Columns>
            <asp:BoundField DataField="LastName" HeaderText="LastName" SortExpression="LastName" />
            <asp:BoundField DataField="FirstName" HeaderText="FirstName" SortExpression="FirstName" />
            <asp:BoundField DataField="HireDate" HeaderText="HireDate" SortExpression="HireDate" />
            <asp:BoundField DataField="Address" HeaderText="Address" SortExpression="Address" />
            <asp:BoundField DataField="City" HeaderText="City" SortExpression="City" />
            <asp:BoundField DataField="Region" HeaderText="Region" SortExpression="Region" />
        </Columns>
    </asp:GridView>

    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [LastName], [FirstName], [HireDate], [Address], [City], [Region] FROM [Employees] WHERE (([ReportsTo] = @ReportsTo) AND ([Region] = @Region))">
        <SelectParameters>
            <asp:QueryStringParameter DefaultValue="2" Name="ReportsTo" QueryStringField="empid" Type="Int32" />
            <asp:QueryStringParameter DefaultValue="WA" Name="Region" QueryStringField="region" Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="footer" runat="server">
</asp:Content>
