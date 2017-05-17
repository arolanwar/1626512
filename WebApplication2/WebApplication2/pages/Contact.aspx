
<%@ Page Title="" Language="C#" MasterPageFile="~/MP.Master" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="WebApplication2.Contact" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    
      <link href="../css/Main.css" type="text/css" rel="stylesheet" />
    <link href="../css/contact.css" type="text/css" rel="stylesheet" />
    <script src="../map.js"></script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentBody" runat="server">
       <div class="wrapper">
  
          <p> Please Fill in the blank</p>
           <a>
            Name:
            <asp:TextBox ID="txtName" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="reqNameValidator" runat="server" ControlToValidate="txtName" ErrorMessage="Name is required."></asp:RequiredFieldValidator>
            <br />
            <br />
            Email:
            <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="reqFieldEmail" runat="server" ControlToValidate="txtEmail" ErrorMessage="Email is required."></asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="RegExprChkEMail" runat="server" ControlToValidate="txtEmail" ErrorMessage="Invalid email format." ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
            <br />
            <br />
            Subject:&nbsp; <asp:TextBox ID="txtSubject" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtSubject" ErrorMessage="Subject is required."></asp:RequiredFieldValidator>
           
            <br />
            <br />
            Message:<br />
            <asp:TextBox ID="txtMsg" runat="server" Height="106px" TextMode="MultiLine" Width="359px"></asp:TextBox>
             <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtMsg" ErrorMessage="Msg is required."></asp:RequiredFieldValidator>
           
               <br />
            <br />
            <asp:Button ID="btnSendEmail" runat="server" OnClick="btnSend_Click" Text="Send" />
            <br />
            <br />
            <asp:Literal ID="litResult" runat="server"></asp:Literal>
            <br /></a>
        </div>
 

       
Our Location<br />

           <div id="map"></div>
               <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBfB05FO9clKaLyekXWWRiOoziJgVH1-A8&callback=initMap"
                   async defer></script>

Static Map<br />
    <div id="static map">
        <img src="../map%20image/map%20imge.PNG" alt="Location Of Homemade Furniture"/>
    </div>
    
</asp:Content>

