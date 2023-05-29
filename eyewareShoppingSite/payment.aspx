<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="payment.aspx.cs" Inherits="eyewareShoppingSite.payment" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>
        .auto-style1 {
            height: 30px;
            margin-top:-10px;
        }
         .auto-style2 {
            height: 150px;
            text-align:center;
        }
         .imageclass2 {
            width:300px;
            height:150px;
        }
         #Button3{
            width:200px;        
            height:50px;
            font-size:20px;
            font-family: emoji;
        }
        #Button2{
            width:200px;
            height:50px;
            font-size:20px;
            font-family: emoji;
        }
        #Button1{
            width:200px;
            height:50px;
            font-size:20px;
            font-family: emoji;
        }
        .flexcontainer{
            margin-top:10px;
            display: flex;
            justify-content: space-around;
            cursor: pointer;         
        }
        .address{
            background-color: whitesmoke;
            border: groove;          
            position: relative;
            margin-left: 500px;
            margin-top: 50px;
            width: 900px;
            height: 880px;
            border-radius:20px;
            text-align: start;
        }
        .auto-style4 {
            height: 46px;
            margin-top:10px;
        }
        #Button4{
            margin-top:10px;
            position:relative;          
            width: 150px;
            height: 60px;
        }
        #Button5{
            margin-top:10px;
            position:relative;        
            width: 150px;
            height: 60px;
        }
        #Button6{
            margin-top:10px;
            position:relative;        
            width: 150px;
            height: 60px;
        }
        #Button7{
            margin-top:10px;
            position:relative;        
            width: 150px;
            height: 60px;
        }
        #Button8{
            margin-top:10px;
            position:relative;        
            width: 150px;
            height: 60px;
        }
        #Button9{
            margin-top:10px;
            position:relative;        
            width: 150px;
            height: 60px;
        }
        #Button10{
            margin-top:10px;
            position:relative;        
            width: 150px;
            height: 60px;
        }
        #Button11{
            margin-top:10px;
            position:relative;        
            width: 150px;
            height: 60px;
        }
        .payment{
            background-color:red;
            height:300px;
        }
        .flexcontainer{
            background-color: white;
            display: flex;
            color: darkblue;
            justify-content:space-around;
            align-items:start;
            cursor: pointer;
        }
        .auto-style7 {
            height: 590px;
            width: 152px;
        }   
        .auto-style8 {          
            height: 600px;
            width: 736px;
            margin-left: 158px;
            margin-top: -580px;

        }
        .imageclass1{
            position:relative;
            top: -87px;
            left: 385px;
            width: 175px;
            height: 100px;
        }
        #TextBox1{
            position: relative;
            top: -61px;
            left: 7px;
            height: 50px;
            width: 630px;
            font-size:20px;
        }
        #TextBox2{
            margin-top:25px;
            position: relative;
            top: -61px;
            left: 7px;
            height: 50px;
            width: 300px;
            font-size:20px;
        }
        #TextBox3{
            margin-top:25px;
           position: relative;
            top: -60px;
            left: 25px;
            height: 50px;
            width: 300px;
            font-size: 20px;
        }
        #TextBox4{
            margin-top:25px;
             position: relative;
            top: -61px;
            left: 7px;
            height: 50px;
            width: 630px;
            font-size:20px;
        }
        #TextBox5
        {
            margin-top:25px;
             position: relative;
            top: -61px;
            left: 7px;
            height: 50px;
            width: 630px;
            font-size:20px;
        }
        #Button12{
            width: 300px;
            height: 80px;
            position: relative;
            top: -45px;
            left: 150px;
            background-color: mediumaquamarine;
            color: white;
            font-size: 41px;
            border:1px solid;
            cursor:pointer;
        }
        .logopayment{
            position:relative;
            width:130px;
            height:130px;
            margin-left:40px;
        }
        </style>
