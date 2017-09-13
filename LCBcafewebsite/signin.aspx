<%@ Page Title="" Language="C#" MasterPageFile="~/LCBCafe.Master" AutoEventWireup="true" CodeBehind="signin.aspx.cs" Inherits="LCBcafewebsite.signin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    Username:<br />
    <asp:TextBox ID="TextBoxUNSignIn" runat="server"></asp:TextBox>
    <br />
    Password:<br />
    <asp:TextBox ID="PasswordSignIn" runat="server"></asp:TextBox>
    <br />
    <asp:Button ID="BtnSignIn" runat="server" Text="Sign in" OnClick="BtnSignIn_Click" />
    <br />
    <br />
    <asp:Literal ID="LiteralSignin" runat="server"></asp:Literal>
    <br />
    Register new Admin user<br />
    Username:<br />
    <asp:TextBox ID="TextBoxUNreg" runat="server"></asp:TextBox>
    <br />
    Password:<br />
    <asp:TextBox ID="PasswordReg" runat="server"></asp:TextBox>
    <br />
    <asp:Button ID="BtnReg" runat="server" Text="Register" OnClick="BtnReg_Click" />
    <br />
<asp:Literal ID="LiteralReg" runat="server"></asp:Literal>
    <br />
</asp:Content>
