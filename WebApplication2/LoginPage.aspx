<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="LoginPage.aspx.cs" Inherits="WebApplication2.LoginPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
      <link rel="preconnect" href="https://fonts.gstatic.com">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;500;600&display=swap" rel="stylesheet">
    <!--Stylesheet-->
    
    <link rel="stylesheet" href="LoginPage.css">
       
    <title></title>
</head>
<body>
      <div class="background">
        <div class="shape"></div>
        <div class="shape"></div>
    </div>
    <form runat="server">
        <h3>Login Here</h3>
<label for="username">Email</label><asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="Text1" ErrorMessage="Please enter email"></asp:RequiredFieldValidator>

        <input type="text" placeholder="Email" id="Text1" runat="server"><asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="Text1" ErrorMessage="Please enter valid email Id" ValidationExpression="[a-zA-Z0-9._%+-]+@[a-z0-9.-]+\.[a-zA-Z]{2,4}"></asp:RegularExpressionValidator>

     
        &nbsp;<label for="password">Password</label>
        <input type="password" placeholder="Password" id="password" runat="server"><asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="password" ErrorMessage="Please enter password"></asp:RequiredFieldValidator>
    
        <div class="frgt">

      <div class="frg">

         <asp:Button ID="Button3" BackColor="green" runat="server" Text="Forgot Password" PostBackUrl="~/forgot.aspx" CausesValidation="false"/>
      </div>  
     </div>  
        <div class="social">
          <div class="go"><asp:Button ID="Button1" runat="server" Text="Back" PostBackUrl="~/MyDemoPage.aspx" CausesValidation="false" /> </div>
          <div class="fb"><asp:Button ID="Button2" runat="server" Text="Signin" OnClick="Button2_Click"/></div>
        </div>
        
      
    </form>
</body>
</html>