<%@ Page Title="" Language="C#" MasterPageFile="~/Header.master" AutoEventWireup="true" CodeFile="AdminHome.aspx.cs" Inherits="AdminHome" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
   <!DOCTYPE HTML>
<!--
	Dimension by HTML5 UP
	html5up.net | @ajlkn
	Free for personal and commercial use under the CCA 3.0 license (html5up.net/license)
-->
<html>
	<head>
		<title>Dimension by HTML5 UP</title>
		<meta charset="utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
		<link rel="stylesheet" href="assets1/css/main.css" />
		<!--[if lte IE 9]><link rel="stylesheet" href="assets1/css/ie9.css" /><![endif]-->
		<noscript><link rel="stylesheet" href="assets1/css/noscript.css" /></noscript>
	</head>
	<body>

		<!-- Wrapper -->
			<div id="wrapper">

				<!-- Header -->
					<header id="header">
						<div class="logo">
							<span class="icon fa-diamond"></span>
						</div>
						<div class="content">
							<div class="inner">
								<h1>Hello employee</h1>
								<p><!--[--><strong>Success is not the measure of a man but a triumph over those who choose to hold him back. - Bill clayton</strong></p>
							</div>
						</div>
						<nav>
							<ul>
								<asp:Button ID="Button1" runat="server" Text="Rent A Book" OnClick="Button1_Click" />
                                <p>
                                <asp:Button ID="Button2" runat="server" Text="Check Rented Books" OnClick="Button2_Click"/>
                                </p>
                                <p>
                                <asp:Button ID="Button3" runat="server" Text="Check Stocks" OnClick="Button3_Click" />
                                </p>
                                <p>
                                    <asp:Button ID="Button4" runat="server" Text="Order New Stock" OnClick="Button4_Click" />
                                </p>
                                <p>
                                    <asp:Button ID="Button5" runat ="server" Text="Return Books" OnClick="Button5_Click" />
                                </p>
							</ul>
						</nav>
					</header>

				

		<!-- Scripts -->
			<script src="assets1/js/jquery.min.js"></script>
			<script src="assets1/js/skel.min.js"></script>
			<script src="assets1/js/util.js"></script>
			<script src="assets1/js/main.js"></script>

	</body>
</html>

</asp:Content>

