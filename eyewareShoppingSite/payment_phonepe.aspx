<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="payment_phonepe.aspx.cs" Inherits="eyewareShoppingSite.payment_phonepe" %>

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
        #Button12{
            width: 325px;
            height: 100px;
            position: relative;
            top: -450px;
            left: 350px;
            background-color: mediumaquamarine;
            color: white;
            font-size: 41px;
            border: 1px solid;
            cursor: pointer;
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
                <asp:Button ID="Button4" runat="server" Text="Credit/Debit Card" PostBackUrl="~/payment.aspx" />
                <asp:Button ID="Button5" runat="server" Text="BHIM UPI/Phone Pe"/>
                <asp:Button ID="Button6" runat="server" Text="Net Banking" />
                <asp:Button ID="Button7" runat="server" Text="UPI QR Code" PostBackUrl="~/QRpayment.aspx" />
                <asp:Button ID="Button8" runat="server" Text="Paytm" PostBackUrl="~/QRpayment.aspx" />
                <asp:Button ID="Button9" runat="server" Text="Google Pay" />
                <asp:Button ID="Button10" runat="server" Text="Cash On Delivary" />
                <asp:Button ID="Button11" runat="server" Text="Store Credit" />
            </div>         
            <div>
                <asp:Button ID="Button12" runat="server" Text="Place Order" PostBackUrl="~/invoice.aspx" />
            </div>

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
