<%@ Page Title="" Language="C#" MasterPageFile="~/2colMaster.master" AutoEventWireup="true" CodeFile="AboutUs.aspx.cs" Inherits="Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="LeftContent" Runat="Server">
    <h1>
        Our History
    </h1>
    <p>
        Candie is a Mother and homemaker who realized the demand for women to secretly buy candy and sweets for their personal stashes. She found a website designer and a money backer - both friends - to create this business website and share the business ownership
    </p>
    <h2>
        The Owners:
    </h2>
    <h3>
        Candie
    </h3>
    <asp:Image ID="Image2" runat="server" AlternateText="Canie"  CssClass="imageleft"  ImageUrl="~/Images/Candie.png" />
    <p >
        Candie is married and has two girls. She loves cooking and is always coming up with great ideas and projects. She got her cooking certificate from Arizona Culinary Institute. Candie does the marketing for the business as well as updates and adds new products.
    </p>
    <h3>
    Gloria
    </h3>
    <asp:Image ID="Image1" runat="server" AlternateText="Gloria"  CssClass="imageright" ImageUrl="~/Images/Gloria.png" />
    <p>
        Gloria is a financial advisor at Liberty Financial and is a close friend of Candie's. She invested well and is the financial backer for this business. Gloria also takes care of the accounting and books. Gloria lives with her daughter and two cats. 
    </p>
    <h3>
    Lance
    </h3>
    <asp:Image ID="Image3" runat="server" AlternateText="Lance"  CssClass="imageleft" ImageUrl="~/Images/Lance.png" />
    <p>
        Lance got his BA from ITT Technical Institute in Denver, CO. Lance works as a website designer and manages Candie's Secret's website. Lance is married and has two children.
    </p>
</asp:Content>


