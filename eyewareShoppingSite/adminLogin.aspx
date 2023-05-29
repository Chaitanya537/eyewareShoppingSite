<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="adminLogin.aspx.cs" Inherits="eyewareShoppingSite.adminLogin" %>


<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>
    </title>
    <style>
        img{
            border-radius: 20px;      
            margin-top: -75px;
            margin-left: 750px;
            width: 325px;
            height: 275px;
        }
        .signin{
            background-color: whitesmoke;
            border-radius: 20px;
            border: groove;
            border-color:darkblue;
            position: relative;
            margin-left: 600px;
            margin-top: -70px;
            width: 650px;
            height: 750px;
            text-align: start;
        }
        .auto-style2 {
            height: 300px;
            width: 640px;
            margin-left: 5px;
            margin-top: 5px;
        }
        #TextBox1{
            width: 600px;
            height: 40px;
            position: relative;
            top: -20px;
            font-size:20px;
        }
         #TextBox2{
            width: 600px;
            height: 40px;
            position: relative;
            top: -20px;
            font-size:30px;
        }
        .auto-style6 {
           /* border:groove;*/
            height: 447px;
        }
        h2{
            position: relative;
            color: midnightblue;
            font-size: 35px;
            left: 15px;
        }
        #TextBox1{
             border-radius: 20px;
            border: 2px solid #609;   
            left: 15px;
            border-color: #4a5fd3;
        }
        #TextBox2{
            border-radius: 20px;
            border: 2px solid #609;   
            left: 15px;      
            border-color: #4a5fd3;
            top: 10px;
        }
        #Checkbox1{
            position: relative;
            top: 73px;
            left: -595px;
            width: 23px;
            height: 20px;
        }
        #label1{
            color:darkblue;
            position: relative;
            left: 50px;
            top: 37px;
            font-size: 25px;
        }
        #Button1Admin{
            border-radius: 15px;
            border:1px solid;
            background-color: darkgray;
            width: 600px;
            height: 50px;
            position: relative;
            left: 17px;
            top: 70px;
            font-size:25px;
            cursor:pointer;
        }
        #ID1{
            position: relative;
            top: 75px;
            left: 20px;
            font-size: 25px;
            text-align:center;
        }
        #whatsapp{
            position: relative;
            right: 440px;
            width: 40px;
            height: 40px;
            top: -228px;
        }
        .auto-style7 {
            left: 16px;
            top: 71px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <a href="https://logos-world.net/wp-content/uploads/2023/01/Lenskart-Logo.jpg">
              <img alt="problem in image" src="https://logos-world.net/wp-content/uploads/2023/01/Lenskart-Logo.jpg" class="auto-style9" />
            </a> 
        </div>
         <div class="signin">
             <div>
                 <img alt="" class="auto-style2" src="https://itk-assets.nyc3.cdn.digitaloceanspaces.com/2022/09/eyebuydirect-222-1620x911.jpg" />
             </div>
             <div class="auto-style6">
                 <h2>ADMIN LOGIN DETAILS</h2>
                 <asp:TextBox ID="TextBox1" runat="server" placeholder ="   ADMIN ID" AutoComplete="off"></asp:TextBox>
                 <asp:TextBox ID="TextBox2" runat="server" placeholder ="   password" TextMode="Password"></asp:TextBox>
                 <asp:Button ID="Button1Admin" runat="server" Text="Button" OnClick="Button1Admin_Click" CssClass="auto-style7" />
                 <p id="ID1">Not an ADMIN?
                 <a href="https://localhost:44320/loginPage.aspx">Customers Login</a></p>
            </div>     
    </form>
</body>