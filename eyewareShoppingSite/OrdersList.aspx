<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="OrdersList.aspx.cs" Inherits="eyewareShoppingSite.OrdersList" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>
            
    </title>
    <style>
        #LinkButton1{
            font-size:27px;
            margin-right:30px;
            margin-top:20px;    
        }
        #TextBox1{           
            width: 225px;
            height: 32px;
            top: 25px;
            position: relative;
        }
        .heading{
            font-size: 30px;
            left: -25px;
            position: relative;
            top: 30px;
            color: darkblue;
        }
        #Button1{
            position: relative;
            top: 24px;
            width: 60px;
            height: 38px;
            background-color: papayawhip;
        }
        #Button4{
           position: relative;
            left: 500px;
            top: 50px;
            width: 100px;
            height: 50px;
            background-color: papayawhip;
        }

        .auto-style1 {
            margin-left: 66px;
        }
        .price{
            position: relative;
            left: 750px;
            font-size: 35px;
            top: -300px;
            font-weight:bolder;   
            color: #8800ff;   
        }
        .buttoncss{
            position: relative;
            left: 900px;
            width: 150px;
            height: 75px;
            margin-right: 50px;
            font-size:22px;
            background-color:lightgrey;    
            top:-400px;
            cursor:pointer; 
        }
        .status1{
            position:relative;
            font-size:40px;
            top:-600px;
            left:1300px;        
        }
    </style>
</head>
<body style="background-color:navajowhite" >
    <form id="form1" runat="server">
        <div align="center">
            <div align="right">
                <asp:LinkButton ID="LinkButton1" runat="server" PostBackUrl="~/homePage.aspx" >HomePage</asp:LinkButton>
                <br /><br />
            </div>
            <h1 style="font-size:60px; color:red; font-family:'Cambria Math'">Recent Orders Activity</h1>
            <b class="heading">Track Order :</b>
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            <asp:Button ID="Button1" runat="server" Text="Search" OnClick="Button1_Click" />
             <asp:Button ID="Button4" runat="server" Text="View Products" onclick="Button4_Click" />
            <br /><br /><br />

            <div>
                <br />
                <asp:DataList ID="DataList1" runat="server" CssClass="auto-style1" DataSourceID="SqlDataSource1" Height="444px" Width="386px"  >
                    <ItemTemplate>
                        <div style="border:2px solid; height:200px; width:1500px;background-color:white">
                            <asp:Image ID="Image1" runat="server" ImageUrl='<%# Eval("image") %>' style="width:300px; height:200px" />
                           <br /><br />
                            <h2 style="position:relative; left:340px; font-size:35px; top:-200px; color:navy"><asp:Label ID="Label1" runat="server" Text='<%# Eval("productname") %>'></asp:Label></h2>
                            <p style="position:relative; left:340px;top:10px;  top:-200px; font-size:20px">ORDER ID : <asp:Label ID="Label2" runat="server" Text='<%# Eval("orderid") %>'></asp:Label></p>
                            <p class="price">&#8377<asp:Label ID="Label3" runat="server" Text='<%# Eval("price") %>' ></asp:Label></p>
                            <h2 style="position:relative; left:900px; top:-400px; color:blue">Product is ordered at <asp:Label ID="Label4" runat="server" Text='<%# Eval("date") %>'></asp:Label> </h2>
                            <asp:Button ID="Button2" runat="server" Text="Order Details" CssClass="buttoncss" />
                            <asp:Button ID="Button3" runat="server" Text="Cancel Order" CssClass="buttoncss" OnClick="Button3_Click" OnCommand="Button3_Command" CommandArgument='<%# Eval("orderid") %>' CommandName="canelOrder"  />

                            <p class="status1" style="color:blue; font-weight:bolder;">Status</p>
                            <asp:Label ID="Label5" class="status1" runat="server" Text='<%# Eval("status") %>' ></asp:Label>
                        </div>
                    </ItemTemplate>
                </asp:DataList>
                <br /><br />
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DIT-TrainingConnectionString11 %>" SelectCommand="SELECT [image], [orderid], [productname], [price], [date], [status] FROM [chaitanya_eyewearorders]"></asp:SqlDataSource>
            </div>
        </div>
    </form>
</body>
</html>
