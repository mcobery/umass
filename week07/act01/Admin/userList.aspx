<%@ Page Title="" Language="C#" MasterPageFile="~/Demo.Master" AutoEventWireup="true" CodeBehind="userList.aspx.cs" Inherits="Demo.Admin.userList" %>
<asp:Content ID="Content1" ContentPlaceHolderID="header" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="navigation" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="main" runat="server">
    <asp:gridview ID="gvUsers" runat="server" AutoGenerateColumns="False" DataSourceID="sqlUsers" EnableModelValidation="True">
        <Columns>
            <asp:BoundField DataField="UserName" HeaderText="UserName" SortExpression="UserName" />
            <asp:BoundField DataField="RoleName" HeaderText="RoleName" SortExpression="RoleName" />
        </Columns>
    </asp:gridview>
    <asp:SqlDataSource ID="sqlUsers" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT u.UserName, r.RoleName
  FROM aspnet_Users u
  JOIN aspnet_UsersInRoles ur ON u.UserId = ur.UserId
  JOIN aspnet_Roles r ON ur.RoleId = r.RoleId
  WHERE u.ApplicationId in (SELECT [ApplicationId]
                         FROM aspnet_Applications a
                         WHERE a.ApplicationName = 'Demo');"></asp:SqlDataSource>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="footer" runat="server">
</asp:Content>
