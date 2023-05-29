<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="loginPage.aspx.cs" Inherits="eyewareShoppingSite.loginPage" %>

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
            height: 800px;
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
            top: 40px;
        }
        #TextBox3{
            position:relative;
            border-radius: 20px;
            border: 2px solid #609;   
            left: 15px;      
            width:600px;
            height:40px;
            border-color: #4a5fd3;
            top: 10px;
            font-size:20px;
        }
        #Checkbox1{
            position: relative;
            top: 107px;
            left: -595px;
            width: 23px;
            height: 20px;
        }
        #label1{
            color:darkblue;
            position: relative;
            left: 50px;
            top: 70px;
            font-size: 25px;
        }
        #Button1{
            border-radius: 15px;
            border:1px solid;
            background-color: darkgray;
            width: 600px;
            height: 50px;
            position: relative;
            left: 17px;
            top: 100px;
            font-size:25px;
            cursor:pointer;
        }
        #ID1{
            position: relative;
            top: 100px;
            left: 20px;
            font-size: 25px;
        }
        #whatsapp{
            position: relative;
            right: 440px;
            width: 40px;
            height: 40px;
            top: -150px;
        }
        .auto-style7 {
            left: 14px;
            top: 40px;
        }
        .auto-style8 {
            left: 13px;
            top: 9px;
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
                 <h2>Sign-In</h2>

                 <asp:TextBox ID="TextBox1" runat="server" placeholder ="     Email/Phone number*"></asp:TextBox>
                  <asp:TextBox ID="TextBox3" runat="server" placeholder ="     User name" CssClass="auto-style8"></asp:TextBox>
                 <asp:TextBox ID="TextBox2" runat="server" placeholder ="   password*" TextMode="Password" CssClass="auto-style7"></asp:TextBox>

                 <input id="Checkbox1" type="checkbox" />
                 <label id="label1">Get updates on Whatsapp</label>
                 <asp:Button ID="Button1" runat="server" Text="Sign In" OnClick="Button1_Click1" />
                 <p id="ID1">New member?
                 <a href="https://localhost:44320/registrationPage.aspx">Create an Account</a></p>
         </div>     
             <img alt="error" id="whatsapp" src="data:image/jpeg;base64,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" />
    <a href="https://localhost:44320/adminLogin.aspx"><p style="font-size:30px; margin-left:160px"> FOR ADIMNS ONLY </p></a>
    </form>
</body>
</html>
