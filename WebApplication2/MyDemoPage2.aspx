<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="MyDemoPage2.aspx.cs" Inherits="WebApplication2.MyDemoPage2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">


    <style>
        body{
    background-color: #080710;
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
    color: #ffffff;
    letter-spacing: 0.5px;
    outline: none;
    border: none;
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
    </style>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; MoviesHub</p>
            <p>&nbsp;</p>
        </div>
        <p>
            &nbsp;</p>
        <asp:CheckBox  Text="ABCD" ID="Movie_name_1" runat="server" OnCheckedChanged="list" AutoPostBack="True" />
        <p>
            <asp:CheckBox ID="Movie_name_2" Text="EFGH" runat="server" OnCheckedChanged="list" AutoPostBack="True" DataField="valetDone" Checked='<%# Bind("valetDone") %>' />
        </p>
        <asp:CheckBox ID="Movie_name_3" Text="XYZW" runat="server" OnCheckedChanged="list" AutoPostBack="True" />
        <p>
            <asp:CheckBox ID="Movie_name_4" Text="QWERT" runat="server" OnCheckedChanged="list" AutoPostBack="True"/>
        </p>
        <p>
            Movie selected from checkBox are:-</p>
        <p>
            <asp:Label ID="Label1" runat="server" Text="Movies==>"></asp:Label>
        </p>
        <p>
          





        </p>
        <asp:RadioButton ID="RadioButton1" Text="option1" runat="server" OnCheckedChanged="radio" AutoPostBack="true" />
        <p>
            <asp:RadioButton ID="RadioButton2" Text="option2" runat="server" OnCheckedChanged="radio" AutoPostBack="true" />
        </p>
        <asp:RadioButton ID="RadioButton3" Text="option3" runat="server" OnCheckedChanged="radio" AutoPostBack="true" />
        <p>
            <asp:RadioButton ID="RadioButton4" Text="option4" runat="server" OnCheckedChanged="radio" AutoPostBack="true" />
        </p>
        <p>
            &nbsp;</p>
        <p>
            RadioButtons selected :-</p>
        <p>
            <asp:Label ID="Label2" runat="server" Text="your selected option is:"></asp:Label>
        </p>
        <div class="social">
          <div class="go"><asp:Button BackColor="Transparent" ID="Button1" runat="server" Text="Back" PostBackUrl="~/MyDemoPage.aspx"/> </div>
          <div class="fb"><asp:Button  BackColor="Transparent" ID="Button2" runat="server" Text="Next" PostBackUrl="~/MyDemoPage2.aspx"/></div>
        </div>
    </form>
</body>
</html>
