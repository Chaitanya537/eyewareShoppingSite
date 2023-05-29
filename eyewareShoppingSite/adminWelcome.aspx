<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="adminWelcome.aspx.cs" Inherits="eyewareShoppingSite.adminWelcome" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>
        .flexcontainer {
            background-color: white;
            display: flex;
            color: darkblue;
            font-size: 22px;
            justify-content: space-around;
            cursor: pointer;
        }
        .auto-style1 {
            height: 152px;
            background-color: white;
        }
        .logo {
            width: 300px;
            height: 160px;
            margin-top: -4px;
        }         
        .number {
            font-size: 25px;
            font-family: cursive;
            position: relative;
            top: -120px;
            left: 350px;
        }
        #TextBox1 {
            position: relative;
            border: 2px solid darkblue;
            top: -190px;
            left: 530px;
            width: 575px;
            height: 40px;
        }
        #Button1 {
            width: 75px;
            height: 45px;
            position: relative;
            top: -190px;
            left: 530px;
            background-color: white;
            border-color: darkblue;
        }
        .Button2 {
            background-color: white;
            color: darkblue;
            border: 0px;
            width: 175px;
            height: 75px;
            position: relative;
            font-size: 25px;
            top: -300px;
            left: 1200px;
            cursor: pointer;
        }
        #Button3 {
            background-color: white;
            color: darkblue;
            border: 0px;
            width: 175px;
            height: 75px;
            position: relative;
            font-size: 25px;
            top: -300px;
            left: 1200px;
            cursor: pointer;
        }       
        .auto-style2 {
            background-color: navajowhite;
            height: 880px;
            top:30px;
        }
        #Button2
        {
            position: relative;
            left: 600px;
            top: 100px;
            width: 500px;
            height: 100px;
            text-align: center;
            font-size: 30px;
            color: darkblue;
            font-weight: bold;
            font-family: monospace;
        }
    </style>
</head>
<body style="height: 1416px">
    <form id="form1" runat="server">
        <div class ="flexcontainer">
            <div>Do more, Be more |</div>
            <div>Try in 3D |</div>
            <div>store Locator|</div>
            <div>Quality |</div>
            <div>USA |</div>
            <div>Singapore |</div>
            <div>UAE |</div>
            <div>John Jacobs |</div>
            <div>Aqualens |</div>
            <div>Cobrowsing |</div>
            <div>Engineering Blog |</div>
            <div>Lenskart franchise |</div>
            <div> Lenskart Optom |</div>
            <div class="auto-style29"> Contact US |</div>
        </div>

        <div class="auto-style1">
            <a href ="https://localhost:44320/registrationPage.aspx">
                 <img alt="error" src="https://logos-world.net/wp-content/uploads/2023/01/Lenskart-Logo.jpg" class="logo" /></a>
            <p class="number"> &#9743; 1800-111-111 </p>
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            <asp:Button ID="Button1" runat="server" Text="Search" />
           <p style="color:navajowhite">Track Order</p>
            <asp:Button class ="Button2" runat="server" Text="Track Order" />
            <asp:Button class ="Button2" runat="server" Text="User Details" />
            <asp:Button class ="Button2" runat="server" Text=" &#9829; Whish List" />
            <asp:Button class='fas' ID="Button3" runat="server" Text=" &#xf07a; Cart" />
        </div>
        <div class="auto-style2">
            <br /><br />
            <h2 style="font-size:30px; text-align:end">Hello, Welcome Admin </h2>
            <h1 style ="font-size:30px;"></h1>
            <br /><br />
            <asp:Button ID="Button2" runat="server" Text="Click here to continue" PostBackUrl="~/adminPageInsert.aspx" />
        </div>
    </form>
</body>
</html>
