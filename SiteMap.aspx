<%@ Page Title="" Language="C#" MasterPageFile="~/2colMaster.master" AutoEventWireup="true" CodeFile="SiteMap.aspx.cs" Inherits="Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="LeftContent" Runat="Server">
    <h1>
        Site Map
    </h1>
    <p>
    Please use the following buttons, called a "site map" or "site tree", to navigate the site without getting lost. "Home" refers to the main website's page.
    </p>

    <asp:TreeView ID="TreeView1" runat="server" DataSourceID="SiteMapDataSource1">
        <HoverNodeStyle  />
    </asp:TreeView>
    <asp:SiteMapDataSource ID="SiteMapDataSource1" runat="server" />
</asp:Content>


