<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="Aplicatie.Home" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Home</title>
    <style>body {
    background: #394659;
    background-size: cover;
    max-width: 100%;
    height: auto;
}
h1{
    text-align: center;
	color:white;
	background-color:black;
	padding:20px;;
}
.Login {
    align: center;
    top: 50%;
    left: 50%;
    transform: translate (-50, -50);
    width: 30%;
    height: 40%;
    box-sizing: border-box;
    background: #c1c1c1;
}
.menu{
    list-style:none;
	width:60%;
	margin:auto;
	text-align:center;
	padding: 20px 0 20px 0;
	font-family: "Times New Roman", Georgia, Serif;
	
}

.menu > li {
    display: inline-block;
	padding-right: 50px;
}

.menu > li > a{
	text-decoration:none;
	color: white;
}

.menu > li > a:hover{
	color: #c1c1c1;
}
.center {
    display: block;
    margin-left: auto;
    margin-right: auto;
    width: 100%;
}

.informatii{
	width:81.9%;
	margin:auto;
	background-color:#f5f5dc;
	padding:10px;
}

.informatii{
	width:81.9%;
	margin:auto;
	background-color:#f5f5dc;
	padding:10px;
}
.footer {
    position: fixed;
    left: 0;
    bottom: 0;
    width: 100%;
    background-color: #808080;
    color: white;
    text-align: center;
}
.fa {
  padding: 20px;
  font-size: 30px;
  width: 30px;
  text-align: center;
  text-decoration: none;
  margin: 5px 2px;
  border-radius: 50%;

img {
    max-width: 100%;
    max-height: 100%;
}

}</style>
</head>
<body>
    <form id="form1" runat="server">
        <ul class="menu">
            <li><a href="Home.aspx">Home</a></li>
            <li><a href="Login.aspx">Login</a></li>
            <li><a href="Register.aspx">Register</a></li>
            <li><a href="Ninja/MovieDB.aspx">MovieDB</a></li>
            <li><a href="../NewM.aspx">New Movies</a></li>
        </ul>
    <div>
        
     <div class="informatii">
         <h1>CinemaGeek</h1>
         <Items>
                 <a href="../NewM.aspx"><img src="Imagini/cpt.jpg" class="center"/></a>
            </Items>
    </div>
    </div>
    </form>
</body>
</html>
