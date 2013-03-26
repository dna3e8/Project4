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
    </p>

     <asp:Label ID="ErrorsLBL" runat="server" Text=""></asp:Label>
     
    <asp:ValidationSummary ID="GridVS" runat="server" ValidationGroup="grid" />
    <asp:Panel ID="GridviewPNL" runat="server" 
        GroupingText="Currant Product Information:" ScrollBars="Auto" Width="800px">
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False"
            DataKeyNames="ProductID" DataSourceID="SqlDataSource1" PageSize="5">
            <Columns>
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ValidationGroup="grid" />
                <asp:TemplateField HeaderText="PName" SortExpression="PName">
                    <EditItemTemplate>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                            ControlToValidate="TextBox1" ErrorMessage="Product Name is required" 
                            ValidationGroup="grid"></asp:RequiredFieldValidator>
                        <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("PName") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label1" runat="server" Text='<%# Bind("PName") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:ImageField DataImageUrlField="ImageURL" HeaderText="Image" ReadOnly="True">
                    <ControlStyle Height="75px" Width="100px" />
                </asp:ImageField>
                 <asp:BoundField DataField="ImageURL" HeaderText="Image URL" />
                <asp:BoundField DataField="ProductID" HeaderText="ProductID" ReadOnly="True" />
             
                <asp:TemplateField HeaderText="Price" SortExpression="Price">
                   <EditItemTemplate>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                            ControlToValidate="TextBox2" ErrorMessage="Price is Required" 
                            ValidationGroup="grid"></asp:RequiredFieldValidator>
                        <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("Price") %>'></asp:TextBox>
                      </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label2" runat="server" Text='<%# Bind("Price") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="description" SortExpression="description">
                    <EditItemTemplate>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                            ControlToValidate="TextBox3" ErrorMessage="Description is Required" 
                            ValidationGroup="grid"></asp:RequiredFieldValidator>
                        <asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("description") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label3" runat="server" Text='<%# Bind("description") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Onhand" SortExpression="Onhand">
                    <EditItemTemplate>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                            ControlToValidate="TextBox4" ErrorMessage="On Hand Required" 
                            ValidationGroup="grid"></asp:RequiredFieldValidator>
                        <asp:TextBox ID="TextBox4" runat="server" Text='<%# Bind("Onhand") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label4" runat="server" Text='<%# Bind("Onhand") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
            </Columns>
        </asp:GridView>
       </asp:Panel>
        <br />
        <asp:ValidationSummary ID="ValidationSummary1" runat="server" ValidationGroup="new" />
        <div style="clear: both">
        </div>
        <asp:Panel ID="NewPNL" runat="server" GroupingText="New Product Information:">
            <ol>
                
                <li class="formleft1c">
                    <asp:Label ID="PNameLBL" runat="server">Product name:</asp:Label>
                    <asp:TextBox ID="PNameTXT" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="PNameRFV" runat="server" ControlToValidate="PNameTXT"
                        ErrorMessage="Product name is required" Display="Dynamic" ValidationGroup="new">*</asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="PNameREV" runat="server" ControlToValidate="PNameTXT"
                        ErrorMessage="Product name is too long" ValidationExpression="^[a-zA-Z'.\s]{1,10}$"
                        Display="Dynamic" ValidationGroup="new">*</asp:RegularExpressionValidator>
                </li>
                <li class="formright1c">
                    <asp:Label ID="PriceLBL" runat="server">Price:</asp:Label>
                    <asp:TextBox ID="PriceTXT" runat="server"></asp:TextBox>
                    <asp:RegularExpressionValidator ID="PriceREV" runat="server" ControlToValidate="PriceTXT"
                        ErrorMessage="Price is invalid" ValidationExpression="^\d+(\.\d\d)?$" 
                        Display="Dynamic">*</asp:RegularExpressionValidator>
                         <asp:RequiredFieldValidator ID="PriceRQV" runat="server" ControlToValidate="PriceTXT"
                        ErrorMessage="Price is required" Display="Dynamic" ValidationGroup="new">*</asp:RequiredFieldValidator>
                </li>
                <li class="formleft1c">
                    <asp:Label ID="OnhandLBL" runat="server" Text="Onhand:"></asp:Label>
                    <asp:TextBox ID="OnhandTXT" runat="server"></asp:TextBox>
                     <asp:RequiredFieldValidator ID="OnhandRQV" runat="server" ControlToValidate="OnhandTXT"
                        ErrorMessage="On Hand is required" Display="Dynamic" ValidationGroup="new">*</asp:RequiredFieldValidator>
                </li>
                <li class="formright1c">
                    <asp:Label ID="DescLBL" runat="server" Text="Description:"></asp:Label>
                    <asp:TextBox ID="DescriptionTXT" runat="server"></asp:TextBox>
                    <asp:RegularExpressionValidator ID="DescriptionREV" runat="server" ControlToValidate="DescriptionTXT"
                        ErrorMessage="Description is too long." ValidationExpression="^[a-zA-Z'.\s]{1,40}$"
                        Display="Dynamic">*</asp:RegularExpressionValidator>
                         <asp:RequiredFieldValidator ID="DescriptionRQV" runat="server" ControlToValidate="DescriptionTXT"
                        ErrorMessage="Description is required" Display="Dynamic" ValidationGroup="new">*</asp:RequiredFieldValidator>
                </li>
                
                <li class="formlg1c">
                    <asp:Label ID="ImageLBL" runat="server">Image:</asp:Label>
                    <asp:FileUpload ID="ImageUPL" runat="server" />
                    <asp:RequiredFieldValidator ID="ImageRQV" runat="server" ControlToValidate="ImageUPL"
                        ErrorMessage="Image is required" Display="Dynamic" ValidationGroup="new">*</asp:RequiredFieldValidator>
                </li>
            </ol>
        </asp:Panel>
        <p>
            <asp:Button ID="SubmitBTN" runat="server" Text="Submit" ValidationGroup="new" 
                onclick="SubmitBTN_Click" />
        </p>
</asp:Content>
