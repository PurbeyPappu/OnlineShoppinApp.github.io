<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<%@include file="components/common_css_js.jsp"%>
<title>Payment_of_orders_e_commerce</title>
</head>
<body>
	<%@include file="components/navbar.jsp"%>

	<center>

		<!-- order -->
		<form action="Order" method="post">
			<div class="container fluid-text">
				<div class="row mt-8">
					<!-- card -->
					<div class="col md-4">

						<div class="card">
							<div class="card-body">
								<div class="row mt-5">
									<img alt="loading" src="img/gpay.png" height="50px"
										width="200px"><a href="https://pay.google.com"><button
											type="button" class="btn btn-primary checkout-btn"&nbsp; >Google
											Pay</button></a><br> <br> <br>
								</div>
								<div class="row mt-5 mx-6">
									<img alt="loading" src="img/phonepay.png" height="80px"
										width="200px"> <a href="https://login.fonepay.com"><button
											type="button" class="btn btn-primary checkout-btn">Phone
											Pay</button></a><br> <br> <br>
								</div>
								<form action="OrderServlet" method="post">
									<div class="row mt-5">
										<img alt="loading" src="img/cashond.jpeg" height="80px"
											width="200px"> <a href="orderSucess.jsp"><button
												type="button" class="btn btn-primary checkout-btn">Cash
												on Delivery</button></a><br>
								</form>
								<br> <br>
							</div>
							<div class="row mt-5 mx-6">
								<img alt="loading" src="img/card.png" height="80px"
									width="200px"> <a href="cardpay.jsp"><button
										type="button" class="btn btn-primary checkout-btn">Card
										Pay</button></a>
							</div>
						</div>
					</div>
				</div>
			</div>
			</div>
		</form>
	</center>
</body>
</html>
