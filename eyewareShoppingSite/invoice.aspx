<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="invoice.aspx.cs" Inherits="eyewareShoppingSite.invoice" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
           height: 933px;           
            width: 900px;
            position: relative;            
            left: 500px;    
            background-color:white;
        }
        .invoice1{
            border:1px solid;
            position: relative;
            top: 200px;
            height: 550px;
        }
        .auto-style2 {
            width: 887px;
        }
        .auto-style3 {
            width: 424px;
        }
        .auto-style4 {
            height: 48px;
        }
        .auto-style5 {
            height: 41px;
        }
        #HyperLink1
        {
            font-size:20px;
        }
    </style>
</head>
<body style="background-color:darkgray">
    <form id="form1" runat="server">
        <div class ="auto-style1">
            <div class="invoice1">
                <table border="1">
                    <tr>
                        <td style="text-align:center">
                            <h2 style="text-align:center" class="auto-style2">Retail Invoice</h2>
                        </td>
                    </tr>
                    <tr>
                        <td>Order no :
                            <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
                            <br /><br />
                            Order Date :
                            <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <table>
                                <tr>
                                    <td class="auto-style3">
                                        Buyer Address : <br />
                                        <asp:Label ID="Label3" runat="server" Text="Label"></asp:Label>
                                    </td>
                                    <td>
                                        Seller Address : <br />
                                        C.P Talao, Road no. 37,Behind stem Public school, Sidhipet, Hyderabad.. 
                                    </td>
                                </tr>
                            </table>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" Width="884px" Height="158px">
                                <Columns>
                                    <asp:BoundField DataField="OrderID" HeaderText="OrderID">
                                    <FooterStyle HorizontalAlign="Center" />
                                    <ItemStyle HorizontalAlign="Center" />
                                    </asp:BoundField>
                                    <asp:BoundField DataField="productName" HeaderText="productName">
                                    <FooterStyle HorizontalAlign="Center" />
                                    <ItemStyle HorizontalAlign="Center" />
                                    </asp:BoundField>
                                    <asp:BoundField DataField="productPrice" HeaderText="productPrice">
                                    <FooterStyle HorizontalAlign="Center" />
                                    <ItemStyle HorizontalAlign="Center" />
                                    </asp:BoundField>
                                    <asp:BoundField DataField="productQuantity" HeaderText="productQuantity">
                                    <FooterStyle HorizontalAlign="Center" />
                                    <ItemStyle HorizontalAlign="Center" />
                                    </asp:BoundField>
                                    <asp:BoundField DataField="TotalPrice" HeaderText="TotalPrice">
                                    <FooterStyle HorizontalAlign="Center" />
                                    <ItemStyle HorizontalAlign="Center" />
                                    </asp:BoundField>
                                </Columns>

                            </asp:GridView>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style5">
                            Grand Total:
                            <asp:Label ID="Label4" runat="server" Text="Label"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td align="center" class="auto-style4">This is computer generated invoice and does not required signature.</td>
                    </tr>
                </table>
                <br />
                <br />
                <asp:HyperLink ID="HyperLink1" NavigateUrl="~/homePage.aspx" runat="server">Go to Homepage</asp:HyperLink>
                
            </div>
            
        </div>
    </form>
</body>
</html>
