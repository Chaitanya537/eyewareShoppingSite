<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="sunglasses.aspx.cs" Inherits="eyewareShoppingSite.sunglasses" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script src='https://kit.fontawesome.com/a076d05399.js' crossorigin='anonymous'></script>

    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css" />
    <script src="https://cdn.jsdelivr.net/npm/jquery@3.6.3/dist/jquery.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js"></script>

  <%--  <link href="homeStyleSheet.css" rel="stylesheet" />--%>
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
        .sections {
            background-color: black;
            display: flex;
            color: white;
            font-size: 20px;
            justify-content: space-around;
            cursor: pointer;
            height: 100px;
        }
        .Button4 {
            background-color: antiquewhite;
            font-size: 22px;
            border: 0px;
            color: darkblue;
            cursor: pointer;
        }
        .auto-style3 {
            width: 173px;
            margin-left: 1726px;
            margin-top: 0px;
            position: relative;
            top: -100px;
            left: -20px;
            height: 48px;
        }
        .auto-style2 {
            background-color: antiquewhite;
            display: flex;
            color: darkblue;
            font-size: 22px;
            justify-content: space-around;
            cursor: pointer;
            width: 1724px;
            height: 60px;
            position: relative;
            top: -35px;
            left: 0px;
        }
        .number {
            font-size: 25px;
            font-family: cursive;
            position: relative;
            top: -100px;
            left: 350px;
        }
        #TextBox1 {
            position: relative;
            border: 2px solid darkblue;
            top: -160px;
            left: 530px;
            width: 575px;
            height: 40px;
        }
        #Button1 {
            width: 75px;
            height: 45px;
            position: relative;
            top: -160px;
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
            top: -260px;
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
            top: -260px;
            left: 1200px;
            cursor: pointer;
        }
        .imageImp{
            margin-top:15px;
            border:1px solid #000000;
            width:100%;
           height:400px;
        }
        .imageImp2{
            margin-top:15px;
            border:1px solid #000000;
            width:100%;
           height:200px;
        }
        .glasses2{
             position: relative;
            left: -30px;
            width: 250px;
            height: 250px;
            align-content: center;
        }
        .glassestext2 {
            position: relative;
            color: black;
            margin-top:5px;
        }
        .itemButton{
            width: 175px;
            height: 40px;
            background-color: cadetblue;
            color: white;
            border: 0px;
        }
        .auto-style4 {
            width: 150px;
            margin-left: 1726px;
            margin-top: 0px;
            position: relative;
            top: -100px;
            left: 13px;
            height: 62px;
        }
        .auto-style7 {
            font-size:17px;
            width: 350px;
            height: 2000px;
            margin-top:-55px;
            border:1px solid black;
        }
        .auto-style8 {
            border:1px solid black;
            width: 1530px;
            margin-left: 360px;
            height: 2400px;
            margin-top:-2000px;
            
        }
        #Image1{
            margin-left:10px;
            width:315px;
            height:275px;
        }
        .pl{
            margin-left:30px;
            margin-right:10px;
            margin-top:5px;
            width:15px;
            height:15px;
        }
        .itemBox1{
           margin-top: -30px;
           margin-left: 60px;
        }
        #result{
            margin-left: 15px;
            margin-top: 50px;
            width: 288px;
            height: 50px;
            font-size:22px;
        }
        .products{
            margin-left:0px;
            margin-top:30px;
            border:3px solid lightblue;
            width:470px;
            height:525px;
        }
        .imageProduct{
            width: 300px;
            height: 300px;
            margin-left: 75px;
            margin-top: -25px;
        }
        .p2{
            margin-top: 3px;
            margin-left: 440px;
            width: 20px;
            height: 20px;
        }
        .ratingProduct{
           position: relative;
            left: -285px;
            top: 140px;
            width: 90px;
            height: 37px;
            border-radius: 30px;
            border: 0px;
            background-color: lightgray;
        }
        .buttonProduct{
            position: relative;
            top: -50px;
            left: 355px;
            width: 100px;
            height: 50px;
            background-color:cadetblue;
            color:white;
            border:1px;
        }
        .rowproduct{
           display:flex;
           justify-content: space-around;
        }
    </style>
