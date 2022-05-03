<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="WebApplication2._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div class="jumbotron">
        <h1>ASSIGNMENT-ASP.NET (Validation)</h1>
        <p class="lead">Name:-SUSHANT JOSHI ,ROLL NO.- A-326.</p>
        <p class="lead">A simple Web form for User Authentication </p>

        <p class="btn btn-primary btn-lg">Let's Start &raquo;</p>
    </div>

    <div class="row">
        <div class="col-md-4">
            <h2>Enter Your Username:</h2>
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="username can't be empty......"></asp:RequiredFieldValidator>
            <p>
               Validations used:- required*
                                  
            </p>
            <p class="btn btn-default" >Okay! &raquo;
            </p>
        </div>
        <div class="col-md-4">
            <h2>Enter Your Password</h2>
            <asp:TextBox ID="TextBox2" runat="server" TextMode="Password"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2" ErrorMessage="please provide a password"></asp:RequiredFieldValidator>
            <p>
                   Validations used:- required*
            </p>
            <p>
                   Textmode:password</p>
            <p class="btn btn-default">Confirm &raquo;
            </p>
        </div>
        <div class="col-md-4">
            <h2>Confirm Password</h2>
            <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox3" ErrorMessage="please enter password to confirm..."></asp:RequiredFieldValidator>
            <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="TextBox2" ControlToValidate="TextBox3" ErrorMessage="password doesn't match....:("></asp:CompareValidator>
            <p>
                  Validations used:- compareToValidqate...
                  and required field*</p>
            <button type="submit">Done!</button>
            <asp:ValidationSummary ID="ValidationSummary1" runat="server" />
        </div>
    </div>

</asp:Content>
