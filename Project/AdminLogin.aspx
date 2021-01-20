<%@ Page Title="" Language="C#" MasterPageFile="~/Header.master" AutoEventWireup="true" CodeFile="AdminLogin.aspx.cs" Inherits="AdminLogin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <!DOCTYPE HTML>
<!--
	Eventually by HTML5 UP
	html5up.net | @ajlkn
	Free for personal and commercial use under the CCA 3.0 license (html5up.net/license)
-->
<html>
	<head>
		<title>Eventually by HTML5 UP</title>
		<meta charset="utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
		<!--[if lte IE 8]><script src="assets/js/ie/html5shiv.js"></script><![endif]-->
		<link rel="stylesheet" href="assets/css/main.css" />
		<!--[if lte IE 8]><link rel="stylesheet" href="assets/css/ie8.css" /><![endif]-->
		<!--[if lte IE 9]><link rel="stylesheet" href="assets/css/ie9.css" /><![endif]-->
	</head>
	<body>

		<!-- Header -->
			<header id="header">
				<h1>Read Your Heart&#39;s Content</h1>
				<p>&quot;Sometimes you read a book it fills you with evangelical zeal, and you become convinced that the shattered world will never be put back together unless and until all living humans read the book&quot;<br />
                    - John Green</p>
			</header>

		<!-- Signup Form -->
			    
                <p>
                    <asp:TextBox ID="aname" runat="server" placeholder =" User Name" ></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="aname" ErrorMessage="Enter User Name" ValidationGroup="submit"></asp:RequiredFieldValidator>
                </p>
                <p>
                    <asp:TextBox ID="pass" runat="server" placeholder =" Password" TextMode="Password" ValidationGroup="submit" ></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="pass" ErrorMessage="Enter Password" ValidationGroup="submit"></asp:RequiredFieldValidator>
                </p>
                <p>
                    <asp:Button ID="Button1" runat="server" Text="Login" ValidationGroup="submit" OnClick="Button1_Click" Width="307px" />
                </p>   
                <p>
                    <asp:Button ID="Button2" runat="server" Text="Go To User Login" OnClick="Button2_Click"  />
                </p>
                
                

		<!-- Footer -->
        

		<!-- Scripts -->
			<!--[if lte IE 8]><script src="assets/js/ie/respond.min.js"></script><![endif]-->
			<script src="assets/js/main.js"></script>

	 
	    

	    

	</body>
</html>
</asp:Content>

