<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="bill.aspx.cs" Inherits="WebApplication2.bill" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">





    <title></title>

	   <link rel="stylesheet" href="bill.css">
</head>
<body>
    <form id="form1" runat="server">
     
		<div class="invoice-box">
			<table>
				<tr class="top">
					<td colspan="2">
						<table>
							<tr>
								<td class="title">
									<img src="./images/logo.png" alt="CAfe Reminince" style="width: 100%; max-width: 300px" />
								</td>

								<td>
									Invoice #: 123<br />
									Created:  <asp:Label ID="date" runat="server" Text=""></asp:Label><br />
									Due:  <asp:Label ID="date2" runat="server" Text=""></asp:Label>
								</td>
							</tr>
						</table>
					</td>
				</tr>

				<tr class="information">
					<td colspan="2">
						<table>
							<tr>
								<td>
									Survey No, 124, <br />
									Paud Rd, Kothrud, Pune<br />
									Maharashtra 411038<br />
									<br />
									
								</td>

								<td>
									-------<br />
									User-<br />
									 <asp:Label ID="emaill" runat="server" Text="Lbale"></asp:Label><br />
									 <asp:Label ID="mobilee" runat="server"></asp:Label>
									 <asp:Label ID="text" runat="server" Text=""></asp:Label>
								</td>
							</tr>
						</table>
					</td>
				</tr>

				<tr class="heading">
					<td>Payment Method</td>

					<td>CASH #</td>
				</tr>

				<tr class="details">
					<td>CASH</td>

					<td>1000</td>
				</tr>

				<tr class="heading">
					<td>Element</td>

					<td>Value</td>
				</tr>

				<tr class="item">
					<td>Type (AC / NON_AC)</td>

					<td>< <asp:Label ID="typee" runat="server"></asp:Label></td>
				</tr>

				<tr class="item">
					<td>Number of People</td>

					<td> <asp:Label ID="peoplee" runat="server" ></asp:Label></td>
				</tr>

				<tr class="item last">
					<td>Time of Booking</td>

					<td> <asp:Label ID="timee" runat="server" ></asp:Label></td>
				</tr><tr class="item last">
					<td>Order</td>

					<td>1.Cold Coffee<br />
					    2.Margherita Pizza<br />
					    3.Cheese plain <br />
					4.Seasonal fresh fruit sundae</td>
				</tr>

				<tr class="total">
					<td></td>

					<td>Total: $1000.00</td>
				</tr>
			</table>
		</div>
		<button ><a href="HomePage.aspx">GO BACK</a></button>
    </form>
</body>
</html>