</head>
<body>
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
            <a href ="https://localhost:44320/homePage.aspx">
                 <img alt="error" src="https://logos-world.net/wp-content/uploads/2023/01/Lenskart-Logo.jpg" class="logo" /></a>
            <p class="number"> &#9743; 1800-111-111 </p>
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            <asp:Button ID="Button1" runat="server" Text="Search" OnClick="Button1_Click" />
           <p style="color:white">Track Order</p>
            <asp:Button class ="Button2" runat="server" Text="Track Order" OnClick="Unnamed_Click1" />
            <asp:Button ID="sample" class ="Button2" runat="server" Text="User Details" OnClick="Unnamed_Click" />
            <asp:Button class ="Button2" runat="server" Text=" &#9829; Whish List" PostBackUrl="~/addCart.aspx" />
            <asp:Button class='fas' ID="Button3" runat="server" Text=" &#xf07a; Cart" PostBackUrl="~/addCart.aspx" />
        </div>

        <div class ="auto-style2">
            <asp:Button class="Button4" runat="server" Text="EYEGLASSES" PostBackUrl="~/eyeglasses.aspx" />
            <asp:Button class="Button4" runat="server" Text="COMPUTER GLASSES" PostBackUrl="~/computerglasses.aspx" />
            <asp:Button class="Button4" runat="server" Text="KIDS GLASSES" PostBackUrl="~/sunglasses.aspx" />
            <asp:Button class="Button4" runat="server" Text="CONTACT LENSES" PostBackUrl ="~/contactlens.aspx" />
            <asp:Button class="Button4" runat="server" Text="SUN GLASSES" PostBackUrl="~/sunglasses.aspx" />
            <asp:Button class="Button4" runat="server" Text="POWER SUNGLASSES" PostBackUrl="~/sunglasses.aspx" />
            <asp:Button class="Button4" runat="server" Text="PROGRESSIVE LENSES" PostBackUrl="~/computerglasses.aspx" />
        </div>
        <a href="">
        <img alt="error" src="data:image/jpeg;base64,/9j/4AAQSkZJRgABAQAAAQABAAD/2wCEAAoHCBQVFBgUFBUZGRgaGxsZGRsaGxsZHRkbHBsaHhsbHh0iIC0kIB4pHhoaJTclKS4yNDQ4GyQ5PzkyPi0yNDABCwsLEA8QHhISHTQrJCcyMjQyPj4yNDU+NDs+MjI0MDAyNzA1MjAyMjA+OzI0MjUyMjIyMjAyMjsyMjUyOz4+Pv/AABEIALYBFQMBIgACEQEDEQH/xAAbAAEAAgMBAQAAAAAAAAAAAAAAAQYCAwQFB//EAEQQAAIBAgQCBwQHBQcEAwEAAAECEQADBBIhMQVBBhMiMlFhcQeBkbEUNEJSobLwI3Jzg8EkM2Kzw9HhgpLC8TVDdBX/xAAYAQEBAQEBAAAAAAAAAAAAAAAAAQIEA//EACgRAQEAAgEDBAEDBQAAAAAAAAABAhEDEiFBBDFRcbETIoEFFGHB0f/aAAwDAQACEQMRAD8AoIvs6qqlFEMrFsq5vtDNPeICKAYGvmSTvwWJyqUyZhlJQovbL5lZHZlaQVIEbwJHOuLO1tyVGn+JdwGU7MPFRpHiNebCuS2VcwL9jskDMrHtK3KCPdptQbVnM1xbTuiOZDgsq5pgOwjtSD4bVxZjtJ5fht8z8a77SG3eVQAhVxpd0X7yG4QYmCPAfjXC+5/ptudtNBQY104bNcdUlyxXIgBB1iFXXZfkK5lPlNRQbg7KTLagFdYcRBEDcczBG1SHIOpZTImBqI0JOsgj9RWmk0Hp4e2VdDndGKiHIy6kHsqZIZYe3MxuRFTxRGzglYi1bkAm4UEKMzN9mWMjXTMBvXnLeYQQzAjaCdJ3jwpnYnx2315ZQdfImDymg6nLdYP2kOJ1lVUDvKVaYMzIGkaVuZbmQh27BuNI8IU9spmDjKGkSI1PpTBMGGU5IGcshdkDLKlgTsJIQAqfsjxmlgXFbrDcyDJcXOMtwHKMhAA1GaAubnMzrQaHZmVFDBogARlaXVQRAMFVKgAmN5jXSLGJyg6qCAAIXU9oZoaDDwBqdIzczB12iJObKRoxBBOaDqoI1EhjOoGnpWxLp7LlwerhVDJn0knVTK5QSdCfDTwDN2yW0K5WhnBKhtCC2QsYAkjMQp5JruRU4dbZLJAdsnYYkp2x4D7Wn2WAJIieR0vaDXCqlACwC9qF1BI1PhsfM1sBtZGEOrK2ZDEyNuruHSG7Mgr4tPKAjrQQbggOWlsvZMNnJyiIG2pAgAqOZq1ezaPpwM6mzeIGbOcuQRmO0iIiAfEbVUGuEgqhYIdSs6AnLOnqAAd9BVt9mNvLj2VhDC1eEHeQsFY8f9qCqkhghAAJVZiTJAjNJJ1MSfM1BSNwflyE/D+tZm5s4mTDTtqRJG24PgahmjK+k8oOojaeY20msy1Wus8i6GRvqsmfjEeXM+VYn3k+O9ZARqd+Wx/XvqoBV5kjeBE68hP62qMognnpA+Mn8Pxovhv4VjQFHjt8fCdKgVJNDVEGlDSgUpSgUpSgUpSgUpSgi885d9hJJDEnmZjQeR2rBjOs67mZ1M/Ooc+cxoP16yaiOf6/Wo+NApSpB/XhQRSlKBUmJ5x8D51FKAan377x6/o1FKDswADSjQRocpcICdUUhoOoa4GjaA00sPGc5gma2w1UNmnQqkDsztPLWuYgwRGxg77/AO+hrCg6LFsMIAGYBidTJUAbCQCQMxjyM6CtLpHoduUjxjwrO1bMSCBuupA5a7/Cpe+2aTAPIQIAI7oB2WDoNtaDFVXKSWMxoABEzsSSDtJ0B5VsglVRUkk6FcxLsTAWBoSNgAJ7R8ahXGYlEynNKDMTk7QKgTqxG2vjNZG5cAUtqttzAbYMYZhEzrl1/pQSG7YJ6tdQdQrJKLoCAGkNtGxJ12MWr2ZMpxo7xbqb0yBHdiAZkgQsbRrVStsAwK5xAmViQ2UzH+HN74q0+y0/2/8Ak3vy0FWVhAgfZHMnkNayjSf1vy1rG1dORPJR/wC/WmaoMm0HLx5cx4786l2HrpzEQTE7HXQc611ncjl4A/htQR8tpqCKg1IqiKVJqKCVNRSlApSlApSlApSlApSlBppSlApSlApSlApSlApSlBFTSlAnlQ0pQZBzBWdCQSPMTHzPxrK28BtRquXVQZGZToY7J0GumkidYOulBmr96QGJBEtJIMg5hB72nORqdKt/stI+nRGvU3YM7DLqI5zp6R51TauXsyUjiGoibN1oiNCkiPKDQVC13F/dHyrOsLSkKoPIAfhWdAqaihoJzTE8hA+JPzJ3qDUltvKooJFQBSlApSaUClKUClKUClKUClKUGmlKUClWnoDwfB4vENh8U9xWcDqcmmYqHZ8xykCFUETHOvH49w0YfFXsOrFwjlFJGrCezIH2tQNNz8KDzqV24nhOJtp1lzD3kT7z27iL5SxWB760tgroQXDbuC2YhyjBDJgQ0ZTJ03oNFK6sXw2/aCtds3bat3S6OgPkCwAmOVMDw2/enqbNy5l7xt23cA7wSoIBjlQctKsHRbhNp8amFxou2g4yqoVkfrGKhAQVJCntakRpvWHSzgP0XGvhLWe4AVKDLmdgyB4hRqRJ2Gwmg8KlbThrmfqurfrJjJkbPMTGSM0xrEV03uD4pGCvhr6sRKg2rgJA3IGWTH4UHDSt9zBXVTrGtXFSYzm24SZiMxGWZ0id9Ks3Qvok2JxYs4q1ftp1bOTka2QZGTVlgA9r1y+VBUqV38b4e1jEXbRR1C3LipnBBa2rsqNqBmBA3Gh1rgoFW/2XD+3/AMm9+SqgTVv9l31/+Te/JQVS2eyp8h8qzA8Kwt91fQfKswfDSgilX72XYPBYlrmGxNjrLpDXVc90W1yIVkMCGzNO3PflVPxfD2+k3MPZR3K3bltFUFmYI7KNAPBdffQcINTOn6mvV4l0bxmHTrL+GdE5sQGUTtJUnL74rVd4Hi0RLjYe6EcqEbIxDFu6BH3pEeM0HnUmvT4n0dxmHQPfw7opIAYgESdgSCcpPgYqOF8AxWJBbD2HuKDBYABZ8MzEAnyBmg82lWLg/Dvo2Ns2+I4Z8jnKUZe9nGRSDIDAOykwdI91ej7Sej9vDYxLeFtkC4isLay3bLMsINTrA08ZoKZSuzF8Kv2ri2rll0dwCiFTmYEkCF3MkEe6u7EdE8fbVWfCXQGIUQuYyxgAhSSJJA1A3oPFpXqJ0dxjFlXC3iyRmXI2ZZEiRvqNa6uA9GcVdezdGGdrLXbau0aFOsGfSZK5Q0kCNDrQeDSrz7UOjq4a+j4ex1djIgLKDk6wtc0n72UCqNQKUpQaaUpQWz2X/wDyuH/mf5Vyrf0WwNu5x/Gu4DG0WZAdYYlFzeoBI/6q+bdH+LvhMTbxNtQzIScpMBgylWWeUhjryMb7VauIe0UtirOLw+GS06C4t1SwPXrc6vRmCAiMgIOuscpBC5cM4+gvXfpfFsJfsXAy9TlRcknRQZkjLKkNM1x9HuMNb4TjmtlXTC3bqYYkBl6tAj2mP3oLBgT5VXm6eYO2Xu4XhqpibgOZ3YMiljJIAGuusALPOvNbprHDnwKYdVe5PXXsw7bMZdygUdsgASTp7ooLRwjjF7HcF4gcWwutbFzKxVVPZtq6nsgCVfUGK6OjnELN3htjC4fHDA30jNmVAXbUsQHgMGJzSpnx8KpvQ7piMFavWLmHW/avGWUtl1KhGBBVgylQNPLnOndZ6cYa7hreFx+C65bUC2UcoQFGVZHZghIBIbXwFBZek9rFDHcLOIS2wW8iLiEYzcJKEhkKjISVLAAsN9atGP4ctq7jMXhlS7jTaUojHVFCZUUAGe21tjOmbKBIia+bt7RU66wRg1GGw6kWrWcEh+yEfMVMFVBAAH2jqeXmW+nV5eIvxBEUZwFe1mOVrYVVCl473ZDZo0PKNKCzdBsc30TiPFnCvihnAYqBASyjDsiIBJGaInIK7/ZX0qxeLvXbWJfrAqC4rFVUocwUr2QBBBkfumqxhfaGLWJu3beEVbF5QLtjMO08tmuAhIzMGggr2oEmurBe0TDYV/7Fw5baNrd7YVnIBygEKQAszz3IgcwsPRTjTrw7iFx1Vxhr2INtWAjs/tFBjftmZ3ry/Z30qxeL4mRecZWstmVECqcjDIeZ0ztz514dzpynU46zbwgRcWWYZXAFstaS2xgIM0spfl3vfXgdF+OPgsSmJRQ+UMrITlzowgiYMGYMxyoM+l/Ebt7G3zdcuUuXLSSAMttLlwKogDQSd9da8Wvd6Ycbt43E9fbs9SCiqy9ntOGcs5KgSSGAnfs14VAq4ey76+P4N78tU+rh7Lvr4/g3vy0FSsnsr6D5VnWux3F/dHyrZQXv2Of/ACLf/muf5lirL7O8MgvcUxHZDriL1tWfZFD3HJJ5KTE/uCqF0F46mCxQv3FZkKNbbLuAxQ5hrqQUXTwJ99vXp5gbWKZrFlvo99G+kAIFY3CzEPlJhpDMG8ZHhBCwcAxLKLqY/ieFxNu4sZc1pcsyGGhAKEHblA8648Dxq7a4JcvK4d7LPatOQpGVL3V2mgDKSFykGNYFVxuLcCwqXGwuHOIuMIRLyOyIRtrcGig7xJMb1q4n0rwY4UMDhkYO4TPIIUPmV7jAk6ywMAaCeQEUHudHuMXsZwbHnFP1jIt4KxVQYFlbizlAEhjIMeHhXR0YxVvF8MsYXCY0YbEWwA4XKXLDNmlCQSrMc0qf6iqr0D6UYXDYfEYXFq5S8SSUBMhkFt0MEEaAajxO0CvQbpHwjF4VMNi0uWhaICMilsyqpRGlQzSUOoYb8zvQej04TGImBt4hEuKmIs/2lCczODlh0yjJnmdCRKjnFXrEcHttilxZAa8lopaUmAurFmG+pzhZjQE/er53iemfDow2ERLr4W0wZnfPmJthjbAEhjFzKxmB2QII283jvT0NxK1jMOr9XaTqyrdk3FYkuI1gGRHmgNBYfZ/iruLxuKxWMUdfYVbSJlA6oM90ugjcgrlzGTqdda8joP06xmI4hbt3rma3fLjJlQC32GdcpChtMsakyCZ1rqudPsFaxa4rDWni8pGLBBViVCC0ygsULLDgxE5tyYrXb6ScEwl36Vg7Nx7zNBHbC21dh1hUOcoOXNAX0lQTQWXh+NuDjuJsBv2bWFuMsDV1W0qmYnZm0mNaqfEenGMbiAwyMtuymLWyFRRJVbwttLHXtdraN67m6a8NHEVxiC4M1m5bunK0s2a11cLMaKjyRHKZr53jceDjHxNvUfSXvpm0kdabiT4cpoLv7ZMdd+kpYznquqS5k0jPnuDNtMxpXzir/wBP+k2AxthHtIwxIKglkIZbcMWTOOyRmI51QKBSlKDTSlKBSlXrof0ftrb+mYkLljOgfuqo/wDsYcydwPQ7kQFVwfBcTdGa3YuMvjlIB9CYB91acdw29Z/vbTpOxZSAfRtiffV0x/tDhosWgVH2rhIn0UbD1Purs4N03tXz1OKtqmfsyTnttOmVg3dnzkeYoPmtKtXTbo0MK4uWgepuGI3yPqcv7pAJHoRXH0Q4MMVfyvPVoM7xpmEwq+8/gDQeZg+G3roJt2ncDchTl9M201yjXb1r6L0j6VJh2OHsW1YoMrfZRNO6ANyAddgPjVV6LcD+k3DmkW0jPGmadlB5TEny9RQeZhMBdu/3dtn8SBoPU7Cui9wPEoJa00eUN+CkmrZxrpFbw56mxbUlNDyRI+yANz47es149jpfcn9pbRl/wypHpJIoK0RSrnxbh1vE2uus9+J8C0bow+9+tqpdBNKUoFW/2XfXx/BvfkqoVb/Zd9fH8G9+SgqVjuL6D5VsrXY7q+g+VbKCailbLFh7jZbaM7fdVSx+AE1L2Guld2I4NibYzPYuKviUaB6mNPfXDUxyxy7y7Wyz3KUrswXCr90TbtO4+8FOX/u2/GrllMZu3RJb7OOoY6V04zAXbRi7be3O2ZSAfQ7H3VyvsfSpLLNwssWnpT0ctYW1auW3di5ghypA7M6Qo51WK+ge0P6thv3v9Ovn9c/o88s+PeV3d38vXnxmOeohjV6boNauW8+GxIZomGKusxtmTu/A1TsJgbt0xbtO8b5FLR6kCB7660tYvBXFu9XctsDoWUhW/wAJOxB2iavPbdTDLVnj5Tjmu9x3HHjcJctXGt3FKupgg/gQeYI51oq+e0Gylyxh8WogtCnzV1zrPoQf+41Q616fl/Vwls1fP2nLh05aKUpXu82mlKUGdi3ndU+8yr8SB/WvoftFvm3h7VlNFdoMfdtgQvpJU/8ATVAwP95b/iJ+YV9J6dcOa/hw6CXtMXgakoRDx5jQ/wDTQfL6UBrK3bZmCqCzMQFA3JOwFB9Ke79J4MzXNWW2TJ3LWmMH1OT8TXH7K11xP8of5ldXGVGD4WLBIzsot6c2clrkeQGf8K5PZWdcR/K/1KCmcXM4i/8Axbn+Y1Xroqeq4Y95R2v2r+9ZVfyCqJxb6xe/i3PztV76A3kvYS7hW3UsCOZt3Adf+7N+HjQfOiTz35nxPjUE11cQwNyxca1cEMp9zDkw8Qd65aC09CLxz3LfLKH9CCAfiCPhXhcYtBL9xRsHaPeZ/rVs6GcONq2+IudkOOzOkW1klvQ/+PnVPx2J6y49z77Fh5AnQfCKDnpSlAq3+y76+P4N78lVCrf7Lvr4/g3vyUFSsdxfQfKtla7HcX0HyrZQdHD8I164lpO87BR5eJPkACfdV94txS1wy2uHw1tWuFczM3wDvEFmJBgaQPDQGudA2AxqTzW4B65D/Sa19N1YY27m55Cv7vVqPmDXByycnPOPL2k3r5rowvTx3Ke9uvp34Hp7iVcG6qOnMBcjAf4TMe4/EVv6Z8ItNaTG4eAj5c4AgHP3XjkZMEeJHnNLr6Dw9D//ABHzDTLcZZ8M5IPx1qc/Hjw5Y54TW7JZ8ytceV5Jljl37bjxuhHAVxFxrlwTbtxKnZ3OoB/wgakeY869DjHTpw5t4RUCL2Q7Cc0adkAgBfDf3V09DQW4biVt9+bo03zG2uX+lfPRUwwnNy5XPvJ2k/2ZW4YTp896+icA6VLiz9FxdtDn0Ugdlj90gkw3gQd/AxVQ6UcI+i3ntiShGdCdypnQ+YII90865eFqxvWgneNy3ljxziKtftRI6yyOeR59CVj5NWpj+lzzHD2su59eUtufHcr7x1+0P6thv3v9Oqr0Z4R9KvrbMhAC7kb5QRoD4kkD3k8qtXtD+rYb97/Trm9mDDrL45lLZHoGbN81rx4s7h6S3H3m/wAt5yXmkv8Aj8Onj/SoYVvouDtooTssxEqp5qoBEkc2POa4uFdOHZurxio9p+yzBYyg82GzL46D37VVOIKwvXQ/eFy5m9c5n8a5yRz2510Yej4rx95u3z5387eWXPn1dr/D6X09sqmCREEKtxFUbwAjga+lfNK+g9MyV4dh0fvzbB8ZFtpr59Wf6fLOPv8ANa9Tf3/xClKV3uZppSlBuwf97b/fT8wr6ZxTpCuGe3nUlHzhiN1jLBjmNTI3r5nhO+n76/mFWfpyD+y/mf8AhQe8/BuG4s9YjqrHVurcJJPih0B9wrO0nDcBLhlLx97rLh8gBos+Og86+YkCgFB63SLjj4u5nYZUWQib5RzJPNjpJ8gOVev0E41Ywxvdc5XP1eWFZpy552BjvCqlSg6MfcD3bjrqrXLjDlozkj8DWzhXErmHurdtntLoQdmU7qfI/wBAeVcdKD6cONcOxyBcQFRxyuHIVPPJcESPePMVpHC+E2D1he2Y1Aa51nwSTPwNfN6AUFp6T9KOvBtWQVt/aY6F/KOS/ifLY1alKBSlKBVv9l318fwb35KqFW/2XfXx/BvfkoKlY7i+g+VbK12O4voPlWyg24TEtauJcQwyMGU+YPPy5GvoOIs4XittXS4LeIQQQYJA3KldMyTJDDx9RXzmnn4bVz83B12ZS6s9r/16YcnTLLNyrzh+gOQ58RfQW11bLKyPNmgL6617vFMVaucOvmx/drbdEgQITs6Dw00r5rh8PfvsERXuGdB2mA8yToo8zV26QhcFw1MJmBd9DHOWz3G/dk5R6iuDn48rnhMsuq7mp8TzXTx5SY2yamlc6I9IPolw55Np4DxqVI7rgc4kyPA+VWTH9DbOJPXYS8qq5zEAZ0k7wQZX0+W1fPKyt3GUyrFT4qSD+FdnJ6a3Lr48tXz23L9vHDlkmspuPo3D+CYXh37fEXQ7gHJpEaa5EklmI0n5a1R+O8UbFXnusIB7Kr91BsPxJPmTXAzEmSST4kyfjUVrh9Pcbc87u3z8fUZz5NzWM1H0bAXsPxHCJh7tzJdTLzAbMoyh1B7wI3HmfI1W2zcMxoytnCgZtMudHALLEmDoCDO4FVwigFZw9L02zq/bd9vtcuXerrvPL6LxHgWH4h/aMLdVXIGcETJj7S7q3KdQY99auH9DreGIvYy8hRDmC91JG2YnVv3QNfPaqCjEGQSDyI0PxrJ3LasSx8WJJ+JrH9rySdOPJen676+Ntfq429Vx7/b3Ol3H/pd0ZJFtJCToWmMzkcpgQPAeZrwKkmorq48JhjMcfaPHPK5XqqQf1ANKilejLTSlKDOzcysrb5WBjxgg163H+NDE5ITJkzfazTmjyG0fjXjUoFKUoFKUoFKUoFKUoFKUoFKUoFW/2XfXx/BvfkqoE1b/AGXfXx/BvfkoKlY7i+g+VbK12O4voPlWygUpSgtXD+mr2cOllLSSgjOzEjcmcoA8fGq7j8dcvXDcuuXc8zyHIAbAeQrnpXlhwYYZXKTvfdvLPLKSW9oUpSvVgpFIpQKkjb/j8fCopQKVIB3qKCQaMeZqKUCpqJpUGmlKVQpSlApSlApSlApSlApSlApSKyKERmBAOoMbiSJE76gj3GgxpStnVHKWOwOWdTLeAI0JjX09RIa6uPswI+niAR+wu7mdcgk7DSeXLxNU4Crl7LlY48tBI6q7mOp1K6SfEwfgaCn2O4voPlWytdjuL6D5VsoFKUoFKUoFKUoFDSlBLeVRNZRNYmgyy6TyBAJ8zMfGD8KxpWaRB/38x5a0GFKVOWgKPT30rZbsMZgfGB8zSpufKuVhGn6jx15a1H6/X41ncQjLIIlQdeYM6+n+1Y5fHwkaVURSlAaBSlKBSlTlMxz8tflQRShFTG2v/H6/rQS0eB1215fDXlrWNdWBw+eQQ5A1i2uZjBDMI8BbDtO0qPGtaW1My4WELLPaznkojYkeP/oMUCxqSDPISYj1A3rBmmt+GQd5gSCGC6fagak8gMwM6nTbWaXMQc2bTNqSd8xO79qdTPkNBpQRkZQ6shEMM0pDKVJBBYiU70EeMSNBUpiCEZFLak6EqRlbLP2ZzSidoR3ai2N3zKSIYhj3u0NCD3vGNazW9GQ9XojZyy5kLSwMFwdIiFIgiTQYJmBIBjMhkK4UFSM2UmYjQdk6yAN6tPsu+v8A8m9+SqrbKZpzaamXXMNBpIBMydPLQ+ls9l9sjHBtINm9syk93mAZGx3HzFBT7HcX0HyrZWux3F9B8q2UClKUClKUCpAqKUClKkUCgpHP0/8AX68Kld+VQQT/AMVmE0O52iNvEgz4VjlPn4f7CpY8h79P60ADT18vPfx5UYyP14fOiqSYGpNSgkFdNwZ/Dfw1+VFYERz+FK2KwG5ifX/ilTZphjRlcplAiZAJI35Trz/CsEy5jmGgMkDwnUCf60pWkbcOiXHAAKqSJ1zMAB2o2BkydhyFcxESPPelKCKUpQKUpQKyBpSg7sJhAyMWML2joBmBXzPIgmRpOnhW3h6C49xLROcpdzFwuUrqRAAJBgeOhiNqUoOCxaLZoPdQuZ03ygxHPtD4Vus4FmViCNCo1nn7vSlKDW1lVcqzGAwBIUExBJgFvKN/PTasktMylQeyqtcgs3ZEwwUbSZWTAnKNualBguJfNnLEkFSDoTI7p1B2AiPTwq3+y4Z8czKIVbV4wTJE5V3jU7a6c9BtSlBS7HcX0HyrZSlApSlApSlApSlBIqVA57c/SopQKzby3iSfHWflpU0qUSqgtlEjXnDaR6CfhRQCshQCJJMnUeH4fjSlFa1OtZ5yusnntp4f8UpSibbjWZ/D+s0pSs6V/9k=" class="auto-style4" /></a>
        
        <div class="auto-style7">
            <h4 style="margin-left:20px; font-family:unset; margin-top:25px"> FRAME TYPE </h4>
            <img alt="" src="https://cdn.w600.comps.canstockphoto.com/glasses-model-icons-man-women-frames-stock-photograph_csp54105793.jpg" id="Image1"/>

            <h4 style="margin-left:20px; font-family:unset; margin-top:25px"> FRAME SHAPE </h4>
            <img alt="" src="https://cdn.w600.comps.canstockphoto.com/glasses-silhouette-stylish-frame-vector-clip-art_csp76126812.jpg" id="Image1"/>

            <h4 style="margin-left:20px; font-family:unset; margin-top:25px"> FRAME TYPE </h4>
            <table>
                <tr> <input type="checkbox" class="pl" /><p class="itemBox1">Extra Narrow</p></tr> 
                <tr> <input type="checkbox" class="pl"/><p class="itemBox1"> Narrow</p></tr>
                <tr> <input type="checkbox" class="pl" /><p class="itemBox1"> Medium </p></tr> 
                <tr> <input type="checkbox" class="pl"/><p class="itemBox1"> Wide </p></tr>
                <tr> <input type="checkbox" class="pl"/><p class="itemBox1"> Extra Wide </p></tr>
            </table>

            <h4 style="margin-left:20px; font-family:unset; margin-top:25px"> BRANDS </h4>
            <table>
                <tr> <input type="checkbox" class="pl" /><p class="itemBox1"> VINCENT CHASE ONLINE</p></tr> 
                <tr> <input type="checkbox" class="pl"/><p class="itemBox1"> LENSKART AIR ONLINE</p></tr>
                <tr> <input type="checkbox" class="pl" /><p class="itemBox1"> JOHN JACOBS </p></tr> 
                <tr> <input type="checkbox" class="pl"/><p class="itemBox1"> OJOS </p></tr>
                <tr> <input type="checkbox" class="pl"/><p class="itemBox1"> JOHN JACOBS JJ </p></tr>
            </table>

            <h4 style="margin-left:20px; font-family:unset; margin-top:25px"> PRICE </h4>
            <table>
                <tr> <input type="checkbox" class="pl" /><p class="itemBox1"> Rs. 500 - Rs.999</p></tr> 
                <tr> <input type="checkbox" class="pl"/><p class="itemBox1"> Rs. 1000 - Rs.1499</p></tr>
                <tr> <input type="checkbox" class="pl" /><p class="itemBox1"> Rs. 1500 - Rs.1999 </p></tr> 
                <tr> <input type="checkbox" class="pl"/><p class="itemBox1"> Rs. 2000 - Rs.2499 </p></tr>
                <tr> <input type="checkbox" class="pl"/><p class="itemBox1"> Rs. 2500 - Rs.2999 </p></tr>
            </table>
          
            <h4 style="margin-left:20px; font-family:unset; margin-top:25px"> GENDER </h4>
            <table>
                <tr> <input type="checkbox" class="pl" /><p class="itemBox1">UNISEX </p></tr> 
                <tr> <input type="checkbox" class="pl"/><p class="itemBox1"> WOMEN </p></tr>
                <tr> <input type="checkbox" class="pl" /><p class="itemBox1"> MEN </p></tr> 
                <tr> <input type="checkbox" class="pl"/><p class="itemBox1"> TEEN </p></tr>            
            </table>

            <h4 style="margin-left:20px; font-family:unset; margin-top:25px"> GLASS COLOR </h4>
            <table>
                <tr> <input type="checkbox" class="pl" /><p class="itemBox1"> GREEN </p></tr> 
                <tr> <input type="checkbox" class="pl"/><p class="itemBox1"> GREY </p></tr>               
            </table>

            <h4 style="margin-left:20px; font-family:unset; margin-top:25px"> PRODUCT TYPE </h4>
            <table>
                <tr> <input type="checkbox" class="pl" /><p class="itemBox1"> SUN GLASSES </p></tr>               
            </table>

            <input id="result" type="button" value="MORE FILTERS &#8744;" />
        </div>
        <div class="auto-style8">
            <asp:DataList ID="DataList1" runat="server" DataKeyField="id" DataSourceID="SqlDataSource1" CellPadding="20" CellSpacing="2" RepeatColumns="3" RepeatDirection="Horizontal" OnSelectedIndexChanged="DataList1_SelectedIndexChanged" OnItemCommand="DataList1_ItemCommand">
                <ItemTemplate>
                    <div class="products">
                    <input type="checkbox" style=" margin-top: 10px; margin-left: 435px; width: 20px; height: 20px;"/>                
                    <asp:Image ID="Image2" runat="server" ImageUrl='<%# Eval("image") %>' style="width:300px; height:250px; position:relative; left:50px;top:-10px"/>                  
                    <button class="ratingProduct">
                        <asp:Label ID="Label2" runat="server" Text='<%# Eval("rating") %>'></asp:Label>&#11088; <asp:Label ID="Label1" runat="server" Text='<%# Eval("reviews") %>'></asp:Label>
                    </button>

                    <asp:Label ID="Label3" runat="server" Text='<%# Eval("name") %>' style="position:relative;font-size:32px;font-weight:500; margin-left:15px; top:50px"></asp:Label>                   
                    <p style="font-size:24px; margin-left:15px; color: darkblue; margin-top:50px"> Size: <asp:Label ID="Label4" runat="server" Text='<%# Eval("size") %>'></asp:Label> &#183; <asp:Label ID="Label6" runat="server" Text='<%# Eval("brand") %>'></asp:Label></p>
                    <h4 style="position:relative; margin-left:20px;top:10px"> &#8377;<asp:Label ID="priceLabel" runat="server" Text='<%# Eval("price") %>' /> <s style="color:darkgray">&#8377; <asp:Label ID="Label5" runat="server" Text='<%# Eval("originalPrice") %>'></asp:Label></s> (+tax)</h4>
                        <asp:Button ID="Button2" CssClass="buttonProduct" runat="server" Text="Buy now" OnClick="Button2_Click" CommandArgument='<%#Eval("id") %>' CommandName="AddtoCart" />
                </div>            
                </ItemTemplate>
            </asp:DataList>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DIT-TrainingConnectionString5 %>" SelectCommand="SELECT * FROM [chaitanya_eyewearadminproduct] WHERE ([type] = @type)">
                <SelectParameters>
                    <asp:Parameter DefaultValue="Sun glasses" Name="type" Type="String" />
                </SelectParameters>
            </asp:SqlDataSource>
        </div>

    </form>
</body>
</html>
