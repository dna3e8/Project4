<%@ Page Title="Product Admin" Language="C#" MasterPageFile="~/1colSSL.master" AutoEventWireup="true" CodeFile="ProductAdmin.aspx.cs" Inherits="Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="LeftContent" Runat="Server">
    <h1>Product Administration</h1>
<h2>This page allows the Admininstrator to add update and delete products.</h2>

    <asp:GridView ID="ProductsGridView" runat="server" 
    AutoGenerateColumns="False" DataKeyNames="ProductID" DataSourceID="Products" 
        AllowPaging="True" PageSize="5">
        <Columns>
            <asp:BoundField DataField="ProductID" HeaderText="ProductID" 
                InsertVisible="False" ReadOnly="True" SortExpression="ProductID" />
            <asp:BoundField DataField="PName" HeaderText="PName" 
                SortExpression="PName" />
            <asp:BoundField DataField="Price" HeaderText="Price" SortExpression="Price" />
            <asp:BoundField DataField="imageURL" HeaderText="imageURL" 
                SortExpression="imageURL" />
            <asp:BoundField DataField="description" HeaderText="description" 
                SortExpression="description" />
            <asp:BoundField DataField="Onhand" HeaderText="Onhand" 
                SortExpression="Onhand" />
        </Columns>
    </asp:GridView>

<asp:SqlDataSource ID="Products" runat="server" 
    ConnectionString="<%$ ConnectionStrings:INFO3420_01Products %>" 
    DeleteCommand="DELETE FROM [CS.Product] WHERE [ProductID] = @ProductID" 
    InsertCommand="INSERT INTO [CS.Product] ([PName], [Price], [imageURL], [description], [Onhand]) VALUES (@PName, @Price, @imageURL, @description, @Onhand)" 
    SelectCommand="SELECT * FROM [CS.Product]" 
    UpdateCommand="UPDATE [CS.Product] SET [PName] = @PName, [Price] = @Price, [imageURL] = @imageURL, [description] = @description, [Onhand] = @Onhand WHERE [ProductID] = @ProductID">
    <DeleteParameters>
        <asp:Parameter Name="ProductID" Type="Int32" />
    </DeleteParameters>
    <InsertParameters>
        <asp:Parameter Name="PName" Type="String" />
        <asp:Parameter Name="Price" Type="Decimal" />
        <asp:Parameter Name="imageURL" Type="String" />
        <asp:Parameter Name="description" Type="String" />
        <asp:Parameter Name="Onhand" Type="Int32" />
    </InsertParameters>
    <UpdateParameters>
        <asp:Parameter Name="PName" Type="String" />
        <asp:Parameter Name="Price" Type="Decimal" />
        <asp:Parameter Name="imageURL" Type="String" />
        <asp:Parameter Name="description" Type="String" />
        <asp:Parameter Name="Onhand" Type="Int32" />
        <asp:Parameter Name="ProductID" Type="Int32" />
    </UpdateParameters>
</asp:SqlDataSource>


    <asp:DetailsView ID="DetailsView1" runat="server" Height="50px" Width="125px" 
        AutoGenerateRows="False" DataKeyNames="ProductID" DataSourceID="Products">
        <Fields>
            <asp:BoundField DataField="ProductID" HeaderText="ProductID" 
                InsertVisible="False" ReadOnly="True" SortExpression="ProductID" />
            <asp:TemplateField HeaderText="PName" SortExpression="PName">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("PName") %>'></asp:TextBox>
                </EditItemTemplate>
                <InsertItemTemplate>
                    <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("PName") %>'></asp:TextBox>
                </InsertItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label1" runat="server" Text='<%# Bind("PName") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Price" SortExpression="Price">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("Price") %>'></asp:TextBox>
                </EditItemTemplate>
                <InsertItemTemplate>
                    <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("Price") %>'></asp:TextBox>
                </InsertItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label2" runat="server" Text='<%# Bind("Price") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="imageURL" SortExpression="imageURL">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("imageURL") %>'></asp:TextBox>
                </EditItemTemplate>
                <InsertItemTemplate>
                    <asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("imageURL") %>'></asp:TextBox>
                </InsertItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label3" runat="server" Text='<%# Bind("imageURL") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="description" SortExpression="description">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox4" runat="server" Text='<%# Bind("description") %>'></asp:TextBox>
                </EditItemTemplate>
                <InsertItemTemplate>
                    <asp:TextBox ID="TextBox4" runat="server" Text='<%# Bind("description") %>'></asp:TextBox>
                </InsertItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label4" runat="server" Text='<%# Bind("description") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Onhand" SortExpression="Onhand">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox5" runat="server" Text='<%# Bind("Onhand") %>'></asp:TextBox>
                </EditItemTemplate>
                <InsertItemTemplate>
                    <asp:TextBox ID="TextBox5" runat="server" Text='<%# Bind("Onhand") %>'></asp:TextBox>
                </InsertItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label5" runat="server" Text='<%# Bind("Onhand") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:CommandField ShowInsertButton="True" />
        </Fields>
    </asp:DetailsView>

</asp:Content>

