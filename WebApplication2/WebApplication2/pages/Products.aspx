<%@ Page Title="" Language="C#" MasterPageFile="~/MP.Master" AutoEventWireup="true" CodeBehind="Products.aspx.cs" Inherits="WebApplication2.pages.Products" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    <link href="../css/prdct.css" type="text/css" rel="stylesheet" />
    <link href="../css/Main.css" type="text/css" rel="stylesheet" />

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentBody" runat="server">
     <p>
     
        <img class="auto-style1" src="../Images/13.jpg" alt="p1" /> <img class="auto-style2" src="../Images/8.jpg" alt="p2" /></p>
    <p>
        
    <p style="margin-left: 80px">
       
    <p>
        <img class="auto-style3" src="../Images/10.jpg" alt="p3"/><img class="auto-style4" src="../Images/14.jpg" alt="p4" /></p>

    <p>
        </p>
    <p>
       
    <p style="margin-left: 80px">
     
    <p>
       

    <asp:FileUpload ID="FileUpload1" runat="server" /> 
    <asp:Literal ID="litResult" runat="server"></asp:Literal>
           </p>
     <p>
        <asp:Button ID="Button1" runat="server" Text="Upload" OnClick="Button1_Click" />
        </p>
</asp:Content>
