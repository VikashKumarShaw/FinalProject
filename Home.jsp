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
	
    <title>Home</title>
    
  </head>
  <body>
  
  	<%response.setHeader("Cache-Control","no-cache");
	  response.setHeader("Cache-Control","no-store");
	  response.setHeader("Pragma","no-cache");
	  response.setDateHeader ("Expires", 0); %>
	<c:if test="${sessionScope.adminDetails.adminid==null}">
		<%response.sendRedirect("/AcademyPortal2/"); %>
	</c:if> 
      <nav class="navbar navbar-expand-md fixed-top navbar-dark  bg-dark"  style= "background-image:  url(images/navbar.png); background-repeat: no-repeat;  background-size: cover;
		  background-position: center;">
	  <a class="navbar-brand" href="#">
	  <i class="fas fa-graduation-cap fa-2x"style = "color:white; position: absolute; left: 60px;"></i><br>Academy Portal</a>
	  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarCollapse" aria-controls="navbarCollapse" aria-expanded="false" aria-label="Toggle navigation">
		<span class="navbar-toggler-icon"></span>
	  </button>
	  <div class="collapse navbar-collapse" id="navbarCollapse">
		<ul class="navbar-nav mr-auto">
		  <li class="nav-item ">
		  	<spring:url value="/home" var="url4" htmlEscape="true"/>
			<a class="nav-link" href="${url4 }">&nbsp;&nbsp;&nbsp;<i class="fas fa-home"></i><br>Home <span class="sr-only">(current)</span></a>
		  </li>
		  <li class="nav-item dropdown">
            <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
          &nbsp;&nbsp;&nbsp;<i class="fas fa-users"></i><br>Faculty
            </a>
        <div class="dropdown-menu" aria-labelledby="navbarDropdown">
            <spring:url value="/addFaculty" var="url2" htmlEscape="true"/>
            <a class="dropdown-item" href="${url2}">Add Faculty</a>
          <div class="dropdown-divider"></div>
           <spring:url value="/viewfaculty" var="url9" htmlEscape="true"/>
            <a class="dropdown-item" href="${url9}">View Faculty</a>
        </div>
      </li>
		  <li class="nav-item dropdown">
		  
		  <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
          &nbsp;&nbsp;&nbsp;<i class="fas fa-book"></i><br>Module
            </a>
        <div class="dropdown-menu" aria-labelledby="navbarDropdown">
            <spring:url value="/module" var="url2" htmlEscape="true"/>
            <a class="dropdown-item" href="${url2}">Add Module</a>
          <div class="dropdown-divider"></div>
           <spring:url value="/viewmodule" var="url9" htmlEscape="true"/>
            <a class="dropdown-item" href="${url9}">View Module</a>
        </div>
        
		  </li>
		  <li class="nav-item dropdown">
            <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
          &nbsp;&nbsp;&nbsp;<i class="fas fa-chalkboard-teacher"></i><br>Batch
            </a>
        <div class="dropdown-menu" aria-labelledby="navbarDropdown">
        	<spring:url value="/BatchAllocation" var="url" htmlEscape="true"/>
            <a class="dropdown-item" href="${url }">Batch Allocation</a>
          <div class="dropdown-divider"></div>
          	<spring:url value="/BatchUpdation" var="url1" htmlEscape="true"/>
            <a class="dropdown-item" href="${url1 }">Batch Update</a>
        </div>
      </li>
		   <spring:url value="/report" var="url2" htmlEscape="true"/>
			<a class="nav-link" href="${url2 }">&nbsp;&nbsp;&nbsp;&nbsp;<i class="fas fa-poll"></i><br>Report</a>
      </li>
		</ul>
		<form:form class="form-inline mt-2 mt-md-0" action="logout"
			commandName="login" role="form" method="GET">
			<button class="btn btn-outline-info my-2 my-sm-0 color-b"
				type="submit">Logout&nbsp;<i class="fas fa-power-off"></i></button>
		</form:form>
	  </div>
	</nav>


