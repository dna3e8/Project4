<%@ Page Title="Login" Language="C#" MasterPageFile="~/2colSSL.master" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="LeftContent" Runat="Server">

    <asp:Login ID="Login1" runat="server" CreateUserUrl="~/CreateUser.aspx" >
    </asp:Login>

    <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/CreateUser.aspx">Register for a New Account </asp:HyperLink>

</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="RightContent" Runat="Server">
</asp:Content>

