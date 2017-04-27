<%@ Page Title="" Language="C#" MasterPageFile="~/MP.Master" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="WebApplication2.Register" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentBody" runat="server">
  <div>
      Register<br />
    <br />
    Name<asp:TextBox ID="txtRegEmail" runat="server" OnTextChanged="txtRegEmail_TextChanged"></asp:TextBox>
    <asp:RequiredFieldValidator ID="reqNameValidator" runat="server" ControlToValidate="txtRegEmail" ErrorMessage="Name is required."></asp:RequiredFieldValidator>        
   <br />
     <br /> 
    Password<asp:TextBox ID="txtRegPassword" runat="server" type="password"></asp:TextBox>
    <br />
    <asp:Button ID="Register1" runat="server" OnClick="Button1_Click" Text="Register" />
    
    <asp:Literal ID="litRegisterError" runat="server"></asp:Literal>

    <br /></div>
    
</asp:Content>
