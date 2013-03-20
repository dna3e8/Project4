<%@ Page Title="" Language="C#" MasterPageFile="~/2colMaster.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="LeftContent" Runat="Server">
    <h1>
        Welcome to Candies Secret!
    </h1>
    <asp:Image ID="Image1" runat="server" AlternateText="Truffles"  CssClass="moveright" ImageUrl="~/Images/Welcome.png" />
    <p>
        
        This is the place to order treats delivered straight to your home, in packaging that says "I ordered cute shoes." Never again will someone see you buying candy at the grocery store and speculating about your weight or diet. Plus, Candie's secret sells a variety of specialty items that you cannot get anywhere else! So enjoy shopping on the site!    
    </p>
</asp:Content>


