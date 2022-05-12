<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="forgot.aspx.cs" Inherits="WebApplication2.forgot" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
       <link rel="stylesheet" href="Forgot.css">

</head>
<body>
    <form id="form1" runat="server">
          <h3>Update Password </h3>
<label for="username">Email</label>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="Text1" ErrorMessage="Please enter email"></asp:RequiredFieldValidator>

        <input type="text" placeholder="Email" id="Text1" runat="server">
        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="Text1" ErrorMessage="Please enter valid email Id" ValidationExpression="[a-zA-Z0-9._%+-]+@[a-z0-9.-]+\.[a-zA-Z]{2,4}"></asp:RegularExpressionValidator>

      &nbsp;<label for="securityQ">Security Answer</label>
        <input type="text" placeholder="What is the name of your Fisrt School" id="securityQ" runat="server">
        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="securityQ" ErrorMessage="Please enter security answer"></asp:RequiredFieldValidator>
        
        &nbsp;<label for="password">New Password</label>
        <input type="password" placeholder="New Password" id="password" runat="server"><asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="password" ErrorMessage="Please enter password"></asp:RequiredFieldValidator>
    
        
        <div class="social">
          <div class="go"><asp:Button ID="Button1" runat="server" Text="Back" PostBackUrl="~/MyDemoPage.aspx" CausesValidation="false" /> </div>
          <div class="fb"><asp:Button ID="Button2" runat="server" Text="Done" OnClick="forgotpass"/></div>
        </div>
        
      
    </form>
</body>
</html>
