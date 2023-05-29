<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="addCart.aspx.cs" Inherits="eyewareShoppingSite.addCart" %>

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
            top: -185px;
            left: 530px;
            width: 575px;
            height: 40px;
        }
        #Button1 {
            width: 75px;
            height: 45px;
            position: relative;
            top: -185px;
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
        #GridView1{
            width:100px;
            height:100px;
        }
        .auto-style2 {
            position: relative;
            left: 50px;
            top: -620px;
        }
        #Button4{
           height: 60px;
            width: 500px;
            position: relative;
            left: 1360px;
            border-radius: 50px;
            background-color: springgreen;
            color:black;
            font-size:25px;
            cursor:pointer;
        }
        .auto-style3 {
            left: 700px;
            top: 14px;
            height: 30px;
        }
        .auto-style4 {
            height: 385px;
            width: 625px;
            position: relative;
            top: -600px;
            left: 1300px;
        }
        .billing{
            font-size:35px;
             position: relative;
            top: -0px;
            left: 1315px;
            color:black;
        }
        .secure{
           width: 50px;
            height: 50px;
            left: 1250px;
            position: relative;
            top: -25px;
        }
        .auto-style5 {
            width: 95%;
        }
        .auto-style6 {
            height: 62px;
        }
        .auto-style7 {
            left: -1297px;
            height: 53px;
            width: 582px;
            top: 762px;
        }
        .auto-style8 {
            left: -1297px;
            height: 50px;
            width: 582px;
            top: 709px;
        }
        .auto-style9 {
            left: -1297px;
            top: 656px;
            height: 50px;
            width: 582px;
        }
        .auto-style10 {
            width: 521px;
            height: 50px;
            left: -1297px;
            top: 603px;
        }
        .auto-style11 {
            height: 65px;
            width: 350px;
            left: -1297px;
            top: 818px;
        }
        .auto-style12 {
            height: 50px;
        }
        </style>
</head>
<body style="background-color: ivory">
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

        <div class="auto-style1" >
            <a href ="https://localhost:44320/homePage.aspx">
                 <img alt="error" src="https://logos-world.net/wp-content/uploads/2023/01/Lenskart-Logo.jpg" class="logo" /></a>
            <p class="number"> &#9743; 1800-111-111 </p>
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            <asp:Button ID="Button1" runat="server" Text="Search" />
           <p style="color:white">Track Order</p>
            <asp:Button class ="Button2" runat="server" Text="Track Order" OnClick="Unnamed_Click1" />
            <asp:Button ID="sample" class ="Button2" runat="server" Text="User Details" onclick="sample_Click" />
            <asp:Button class ="Button2" runat="server" Text=" &#9829; Whish List" OnClick="Unnamed_Click" />
            <asp:Button class='fas' ID="Button3" runat="server" Text=" &#xf07a; Cart" />
        </div>

        <img alt="" src="https://thumbs.dreamstime.com/b/well-organized-fully-editable-antivirus-protection-security-icon-any-use-like-print-media-web-commercial-use-any-kind-158454387.jpg" class="secure"/>
        <p style="position: relative; top: -100px; left: 1300px; font-size: 30px; color:darkblue">100% Safe and Secure</p>

        <h2 class="billing">Bill Details</h2>
        <div style="border: 1px solid; height: 385px; width: 575px;position:relative; left:1310px">                                                                                                               
            
            <table style="width:75%" class="auto-style5">
                <tr style=" font-size:25px; position:relative; top:20px; left:20px">
                    <td class="auto-style10">&nbsp;Total Price</td>
                    <td class="auto-style12">&#8377;<asp:Label ID="Label2" runat="server" Text="0"></asp:Label></td>
                </tr>
                <tr  style=" font-size:25px; position:relative; top:20px; left:20px">
                    <td class="auto-style9">&nbsp;Gift Voucher</td>
                    <td style="color:lightseagreen">&#8377;<asp:Label ID="Label3" runat="server" Text="0"></asp:Label></td>
                </tr>
                <tr  style="color:darkblue; font-size:27px; position:relative; top:20px; left:20px">
                    <td class="auto-style8">&nbsp;Net Amount Before Tax</td>
                    <td>&#8377;<asp:Label ID="Label4" runat="server" Text="0"></asp:Label></td>
                </tr>
                <tr style="font-size:25px; position:relative; top:20px; left:20px">
                    <td class="auto-style7">&nbsp;Tax</td>
                    <td>&#8377;<asp:Label ID="Label5" runat="server" Text="0"></asp:Label></td>
                </tr>
                <tr  style="color:darkblue; font-size:27px; position:relative; top:20px; left:20px">
                    <td class="auto-style11">&nbsp;Total Payable</td>
                    <td class="auto-style6">&#8377;<asp:Label ID="Label6" runat="server" Text="0"></asp:Label></td>
                </tr>
            </table>
            
        </div>
        <asp:Button ID="Button4" runat="server" Text="Button" CssClass="auto-style3" onclick="Button4_Click"/>

        <h2 style="position:relative; left:70px; top:-625px; font-size:40px; color:darkblue">Cart Items</h2>
        <br />
        <br />

        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="#CCFFFF" BorderWidth="4px" EmptyDataText="No Data Available" Font-Bold="True" Height="260px" ShowFooter="True" Width="1200px" OnRowDeleting="GridView1_RowDeleting" CssClass="auto-style2">
            <Columns>
                <asp:BoundField DataField="sno" HeaderText="sno">
                <FooterStyle HorizontalAlign="Center" />
                <ItemStyle HorizontalAlign="Center" />
                </asp:BoundField>
                <asp:ImageField DataImageUrlField="image" HeaderText="image">
                    <ControlStyle Height="350px" Width="550px" />
                    <FooterStyle HorizontalAlign="Center" />
                    <ItemStyle HorizontalAlign="Center" />
                </asp:ImageField>
                <asp:BoundField DataField="description" HeaderText="Description">
                <FooterStyle HorizontalAlign="Center" />
                <ItemStyle HorizontalAlign="Center" />
                </asp:BoundField>
                <asp:BoundField DataField="price" HeaderText="price">
                <ControlStyle Font-Bold="False" Font-Size="20px" />
                <FooterStyle HorizontalAlign="Center" />
                <ItemStyle HorizontalAlign="Center" />
                </asp:BoundField>
                <asp:CommandField DeleteText="Remove" ShowDeleteButton="True">
                <FooterStyle HorizontalAlign="Center" />
                <ItemStyle HorizontalAlign="Center" />
                </asp:CommandField>
            </Columns>
           
        </asp:GridView>
        <br />
        <asp:Label ID="Label1" style="position:relative; margin-left:600px; top:-600px" runat="server" Text="Total Amount : "></asp:Label>
        <asp:TextBox ID="TextBox2" style="position:relative; margin-left:30px; top:-600px" runat="server" ReadOnly="True"></asp:TextBox>
        <br />
        
    </form>
</body>
</html>
