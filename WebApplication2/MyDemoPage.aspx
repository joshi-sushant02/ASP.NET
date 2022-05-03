<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="MyDemoPage.aspx.cs" Inherits="WebApplication2.MyDemoPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    



  <!-- Design by foolishdeveloper.com -->
    <title>Glassmorphism login Form Tutorial in html css</title>
 
    <link rel="preconnect" href="https://fonts.gstatic.com">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;500;600&display=swap" rel="stylesheet">
    <!--Stylesheet-->
    <style media="screen">
      *,
*:before,
*:after{
    padding: 0;
    margin: 0;
    box-sizing: border-box;
}
body{
    background-color: #080710;
}
.background{
    width: 430px;
    height: 520px;
    position: absolute;
    transform: translate(-50%,-50%);
    left: 50%;
    top: 50%;
}
.background .shape{
    height: 200px;
    width: 200px;
    position: absolute;
    border-radius: 50%;
}
.shape:first-child{
    background: linear-gradient(
        #1845ad,
        #23a2f6
    );
    left: -80px;
    top: -150px;
}
.shape:last-child{
    background: linear-gradient(
        to right,
        #ff512f,
        #f09819
    );
    right: -40px;
    bottom: -180px;
}
form{
    height: 720px;
    width: 450px;
    background-color: rgba(255,255,255,0.13);
    position: absolute;
    transform: translate(-50%,-50%);
    top: 50%;
    left: 50%;
    border-radius: 10px;
    backdrop-filter: blur(10px);
    border: 2px solid rgba(255,255,255,0.1);
    box-shadow: 0 0 40px rgba(8,7,16,0.6);
    padding: 50px 35px;
}
form *{
    font-family: 'Poppins',sans-serif;
    color: #ffffff;
    letter-spacing: 0.5px;
    outline: none;
    border: none;
}
form h3{
    font-size: 22px;
    font-weight: 500;
    line-height: 32px;
    text-align: center;
}

label{
    display: block;
    margin-top: 30px;
    font-size: 16px;
    font-weight: 500;
}
input{
    display: block;
    height: 50px;
    width: 100%;
    background-color: rgba(255,255,255,0.07);
    border-radius: 3px;
    padding: 0 10px;
    margin-top: 8px;
    font-size: 14px;
    font-weight: 300;
}
::placeholder{
    color: #e5e5e5;
}
button{
    margin-top: 50px;
    width: 100%;
    background-color: #ffffff;
    color: #080710;
    padding: 15px 0;
    font-size: 18px;
    font-weight: 600;
    border-radius: 5px;
    cursor: pointer;
}
.social{
  margin-top: 30px;
  display: flex;
}
.social div{
  background: red;
  width: 150px;
  border-radius: 3px;
  padding: 5px 10px 10px 5px;
  background-color: rgba(255,255,255,0.27);
  color: #eaf0fb;
  text-align: center;
}
.social div.fb:hover{
 background: linear-gradient(
        #1845ad,
        #23a2f6
    );
}

.social div.go:hover{
 background: linear-gradient(
        to right,
        #ff512f,
        #f09819
    );
}
.social .fb{
  margin-left: 25px;
   background: linear-gradient(
        to right,
        #ff512f,
        #f09819
    );

}

.social .go{
  margin-left: 25px;
   background: linear-gradient(
        #1845ad,
        #23a2f6
    );
}

.social i{
  margin-right: 4px;
}

    </style>
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
          <div class="go"><asp:Button ID="Button1" runat="server" Text="Login Now" OnClick="Login"/> </div>
          <div class="fb"><asp:Button ID="Button2" runat="server" Text="Enter->" PostBackUrl="~/WebForm2.aspx"/></div>
        </div>
        
      
    </form>
    
</body>
</html>








</html>
