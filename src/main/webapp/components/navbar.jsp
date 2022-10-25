<%@page import="com.mycompany.e.commerce.entities.User"%>
<%
User user1 = (User) session.getAttribute("current-user");
%>




<nav class="navbar navbar-expand-lg navbar-dark custom-bg">
	<div class="container">
		
		<a href="index.jsp">&nbsp;<img alt="loading" src="img/logo2.png" height="70px" width="120px"></a>
		<button class="navbar-toggler" type="button" data-toggle="collapse"
			data-target="#navbarSupportedContent"
			aria-controls="navbarSupportedContent" aria-expanded="false"
			aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
		</button>

		<div class="collapse navbar-collapse" id="navbarSupportedContent">
			<ul class="navbar-nav mr-auto">
				<li class="nav-item active"><a class="nav-link"
					href="index.jsp">Home <span class="sr-only">(current)</span></a></li>

				<li class="nav-item dropdown"><a
					class="nav-link dropdown-toggle" href="" id="navbarDropdown"
					role="button" data-toggle="dropdown" aria-haspopup="true"
					aria-expanded="false"> Categories</a>
					<div class="dropdown-menu" aria-labelledby="navbarDropdown">
						<a class="dropdown-item" href="index.jsp?category=1">Laptop</a> <a
							class="dropdown-item" href="index.jsp?category=2">Mobiles</a> <a
							class="dropdown-item" href="index.jsp?category=5">Sports</a> <a
							class="dropdown-item" href="index.jsp?category=6">Books</a> <a
							class="dropdown-item" href="index.jsp?category=7">Kitchen</a> <a
							class="dropdown-item" href="index.jsp?category=9">Cloths</a> <a
							class="dropdown-item" href="index.jsp?category=10">Electonics</a>

					</div></li>
				<li class="nav-item active"><a class="nav-link"
					href="about.jsp">About Us <span class="sr-only">(current)</span></a>
				</li>
				<li class="nav-item active"><a class="nav-link"
					href="contact.jsp">Contact Us <span class="sr-only">(current)</span></a>
				</li>
			</ul>
			<ul class="navbar-nav ml-auto">

				<li class="nav-item active"><a class="nav-link" href="#"
					data-toggle="modal" data-target="#cart"> <i
						class="fa fa-cart-plus" aria-hidden="true"
						style="font-size: 30px; color: blue;"></i><span
						class="ml-2 cart-items"
						style="margin-top: -10px; font-size: 20px;">(0)</span></a></li>
				<%
				if (user1 == null) {
				%>

				<li class="nav-item active"><a class="nav-link"
					href="login.jsp">Login</a></li>
				<li class="nav-item active"><a class="nav-link"
					href="register.jsp">Register</a></li>

			</ul>
			<%
			} else {
			%>

			<li class="nav-item active"><a class="nav-link"
				href="<%=user1.getUserType().equals("admin") ? "admin.jsp" : "normal.jsp"%>"><%=user1.getUserName()%></a>
			</li>
			<li class="nav-item active"><a class="nav-link"
				href="LogoutServlet">Logout</a></li>

			</ul>

			<%
			}
			%>

		</div>
	</div>
</nav>
