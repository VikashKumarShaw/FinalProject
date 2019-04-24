<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
        <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.1/css/all.css" integrity="sha384-50oBUHEmvpQ+1lW4y57PTFmhCaXp0ML5d60M1M7uH2+nqUivzIebhndOJK28anvf" crossorigin="anonymous">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
	<link rel="stylesheet" href="styles/custom.css" type="text/css">
	<script src="https://code.jquery.com/jquery-3.4.0.min.js"></script>
	<!--<script src="js/validator.js"></script>-->
    <title>Home</title>
      
      <link
	href="https://code.jquery.com/ui/1.11.4/themes/smoothness/jquery-ui.css"
	rel="stylesheet" type="text/css" />
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script src="https://code.jquery.com/ui/1.12.0/jquery-ui.js"
	integrity="sha256-0YPKAwZP7Mp3ALMRVB2i8GXeEndvCq3eSl/WsAl1Ryk="
	crossorigin="anonymous"></script>
<!-- <script
	src="http://ajax.aspnetcdn.com/ajax/jquery.validate/1.11.1/jquery.validate.min.js"></script> -->
<style type="text/css">
.errors {
	color: red;
}

.has-error {
	color: red;
	border: 1px solid red;
}

.no-error {
	color: green;
	border: 1px solid green;
}

.row-style {
	background-color: #e9ecef;
	color: black;
	padding: 50px 10px 40px 10px;
	border-radius: 5px;
}
</style>

      <script>
      function avail1(){
		

		$.ajax({
					url : "checkAdminid",
					data : {
						admin : $("#AsID6").val()
					},
					success : function(data) {
						var m = data;
						if (m == "Admin Id is Available") {
							/*alert("In avail");*/
							//alert("In avail");
						}
						if (m == "Admin Id is taken") {
							alert("Admin id already associated with another account");
							$("#AsID6").val("");
						}
					},
					error : function(){
						alert("Error");
					}

				});
	}
      </script>
      
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
				<li class="list-group-item">email: xyz@academy.com</li>
				<li class="list-group-item">Phone:1234567890</li>
			  </ul>
			 
			</div>
		</div>
		<div class=" col-md-8 ">
		<!--Content area-->
		<div class="row">
				<div class="col-xs-12 col-sm-10 col-md-10 col-sm-offset-2 col-md-offset-3">
				<div class="card">
				<div class="card-body" style="background-color:#f5f5f5;">
					<form:form role="form" action="addadmin" commandName="addadmin" method="POST" onsubmit="showAlert()" id="signup-form">
						<h2>Sign Up</h2>
						<hr/>
						
						
						<div class="form-group">
						<div class="row">
					<div class="col-sm-2 col-md-2" style="text-align: center; font-size: 13px;">
					
					
					<i class="fas fa-user-circle fa-3x"></i><br/>
					</div>
					<div class="col-sm-10 col-md-10" style="margin-left: -6%;">

		<form:input type="text" path="firstname" id="AsID" class="form-control input-lg" placeholder="First Name" tabindex="1" pattern="[A-Za-z].{1,}" required="required"/><br/>
		</div>
		</div>
		<div class = "row">
		<div class="col-sm-2 col-md-2" style="text-align: center; font-size: 13px;">
					
					
					<i class="fas fa-user-circle fa-3x"></i><br/>
					</div>
					<div class="col-sm-10 col-md-10" style="margin-left: -6%;">
		<form:input type="text" path="lastname" id="AsID" class="form-control input-lg" placeholder="Last Name" tabindex="1" pattern="[A-Za-z].{1,}" required="required"/><br/>
		</div>
		</div>
		<br>
		<%-- <form:input type="text" path="age" id="AsID" class="form-control input-lg" placeholder="Age" tabindex="1" pattern="(?=.*\d).{2}" required="required"/><br/> --%>
		<div class = "row">
		<div class="col-sm-2 col-md-2" style="text-align: center; font-size: 13px;">
					
					
					<i class="fab fa-odnoklassniki fa-3x"></i><br/>
					</div>
					<div class="col-sm-10 col-md-10" style="margin-left: -6%;">
		<form:input type="number" path="age" id="AsID" class="form-control input-lg" placeholder="Age" tabindex="1" pattern="(?=.*\d).{2}" required="required" value="Age"/><br/>
		</div>
		</div>
		
		<font size="4">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<i class="fas fa-venus-mars fa-2x"></i>&nbsp;Gender</font>&nbsp;&nbsp;
							<form:input type="radio" path="gender" value="male"/>Male&nbsp;<i class="fas fa-male fa-2x"></i>  &nbsp;&nbsp;
							<form:input type="radio" path="gender" value="female"/> Female&nbsp;<i class="fas fa-female fa-2x"></i> &nbsp;&nbsp;
							<form:input type="radio" path="gender" value="other"/> Others&nbsp;<i class="fas fa-neuter fa-2x"></i></br></br>
		<div class = "row">
		<div class="col-sm-2 col-md-2" style="text-align: center; font-size: 13px;">
		<i class="fas fa-mobile-alt fa-3x"></i><br/>	
		</div>
					<div class="col-sm-10 col-md-10" style="margin-left: -6%;">			
		<form:input type="number" path="contact" id="AsID" class="form-control input-lg" placeholder="Contact Number" tabindex="1" pattern="(?=.*\d).{10}" required="required" value="contact"/><br/>
		</div>
		</div>
		<div class = "row">
		<div class="col-sm-2 col-md-2" style="text-align: center; font-size: 13px;">
		<i class="far fa-envelope fa-3x"></i><br/>	
		</div>
					<div class="col-sm-10 col-md-10" style="margin-left: -6%;">	
		<form:input type="email" path="emailid" id="AsID" class="form-control input-lg" placeholder="email id" tabindex="1" onkeyup="avail()" required="required"/><br/>
		</div>
		</div>
		<div class = "row">
		<div class="col-sm-2 col-md-2" style="text-align: center; font-size: 13px;">
		<i class="fas fa-key fa-3x"></i><br/>	
		</div>
					<div class="col-sm-10 col-md-10" style="margin-left: -6%;">	
		<form:input type="password" path="password" id="AsID" class="form-control input-lg" placeholder="Password" tabindex="1" required="required"/><br/>
		</div>
		</div>
		<div class = "row">
		<div class="col-sm-2 col-md-2" style="text-align: center; font-size: 13px;">
		<i class="far fa-address-card fa-3x"></i><br/>	
		</div>
					<div class="col-sm-10 col-md-10" style="margin-left: -6%;">	
		<form:input type="text" path="adminid" id="AsID" class="form-control input-lg" placeholder="Associate ID" tabindex="1" onkeyup = "avail1()" required="required"/><br/>
		</div>
		</div>
						
							<button type="submit" value="Register" class="btn btn-primary btn-block btn-lg color-b" tabindex="7">
							<i class="far fa-arrow-alt-circle-right fa-lg"></i>&nbsp;&nbsp;Register</button>
						</div>
						<hr/>
						<script type="text/javascript">
							function showAlert(){
							alert("Admin added Successfully");
							}
						</script>
						</form:form>
						</div>
						</div>
						
				</div>
			<!--Content area-->
		</div>
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
