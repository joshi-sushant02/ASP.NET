<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm2.aspx.cs" Inherits="WebApplication2.WebForm2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">


     <style media="screen">
      *,
*:before,
*:after{
    padding: 0;
    margin: 0;
    box-sizing: border-box;
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

body{
    background-color: #080710;
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


div *{
    font-family: 'Poppins',sans-serif;
    color: #ffffff;
    letter-spacing: 0.5px;
    outline: none;
    border: none;
    font-size: 22px;
    font-weight: 500;
    line-height: 32px;
    text-align: center;
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
         </style>
    <title></title>
</head>
<body>
     <div class="background">
       
        <div class="shape"></div>
         <div class="shape"></div>
    </div>
    <form runat="server">
         <div>
            <p style="color:aquamarine">
                Enter the name of your First School
            </p>
             <p style="color:aquamarine">
                 &nbsp;</p>
             <p style="color:aquamarine">
                 &nbsp;</p>
             <p style="color:aquamarine">
                 
                 <asp:TextBox BackColor="black" ID="SecurityQ" runat="server"></asp:TextBox>
                    
            </p>
        </div>
       <div class="social">
          <div class="go"><asp:Button BackColor="Transparent" ID="Button1" runat="server" Text="Back" PostBackUrl="~/MyDemoPage.aspx" OnClick="Button1_Click"/> </div>
          <div class="fb"><asp:Button  BackColor="Transparent" ID="Button2" runat="server" Text="Next" PostBackUrl="~/ProfilePage.aspx"/></div>
        </div>
    </form>
   
</body>
</html>
