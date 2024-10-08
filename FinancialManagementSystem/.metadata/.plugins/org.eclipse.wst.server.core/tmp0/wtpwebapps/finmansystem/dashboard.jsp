<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<% 
    if (session.getAttribute("username") == null) {
        response.sendRedirect("login.jsp");
        return;
    }
%>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>FinMan Dashboard</title>
<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/css-non-secured/dashboard.css">
</head>
<body>
	<header>
		<div class="navbar">
			<h1>FinMan</h1>
			<nav>
				<ul>
					<li><a href="#">Home</a></li>
					<li><a href="#">Stock Market</a></li>
					<li><a href="#">Savings Plans</a></li>
					<li><a href="#">Insurance Policies</a></li>
					<li><a href="<%=request.getContextPath()%>/ProfileServlet">Profile</a></li>
					<!-- Profile Link -->
					<li><a href="<%=request.getContextPath()%>/LogoutServlet">Logout</a></li>
					<!-- Logout Link -->
				</ul>
			</nav>
		</div>
		<div class="search-bar">
			<input type="text" placeholder="Search stocks or indices...">
			<button>Search</button>
		</div>
	</header>

	<main>
		<section class="content">
			<!-- Real-Time Stock Prices -->
			<div class="box stock-prices">
				<h2>Real-Time Stock Prices</h2>
				<ul>
					<li>Apple Inc. (AAPL): <span>$145.57</span></li>
					<li>Tesla Inc. (TSLA): <span>$650.10</span></li>
					<li>Amazon.com Inc. (AMZN): <span>$3400.15</span></li>
				</ul>
			</div>

			<!-- Market Indices -->
			<div class="box market-indices">
				<h2>Market Indices</h2>
				<ul>
					<li>Dow Jones: <span>34,105.45</span></li>
					<li>NASDAQ: <span>13,495.55</span></li>
					<li>S&P 500: <span>4,081.34</span></li>
				</ul>
			</div>

			<!-- Top Gainers & Losers -->
			<div class="box top-gainers-losers">
				<h2>Top Gainers & Losers</h2>
				<div class="gainers-losers">
					<p>
						Top Gainer: <span>Stock XYZ (+12.75%)</span>
					</p>
					<p>
						Top Loser: <span>Stock ABC (-4.55%)</span>
					</p>
					<div class="graph-placeholder">Graph Placeholder</div>
				</div>
			</div>
		</section>
	</main>

	<footer>
		<div class="footer-content">
			<div class="quick-links">
				<h3>Quick Links</h3>
				<ul>
					<li><a href="#">Home</a></li>
					<li><a href="#">About Us</a></li>
					<li><a href="#">Services</a></li>
					<li><a href="#">Investment Tips</a></li>
				</ul>
			</div>
			<div class="market-insights">
				<h3>Market Insights</h3>
				<p>Daily Reports</p>
				<p>Weekly Newsletters</p>
			</div>
			<div class="contact-us">
				<h3>Contact Us</h3>
				<p>123 Market Street, New York, NY</p>
				<p>Email: info@finman.com</p>
				<p>Phone: +1 234 567 890</p>
			</div>
		</div>
		<p>&copy; 2024 FinMan. All rights reserved.</p>
	</footer>
</body>
</html>
