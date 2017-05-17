<%@ Page Title="" Language="C#" MasterPageFile="~/MP.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="WebApplication2.Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="css/Homee.css" type="text/css" rel="stylesheet" />
    <link href="css/Main.css" type="text/css" rel="stylesheet" />
    
    
    
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentBody" runat="server">
    
   
     <div class="furniture">
          Furniture 1 <br />
        
         <asp:Image ID="Image" runat="server" Height="456px" ImageUrl="~/Images/casa_o.jpg" Width="950px" style="margin-left: 0px; margin-bottom: 80px"/>
   
         
          <br /> Furniture 2
         <asp:Image ID="Image1" runat="server" Height="456px" ImageUrl="~/images/6.jpg" Width="950px" style="margin-left: 0px; margin-bottom: 80px"/>

          <br /> Furniture 3
       <asp:Image ID="Image2" runat="server" Height="456px" ImageUrl="~/images/ff.jpg" Width="950px" style="margin-left: 0px; margin-bottom: 80px"/>
   <br />
    </div>


    <div class="heading">
        <span class="title1">Homemade Furniture</span>
          <span class="title2">For Those Who Love Unique Furniture Design</span>
 
            <div class="register">
                <p><a href="~/Pages/login.aspx" runat="server" class="wrapper">Register Now</a></p>
     </div>
    </div>
</asp:Content>