</head>
<body>
    <form id="form1" runat="server">      
        <div style="background-color:black" class="auto-style2">
            <img alt="" src="data:image/jpeg;base64,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" class="imageclass2"/>           
        </div>

        <div class ="address">
            <div class="flexcontainer">
                <asp:Button ID="Button1" runat="server" Text="&#10112; Mobile" style ="border-radius:35px; color:white; background-color:gainsboro" />
                <asp:Button ID="Button2" runat="server" Text="&#10113; Shipping Address" style ="border-radius:35px; color:white; background-color:gainsboro" />
                <asp:Button ID="Button3" runat="server" Text="&#10114; Payment & Discount" style ="border-radius:35px; color:white; background-color:dimgrey" />           
            </div>
            <div style="background-color:aliceblue;" class="auto-style4">
                <p style="color:black;position:relative; top:10px;left:10px; font-size:25px"> PROMOTIONAL DISCOUNTS </p>
            </div>
            <div style="background-color:mediumaquamarine;" class="auto-style4">
                <p style="color:black;position:relative; top:10px;left:10px; font-size:25px"> PAYMENT OPTIONS </p>
            </div>

            <div class="auto-style7">
                <asp:Button ID="Button4" runat="server" Text="Credit/Debit Card"/>
                <asp:Button ID="Button5" runat="server" Text="BHIM UPI/Phone Pe" PostBackUrl="~/payment_phonepe.aspx" />
                <asp:Button ID="Button6" runat="server" Text="Net Banking" PostBackUrl="~/payment_phonepe.aspx" />
                <asp:Button ID="Button7" runat="server" Text="UPI QR Code" PostBackUrl="~/QRpayment.aspx" />
                <asp:Button ID="Button8" runat="server" Text="Paytm" PostBackUrl="~/QRpayment.aspx" />
                <asp:Button ID="Button9" runat="server" Text="Google Pay" PostBackUrl="~/payment_phonepe.aspx" />
                <asp:Button ID="Button10" runat="server" Text="Cash On Delivary" PostBackUrl="~/payment_phonepe.aspx" />
                <asp:Button ID="Button11" runat="server" Text="Store Credit" PostBackUrl="~/payment_phonepe.aspx" />
            </div>

            <div class="auto-style8">
                <p style="font-size:25px"> 100% Secure </p>
                <img alt="" src="data:image/png;base64,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" class="imageclass1"/>
                <img alt="" src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQyorfr38VzOhiHZTQRmlOZVxmecKyqRNYsZO4CydQFxpLZQg3QBR6Wy-i1L0KM_9q_YIw&usqp=CAU" class="imageclass1" />
                <asp:TextBox ID="TextBox1" placeholder="  Enter Card Number " runat="server"></asp:TextBox>
                <asp:TextBox ID="TextBox2" placeholder="  MM/YYYY " runat="server"></asp:TextBox>
                <asp:TextBox ID="TextBox3" placeholder="  CVV " runat="server" ></asp:TextBox>
                <asp:TextBox ID="TextBox4" placeholder="  Card Holder Name " runat="server"></asp:TextBox>
                <asp:TextBox ID="TextBox5" placeholder="  Mobile Number " runat="server"></asp:TextBox>
                <p style="font-size:25px; position:relative; top:-60px">&#10003; Secure this card as per RBI guidelines <a href="">Learn More</a></p>
                <asp:Button ID="Button12" runat="server" Text="Place Order" OnClick="Button12_Click" />
            </div>
            <p style="position:relative; top:-40px; left:65px; font-size:30px">By placing the order, I have read and agreed to lenskart.com T&C</p>
            <h2>Lenskart Assurance</h2>
            <img alt="" src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSJL22mZuPUy9AmB--wXJoo64gHKNrvQsKBk9vvyljyaJHRv_6d5LAKsAIMwvj8wvHdVwE&usqp=CAU" class="logopayment" />
            <img alt="" src="https://www.shutterstock.com/image-vector/100-original-guarantee-label-illustration-260nw-1285449841.jpg" class="logopayment"/>
            <img alt="" src="https://www.shutterstock.com/image-vector/logo-shield-ilustrator-vector-creation-260nw-1656289708.jpg" class="logopayment" />
            <img alt="" src="https://cdn-icons-png.flaticon.com/512/86/86034.png" class="logopayment" />
            <img alt="" src="https://cdn-icons-png.flaticon.com/128/4989/4989753.png" class="logopayment" />
        </div>
    </form>
</body>
</html>
