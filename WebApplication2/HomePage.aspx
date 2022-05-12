<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="HomePage.aspx.cs" Inherits="WebApplication2.HomePage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
     <link rel="stylesheet" href="home.css">
</head>
<body>
    <form id="form1" runat="server">
        <header><h1>CAFE REMINISCENCE-MENU</h1></header>
        <div>

        <a href="ProfilePage.aspx"><h3>PROFILE</h3></a>
        </div>
    <div id="main">
      <section>
        <div class="block">
            <h3>Hot/Cold Bevrages</h3>
            <p class="item">Cold Coffee <input type="checkbox" name="" id=""><span class="right">2.25 / 1.75 / 1.50</span></p>
            <p class="item">Hot Coffee <input type="checkbox" name="" id=""><span class="right">2.35 / 1.85</span></p>
            <p class="item">Cappuccino <input type="checkbox" name="" id=""><span class="right">2.75 / 2.50 / 2.25</span></p>
        </div>
       
        <div class="block">
            <h3>PIZZA</h3>
            <p class="item">Margherita Pizza<input type="checkbox" name="" id=""><span class="right">4.00 / 3.50 / 2.75</span></p>
            <p class="item">Double Cheese<input type="checkbox" name="" id=""><span class="right">2.25 / 2.00 / 2.75</span></p>
            <div class="item"><p>Farm House<input type="checkbox" name="" id=""><span class="right">2.00</span></p><p class="more">see list for selection</p></div>
            <div class="item"><p>Peppy Paneer<input type="checkbox" name="" id=""><span class="right">1.85 / 1.65</span></p><p class="more">black, passion, zen</p></div>
            <p class="item">Cheese N Corn<input type="checkbox" name="" id=""><span class="right">2.75 / 2.25 / 2.00</span></p>
            <p class="item">Indi Tandoori Paneer<input type="checkbox" name="" id=""><span class="right">2.75 / 2.50 / 2.25</span></p>
        </div>
        <div class="block">
            <h3>Sandwichs</h3>
            <div class="item"><p>Cheese plain <input type="checkbox" name="" id=""><span class="right">2.50 / 2.00 / 1.75</span></p><p class="more">espresso with hot water</p></div>
            <div class="item"><p>Cheese grilled <input type="checkbox" name="" id=""><span class="right">4.00 / 3.50 / 2.75</span></p><p class="more">latte with caramel and white chocolate</p></div>
            <div class="item"><p>Cheese bombay masala <input type="checkbox" name="" id=""><span class="right">4.75 / 3.75 / 3.00</span></p><p class="more">latte made with 1/2 &amp; 1/2</p></div>
            <div class="item"><p>Cheese veg tandori <input type="checkbox" name="" id=""><span class="right">4.00 / 3.50 / 2.75</span></p><p class="more">latte with chocolate orange and cinnamon</p></div>
            <div class="item"><p>Choclate toast <input type="checkbox" name="" id=""><span class="right">2.00</span></p><p class="more">espresso with whipping cream</p></div>
            <div class="item"><p>Cheese corn tandori <input type="checkbox" name="" id=""><span class="right">2.00</span></p><p class="more">espresso with cream</p></div>
            <div class="item"><p>Masala club <input type="checkbox" name="" id=""><span class="right">3.75 / 3.25 / 2.50</span></p><p class="more">espresso with steamed milk</p></div>
        </div>
        <div class="block">
          <h3>Ice Cream</h3>
          <h3>Ice Cream</h3>
          <p class="item">Seasonal fresh fruit sundae <input type="checkbox" name="" id=""><span class="right">2.50</span></p>
          <p class="item">Chunky kit kat <input type="checkbox" name="" id=""><span class="right">3.50</span></p>
          <p class="item">Ferrero rocher sundae <input type="checkbox" name="" id=""><span class="right">4.50</span></p>
          <p class="item">Fruit trifle sundae <input type="checkbox" name="" id=""><span class="right">4.50</span></p>
          <div class="item"><p>Nutty Muddry <input type="checkbox" name="" id=""><span class="right">4.50</span></p>
        </div>
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
        <a  href="booking.aspx"><h3>NEXT</h3></a>
      </section>
      
    </div>
    </form>
</body>
</html>
