<%@ Page Title="Create User" Language="C#" MasterPageFile="~/2colSSL.master" AutoEventWireup="true" CodeFile="CreateUser.aspx.cs" Inherits="Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="LeftContent" Runat="Server">

    <asp:CreateUserWizard ID="CreateUserWizard1" runat="server" 
        ContinueDestinationPageUrl="~/MyAccount/MyAccount.aspx">
        <WizardSteps>
            <asp:CreateUserWizardStep ID="CreateUserWizardStep1" runat="server">
            </asp:CreateUserWizardStep>
            <asp:CompleteWizardStep ID="CompleteWizardStep1" runat="server">
                <ContentTemplate>
                    <table style="font-family:Verdana;font-size:100%;">
                        <tr>
                            <td align="center" colspan="2" 
                                style="color:White;background-color:#34229F;font-weight:bold;">
                                Complete</td>
                        </tr>
                        <tr>
                            <td>
                                Your account has been successfully created.</td>
                        </tr>
                        <tr>
                            <td align="right" colspan="2">
                                <asp:Button ID="ContinueButton" runat="server" BackColor="White" 
                                    BorderColor="#C5BBAF" BorderStyle="Solid" BorderWidth="1px" 
                                    CausesValidation="False" CommandName="Continue" Font-Names="Verdana" 
                                    ForeColor="#34229F" onclick="ContinueButton_Click" Text="Continue" 
                                    ValidationGroup="CreateUserWizard1" />
                            </td>
                        </tr>
                    </table>
                </ContentTemplate>
            </asp:CompleteWizardStep>
        </WizardSteps>
    </asp:CreateUserWizard>

</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="RightContent" Runat="Server">
</asp:Content>

