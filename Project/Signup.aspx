<%@ Page Title="" Language="C#" MasterPageFile="~/Header.master" AutoEventWireup="true" CodeFile="Signup.aspx.cs" Inherits="Signup" %>

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
		<title>Sign Up</title>
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
				<p>&quot;The more that you read, the more things you will know. The more you learn, the more places you&#39;ll go. &quot; <br />
                    - Dr. Seuss</p>
			</header>

		<!-- Signup Form -->
			    
                <p>
                    <asp:TextBox ID="name" runat="server" placeholder =" Full Name" ></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Enter your name" ControlToValidate="name" ValidationGroup="submit"></asp:RequiredFieldValidator>
                </p>
                <p>
                    <asp:TextBox ID="uname" runat="server" placeholder =" User Name" ></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Enter your user name" ControlToValidate="uname" ValidationGroup="submit"></asp:RequiredFieldValidator>
                </p>         
                <p>
                    <asp:TextBox ID="pass" runat="server" placeholder =" Password" TextMode="Password" ></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Password Cannot Be Blank" ControlToValidate="pass" ValidationGroup="submit"></asp:RequiredFieldValidator>
                </p>
                <p>
                    <asp:Button ID="Button1" runat="server" Text="Join Us" OnClick="Button1_Click" ValidationGroup="submit" />
                </p>
                
                <p>
                    <asp:Button ID="Button2" runat="server" Text="Login Page" OnClick="Button2_Click" />
                </p>
                

		<!-- Footer -->
        

		<!-- Scripts -->
			<!--[if lte IE 8]><script src="assets/js/ie/respond.min.js"></script><![endif]-->
			<script src="assets/js/main.js"></script>

	 
	    

	    

	</body>
</html>
                
                

		</asp:Content>

