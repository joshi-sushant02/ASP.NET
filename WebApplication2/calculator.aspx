<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="calculator.aspx.cs" Inherits="WebApplication2.calculator" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>


    <style>
        body{
    background-color: #080710;
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
form{
    height: 520px;
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
    color: red;
    letter-spacing: 0.5px;
    outline: none;
    border: none;
}
    </style>
</head>
<body style="height: 94px">
    <form id="form1" runat="server">
        <asp:Label ID="Label3"    runat="server" Text="Equation:"></asp:Label>
        <asp:Label ID="Label1"   runat="server"></asp:Label>
        <asp:Label ID="Label5"   runat="server" Visible="False"></asp:Label>
        <asp:Label ID="Label6"   runat="server" Visible="False"></asp:Label>
        <p>
            <asp:Label ID="Label4" runat="server" Text="Solution:"></asp:Label>
            <asp:Label ID="Label2" runat="server" Text="0"></asp:Label>
        </p>
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="1" Width="44px" />
        <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="2" Width="46px" />
        <asp:Button ID="Button3" runat="server" OnClick="Button3_Click" Text="3" Width="47px" />
        <asp:Button ID="Button5" runat="server" OnClick="Button5_Click" Text="add" Width="63px" />
        <asp:Button ID="Button6" runat="server" OnClick="Button6_Click" Text="clear" Width="65px" />
        <p>
            <asp:Button ID="Button4" runat="server" OnClick="Button4_Click" Text="4" Width="45px" />
            <asp:Button ID="Button7" runat="server" OnClick="Button7_Click" Text="5" Width="49px" />
            <asp:Button ID="Button8" runat="server" OnClick="Button8_Click" Text="6" Width="43px" />
            <asp:Button ID="Button9" runat="server" OnClick="Button9_Click" Text="multiply" />
        </p>
        <asp:Button ID="Button10" runat="server" OnClick="Button10_Click" Text="7" Width="42px" />
        <asp:Button ID="Button11" runat="server" OnClick="Button11_Click" Text="9" Width="44px" />
        <asp:Button ID="Button12" runat="server" OnClick="Button12_Click" Text="8" Width="51px" />
        <p>
        <asp:Button ID="Button13" runat="server" OnClick="Button13_Click" Text="0" Width="39px" />
        </p>
        <asp:Button ID="Button14" runat="server" OnClick="Button14_Click" Text="Calculate" Width="262px" />


        <p>


        </p>
        <div class="social">
          <div class="go"><asp:Button BackColor="Transparent" ID="Button15" runat="server" Text="Back" PostBackUrl="~/WebForm2.aspx"/> </div>
          <div class="fb"><asp:Button  BackColor="Transparent" ID="Button16" runat="server" Text="Next" PostBackUrl="~/MyDemoPage.aspx"/></div>
        </div>
    </form>
</body>
</html>
