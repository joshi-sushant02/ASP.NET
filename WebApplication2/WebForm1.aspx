

<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="WebApplication2.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>




    <style>
/* Style all input fields */
input {
  width: 100%;
  padding: 12px;
  border: 1px solid #ccc;
  border-radius: 4px;
  box-sizing: border-box;
  margin-top: 6px;
  margin-bottom: 16px;
}

/* Style the submit button */
input[type=submit] {
  background-color: #04AA6D;
  color: white;
}

/* Style the container for inputs */
.container {
  background-color: #f1f1f1;
  padding: 20px;
}

/* The message box is shown when the user clicks on the password field */
#message {
  display:none;
  background: #f1f1f1;
  color: #000;
  position: relative;
  padding: 20px;
  margin-top: 10px;
}

#message p {
  padding: 10px 35px;
  font-size: 18px;
}

/* Add a green text color and a checkmark when the requirements are right */
.valid {
  color: green;
}

.valid:before {
  position: relative;
  left: -35px;
  content: "✔";
}

/* Add a red text color and an "x" when the requirements are wrong */
.invalid {
  color: red;
}

.invalid:before {
  position: relative;
  left: -35px;
  content: "✖";
}
</style>

</head>
<body>
    <form id="form1" runat="server">
        <h3>Password Validation</h3>
<p>Try to submit the form.</p>

<div class="container">
  
    <label for="usrname">Username<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
    <br />
    </label>
    &nbsp;<br />
    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
    <br />
&nbsp;<label for="usrname">Email id</label>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
    <br />
    <br />
    <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
    <br />
    <br />
&nbsp;<label for="usrname">Mobile Number<asp:RangeValidator ID="RangeValidator1" runat="server" ControlToValidate="TextBox3" ErrorMessage="*" MaximumValue="9999999999" MinimumValue="1000000000" ForeColor="Red"></asp:RangeValidator>
    <br />
    <br />
    <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
    <br />
    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox3" ErrorMessage="please enter mobile number" BackColor="#CC0000"></asp:RequiredFieldValidator>
    </label>
    &nbsp;

   

    <label for="psw">
    <br />
    <br />
    Password<asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TextBox4" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
    <br />
    <br />
    <asp:TextBox ID="TextBox4" runat="server" TextMode="Password"></asp:TextBox>
    <br />
&nbsp;<label for="psw">Confirm Password<asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="TextBox5" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
    <br />
    <br />
    </label>
    <asp:TextBox ID="TextBox5" runat="server" TextMode="Password"></asp:TextBox>
    <br />
    <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="TextBox5" ControlToValidate="TextBox4" ErrorMessage="password dosen't match" BackColor="#CC0000"></asp:CompareValidator>
    <br />

                 <asp:Button ID="Button1" Text="Save" runat="server" OnClick="Save" />
        <asp:Button ID="btnConfirm" runat="server" Text="Final Save"
PostBackUrl="~/WebForm2.aspx" />
&nbsp;<asp:ValidationSummary ID="ValidationSummary1" runat="server" BackColor="#996600" />



        
   
 
</div>
<div id="message">
  <h3>Password must contain the following:
  <p id="letter" class="invalid">A <b>lowercase</b> letter</p>
  <p id="capital" class="invalid">A <b>capital (uppercase)</b> letter</p>
  <p id="number" class="invalid">A <b>number</b></p>
  <p id="length" class="invalid">Minimum <b>8 characters</b></p>
</div>
    
    </form>

   
</body>
</html>