<div class="container">
	<div  style="margin-top: 40px;" class="jumbotron color-b">
		<h1>Welcome Admin</h1>
	</div>
	
	<div class="row">
		<div class="col-md-4">
		<form:form commandName="adminDetails">
			<div class="card" style="width: 18rem;">
			  <img src="http://chittagongit.com/images/graduation-icon-png/graduation-icon-png-6.jpg" class="card-img-top" alt="...">
			  <div class="card-body">
				<h5 class="card-title">${sessionScope.adminDetails.firstname } ${sessionScope.adminDetails.lastname }</h5>
				<p class="card-text">Senior Admin- Academy</p>
			  </div>
			  <ul class="list-group list-group-flush">
				<li class="list-group-item">Associate ID:${sessionScope.adminDetails.adminid }</li>
				<li class="list-group-item">Email:${sessionScope.adminDetails.emailid }</li>
				<li class="list-group-item">Phone:${sessionScope.adminDetails.contact }</li>
			  </ul>
			 
			</div>
			</form:form>
		</div>
		<div class=" col-md-8 ">
		<!--Content area-->
		
		
			<div class="row">
				<div class="col-sm-6">
					 <div class="card">
					  <div class="card-body">
						<h5 class="card-title">Faculty</h5>
						<p class="card-text">Register Faculty to the academy</p>
						<spring:url value="/addFaculty" var="url2" htmlEscape="true"/>
						<a href="${url2 }" class="btn btn-primary color-b">Register&nbsp;<i class="fas fa-user-plus"></i></a>
						<spring:url value="/viewfaculty" var="view" htmlEscape="true" />
						<a href="${view}" class="btn btn-primary color-b">View Faculty&nbsp;<i class="fas fa-eye"></i></a> 
					  </div>
					</div>
				</div>
				<div class="col-sm-6">
					<div class="card">
					  <div class="card-body">
						<h5 class="card-title">Module</h5>
						<p class="card-text">Add Modules for the academy</p>
						<%-- <spring:url value="/module" var="url3" htmlEscape="true"/>
						<a href="${url3 }" class="btn btn-primary color-b">Add&nbsp;<i class="fas fa-book"></i><i class="fas fa-plus fa-xs"></i></a> --%>
						<button onclick="myFunction()" class="btn btn-primary color-b">Add</button>
						<script>
							function myFunction() {
								window.open("/AcademyPortal2/module","_blank","toolbar=yes,scrollbars=yes,resizable=yes,top=800,left=800,width=800,height=800");
									}
						</script> 
						<spring:url value="/viewmodule" var="viewm" htmlEscape="true" />
						<a href="${viewm}" class="btn btn-primary color-b">View Module&nbsp;<i class="far fa-eye"></i></a>
					  </div>
					</div>
				</div>
			</div>
			<div class="row"><p></p></div><div class="row"><p></p></div><div class="row"><p></p></div>
			<div class="row">
				<div class="col-sm-6">
					<div class="card">
					  <div class="card-body">
						<h5 class="card-title">Batch</h5>
						<p class="card-text">Allocate and update Batch details</p>
						<spring:url value="/BatchAllocation" var="url" htmlEscape="true"/>
						<a href="${url}" class="btn btn-primary btn-sm color-b">Allocate&nbsp;<i class="fas fa-plus-circle"></i></a>
						<spring:url value="/BatchUpdation" var="url1" htmlEscape="true"/>
						<a href="${url1}" class="btn btn-primary btn-sm color-b">Update&nbsp;<i class="fas fa-tasks"></i></a>
					  </div>
					</div>
				</div>
				<div class="col-sm-6">
					<div class="card">
					  <div class="card-body">
						<h5 class="card-title">Report</h5>
						<p class="card-text">Generate report for the batches</p>
						<spring:url value="/report" var="url5" htmlEscape="true"/>
						<a href="${url5}" class="btn btn-primary btn-sm color-b">Generate&nbsp;<i class="fas fa-poll"></i></a>
					  </div>
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
