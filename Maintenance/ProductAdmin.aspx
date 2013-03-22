<%@ Page Title="Product Admin" Language="C#" MasterPageFile="~/1colSSL.master" AutoEventWireup="true"
    CodeFile="ProductAdmin.aspx.cs" Inherits="Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="LeftContent" runat="Server">
    <h1>
        Product Administration</h1>
    <h2>
        This page allows the Admininstrator to add update and delete products.</h2>
    <p>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:INFO3420_01Products2 %>"
            DeleteCommand="DELETE FROM [CS.Product] WHERE [ProductID] = @ProductID" InsertCommand="INSERT INTO [CS.Product] ([PName], [Price], [imageURL], [description], [Onhand]) VALUES (@PName, @Price, @imageURL, @description, @Onhand)"
            SelectCommand="SELECT * FROM [CS.Product]" UpdateCommand="UPDATE [CS.Product] SET [PName] = @PName, [Price] = @Price, [imageURL] = @imageURL, [description] = @description, [Onhand] = @Onhand WHERE [ProductID] = @ProductID">
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
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False"
            DataKeyNames="ProductID" DataSourceID="SqlDataSource1" PageSize="5">
            <Columns>
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                <asp:TemplateField HeaderText="PName" SortExpression="PName">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("PName") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label1" runat="server" Text='<%# Bind("PName") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:BoundField DataField="ProductID" HeaderText="ProductID" ReadOnly="True" />
                <asp:ImageField ReadOnly="True">
                    <ControlStyle Height="75px" Width="100px" />
                </asp:ImageField>
                <asp:BoundField DataField="imageURL" HeaderText="imageURL" ReadOnly="True" />
                <asp:TemplateField HeaderText="Price" SortExpression="Price">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("Price") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label2" runat="server" Text='<%# Bind("Price") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="description" SortExpression="description">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("description") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label3" runat="server" Text='<%# Bind("description") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Onhand" SortExpression="Onhand">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox4" runat="server" Text='<%# Bind("Onhand") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label4" runat="server" Text='<%# Bind("Onhand") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
            </Columns>
        </asp:GridView>
    </p>
    <ol>
        <li class="formleft">
            <asp:Label ID="ImageLBL" runat="server">Image:</asp:Label>
            <asp:FileUpload ID="ImageUPL" runat="server" />
        </li>
        <li class="formright">
            <asp:Label ID="PNameLBL" runat="server">Product name:</asp:Label>
            <asp:TextBox ID="PNameTXT" runat="server"></asp:TextBox>
            <asp:RegularExpressionValidator ID="PNameREV" runat="server" ControlToValidate="PNameTXT"
                ErrorMessage="Color too long" ValidationExpression="^[a-zA-Z'.\s]{1,10}$" Display="Dynamic">*</asp:RegularExpressionValidator>
        </li>
        <li class="formleft"></li>
        <li class="formright"></li>
        <li class="formleft">
            <asp:Label ID="PriceLBL" runat="server">Price:</asp:Label>
            <asp:TextBox ID="PriceTXT" runat="server"></asp:TextBox>
            <asp:CompareValidator ID="BirthdayCV" ControlToValidate="BirthdayTXT" Type="Date"
                Operator="DataTypeCheck" runat="server" ErrorMessage="Birthdate must be MM/DD/YYYY"
                Display="Dynamic">*</asp:CompareValidator>
        </li>
        <li class="formright">
            <asp:Label ID="DescLBL" runat="server" Text="Description:"></asp:Label>
            <asp:TextBox ID="DescriptionTXT" runat="server"></asp:TextBox>
            <asp:CompareValidator ID="AnniversaryCV" ControlToValidate="AnniversaryTXT" Type="Date"
                Operator="DataTypeCheck" runat="server" ErrorMessage="Anniversary must be MM/DD/YYYY"
                Display="Dynamic">*</asp:CompareValidator>
        </li>
        <li class="formleft"></li>
        <li class="formright"></li>
        <li class="formleft">
            <asp:Label ID="AgLBL" runat="server" Text="Age:"></asp:Label>
            <asp:TextBox ID="AgeTXT" runat="server"></asp:TextBox>
        </li>
    </ol>
    <p>
        &nbsp;</p>
</asp:Content>
