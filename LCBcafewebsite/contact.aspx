<%@ Page Title="" Language="C#" MasterPageFile="~/LCBCafe.Master" AutoEventWireup="true" CodeBehind="contact.aspx.cs" Inherits="LCBcafewebsite.contact" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1>Contact us anytime :)</h1>
    Name:<br />
    <asp:TextBox ID="TextBoxName" runat="server"></asp:TextBox>
    <br />
    Email:<br />
    <asp:TextBox ID="TextBoxEmail" runat="server"></asp:TextBox>
    <br />
    Subject:<br />
    <asp:TextBox ID="TextBoxSubject" runat="server"></asp:TextBox>
    <br />
    Message:<br />
    <asp:TextBox ID="TextBoxMessage" runat="server"></asp:TextBox>
    <br />
    <asp:Literal ID="LiteralMessage" runat="server"></asp:Literal>
    <br />
    <asp:Button ID="ButtonSend" runat="server" Text="Send" OnClick="Button1_Click" />
</asp:Content>
