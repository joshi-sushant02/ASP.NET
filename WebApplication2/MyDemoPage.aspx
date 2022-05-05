﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="MyDemoPage.aspx.cs" Inherits="WebApplication2.MyDemoPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    



  <!-- Design by foolishdeveloper.com -->
    <title>Group Project</title>
 
    <link rel="preconnect" href="https://fonts.gstatic.com">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;500;600&display=swap" rel="stylesheet">
    <!--Stylesheet-->
    <link rel="stylesheet" href="StyleSheet1.css">
    
</head>
<body>

    <div class="background">
        <div class="shape"></div>
        <div class="shape"></div>
    </div>
    <form runat="server">
        <h3>Signin Here</h3>
<label for="username">Email</label><asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="Text1" ErrorMessage="Please enter email"></asp:RequiredFieldValidator>

        <input type="text" placeholder="Email" id="Text1" runat="server"><asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="Text1" ErrorMessage="Please enter valid email Id" ValidationExpression="[a-zA-Z0-9._%+-]+@[a-z0-9.-]+\.[a-zA-Z]{2,4}"></asp:RegularExpressionValidator>

       &nbsp;<label for="username">Phone Number</label><asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="Text2" ErrorMessage="Please enter mobile number"></asp:RequiredFieldValidator>
       <input type="text" placeholder="Phone Number" id="Text2" runat="server"><asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="Text2" ErrorMessage="Please enter valid mobile number" ValidationExpression="^(?:(?:\+|0{0,2})91(\s*[\ -]\s*)?|[0]?)?[789]\d{9}|(\d[ -]?){10}\d$"></asp:RegularExpressionValidator>


        &nbsp;<label for="password">Password</label>
        <input type="password" placeholder="Password" id="password" runat="server"><asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="password" ErrorMessage="Please enter password"></asp:RequiredFieldValidator>

         &nbsp;<label for="password">Confirm Password</label> <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="password1" ErrorMessage="Please confirm password"></asp:RequiredFieldValidator>
        <input type="password" placeholder="Confirm" id="password1" runat="server"><asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="password" ControlToValidate="password1" ErrorMessage="Password dosen't match"></asp:CompareValidator>
        

        <!--
        <asp:Button ID="Button3" runat="server" Text="Login Now" OnClick="Login2" />
        
        -->
        <div class="social">
          <div class="go"><asp:Button ID="Button1" runat="server" Text="Login Now" OnClick="Login3"/> </div>
          <div class="fb"><asp:Button ID="Button2" runat="server" Text="Enter->" PostBackUrl="~/WebForm2.aspx"/></div>
        </div>
        
      
        
        <asp:GridView ID="GridView1" runat="server" ForeColor="Red">
      
        </asp:GridView>
    </form>
    
</body>
</html>








</html>
