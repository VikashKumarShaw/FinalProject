<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<!doctype html> <!-- PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd"> -->
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.1/css/all.css" integrity="sha384-50oBUHEmvpQ+1lW4y57PTFmhCaXp0ML5d60M1M7uH2+nqUivzIebhndOJK28anvf" crossorigin="anonymous">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
	<link rel="stylesheet" href="styles/custom.css" type="text/css">
	
    <title>Home</title>
  </head>
  <body>
    <nav class="navbar navbar-expand-md fixed-top navbar-dark  bg-dark"  style= "background-image:  url(images/navbar.png); background-repeat: no-repeat;  background-size: cover;
		  background-position: center;">
	  <a class="navbar-brand" href="${pageContext.request.contextPath}/logOption">
	  <i class="fas fa-graduation-cap fa-2x"style = "color:white; position: absolute; left: 60px;"></i><br>Academy Portal</a>
	  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarCollapse" aria-controls="navbarCollapse" aria-expanded="false" aria-label="Toggle navigation">
		<span class="navbar-toggler-icon"></span>
	  </button>
	  
	</nav>


<div class="container">
	<div style="margin-top: 40px;" class="jumbotron color-b">
		<h1>Welcome to Academy- Kolkata</h1>
	</div>
	
	<div class="row">
		<div class="col-md-4">
			<div class="card" style="width: 18rem;">
			<img src="http://chittagongit.com/images/graduation-icon-png/graduation-icon-png-6.jpg" class="card-img-top" alt="...">	
					  <div class="card-body">
				<h5 class="card-title">Academy</h5>
				<p class="card-text">Kolkata</p>
			  </div>
			  <ul class="list-group list-group-flush">
				<li class="list-group-item">Address: Unitech Infospace, DH Block(Newtown), Action Area I, Newtown, Kolkata-700156</li>
				<li class="list-group-item">Email: xyz@academy.com</li>
				<li class="list-group-item">Phone:1234567890</li>
			  </ul>
			 
			</div>
		</div>
		<div class=" col-md-8 ">
		<!--Content area-->
	<div class="row">
				<div class="col-xs-12 col-sm-10 col-md-10 col-sm-offset-2 col-md-offset-3">
					<%-- <form role="form" action="Home.jsp" > --%>
					<form:form role="form" commandName="login" action="validate" method="post">
					<div class="card-body" style="background-color:#f5f5f5;">
					
						<h2 id="banner">Sign In</h2>
						<hr/>
						
						
						<div class="form-group">
					<div class="row">
					<div class="col-sm-2 col-md-2" style="text-align: center; font-size: 13px;">
					
					
					<i class="far fa-address-card  fa-3x"></i><br/>
					</div>
					<div class="col-sm-10 col-md-10" style="margin-left: -6%;">
					
					
					<form:input type="text" path="username" class="form-control input-lg" placeholder="Associate ID" tabindex="1" name="username" required="required"/>
					</div>
					</div>
					<br>
					<div class="row">
					<div class="col-sm-2 col-md-2" style="text-align: center;">
					
					<i class="fas fa-key fa-2x"></i><br/>
					
					</div>
					<div class="col-sm-10 col-md-10" style="margin-left: -6%;">
					<form:input type="password" path="password" class="form-control input-lg" placeholder="Password" tabindex="1" name="password" required="required"/><br/>
					</div>
					<div style = "font-size: 5px; font-family: Arial;">
					<button type="submit" value="Login" class="btn btn-primary btn-block btn-lg color-b" tabindex="7" style = "margin-left: 170px;">
					<i class="fas fa-unlock-alt fa-lg"></i>&nbsp;&nbsp;Submit</button>
					
					</div>
					
					<style>
					.btn-block{
					width:100%;
					}
					</style>
						</div>	
							</div>
						</div>
						<hr/>
						</form:form>
						</div>
						</div>
						
				</div>
			<!--Content area-->
		</div>
	</div>
	
	
</div>


<!-- Footer -->
<footer class="page-footer font-small blue">

  <!-- Copyright -->
  <div class="footer-copyright text-center py-3">© 2019 Copyright:@Academy
    
  </div>
  <!-- Copyright -->

</footer>
<!-- Footer -->

    <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
  </body>
</html>
