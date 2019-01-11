<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Aplicatie.Login" %>
    
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="Css/Home.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <link href="Css/Home.css" rel="stylesheet" />
    <div class="Login">
    <asp:Login ID="Login1" runat="server" BorderStyle="None" BorderColor="#FFCC66" LabelStyle-BorderColor="Black" RememberMeSet="True" TextLayout="TextOnTop" align="center">
<LabelStyle BorderColor="#CCFF66" BorderStyle="Inset" Font-Italic="False" Font-Overline="False" Font-Underline="False" ForeColor="Black"></LabelStyle>
        </asp:Login>
        </div>

    <div class="footer">
  
</div>
</asp:Content>
