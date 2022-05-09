<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="booking.aspx.cs" Inherits="WebApplication2.booking" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" href="booking.css">
   
</head>
<body>
    <form id="form1" runat="server">
        <div>
            
<div class="form">
        <div class="form-text">
            <h1><span></span>Book The Table <span></span></h1>
            <p>Welcome To Cafe</p>
        </div>
        <div class="main-form">
            
                <div>
                    <span>CHOICE?</span>
                    <select runat="server" name="people" id="type" >
                        <option value="AC">AC</option>
                        <option value="NON-AC">NON-AC</option>
                        
                    </select> 
                </div>
                <div>
                    <!-- <---this is the select option--->
                    <span>How many people ?</span>
                    <select runat="server" style="color:yellow" name="people" id="people" >
                        <option  value=""><---People---></option>
                        <option value="1">1 People</option>
                        <option value="2">2 People</option>
                        <option value="3">3 People</option>
                        <option value="4">4 People</option>
                    </select>
                 
                    <!-- <---this is the select option--->
                </div>
                <div>
                    <span>What time ?</span>
                    <input runat="server" type="text" name="time" id="time" placeholder="Time" >
                </div>
                <div>
                    <span>What is the date ?</span>
                    <input runat="server" type="date" name="date" id="date" placeholder="date" >
                </div>
                
                <div id="submit">
                    <asp:Button ID="Button2" runat="server" Text="Book Now" OnClick="booked"/>

                </div>


          
        </div>
    </div>


        </div>
    </form>
</body>
</html>


