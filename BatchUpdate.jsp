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
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.2/jquery.min.js"></script>
		<link href="https://code.jquery.com/ui/1.11.4/themes/smoothness/jquery-ui.css" rel="stylesheet" type="text/css">
	<script src="http://code.jquery.com/ui/1.11.0/jquery-ui.js"></script>

	<script type="text/javascript" src='<spring:url value="/js/jquery-ui.min.js"/>'></script>
      
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
	<link rel="stylesheet" href="styles/custom.css" type="text/css">
	    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.1/css/all.css" integrity="sha384-50oBUHEmvpQ+1lW4y57PTFmhCaXp0ML5d60M1M7uH2+nqUivzIebhndOJK28anvf" crossorigin="anonymous">
      
      <script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.2/jquery.min.js"></script>
<script src="http://code.jquery.com/ui/1.11.0/jquery-ui.js"></script>
<link
	href="https://code.jquery.com/ui/1.11.4/themes/smoothness/jquery-ui.css"
	rel="stylesheet" type="text/css">
      
      <script>
	function fetchdate(){
		var date1;

		
		$.ajax({
					url : "fetchDate",
					async : false,
					data : {
						date : $("#Bid").val()
					},
					success : function(data) {
						alert(data);
						date1=data;
						console.log(data);
						return date1;
						var m = data;
						if (m == "Batch Id is Available") {
							/*alert("In avail");*/
							//alert("In avail");
						}
						if (m == "Batch Id is taken") {
							alert("Batch Id already associated with another account");
							$("#Bid").val("");
						}
					},
					error : function(){
						alert("Error");
					}

				});
        
        alert("--"+date1);
		return date1;
		
	}
	</script>
	
    <title>Batch Update</title>
  </head>
  <body>
  <style>
  
  
  </style>
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
	<div style="margin-top: 40px;" class="jumbotron color-b">
		<h1>Batch Update</h1>
	</div>
	
	<div class="row">
		<div class="col-md-4">
			<form:form commandName="adminDetails">
			<div class="card" style="width: 18rem;">
			<img src="http://chittagongit.com/images/graduation-icon-png/graduation-icon-png-6.jpg" class="card-img-top" alt="...">			  <div class="card-body">
				<h5 class="card-title">${adminDetails.firstname } ${adminDetails.lastname }</h5>
				<p class="card-text">Senior Admin- Academy</p>
			  </div>
			  <ul class="list-group list-group-flush">
				<li class="list-group-item">Associate ID:${adminDetails.adminid }</li>
				<li class="list-group-item">Email:${adminDetails.emailid }</li>
				<li class="list-group-item">Phone:${adminDetails.contact }</li>
			  </ul>
			 
			</div>
			</form:form>
		</div>
		<div class=" col-md-8 ">
		<!--Content area-->
		
		<div class="row">
				<div class="col-xs-12 col-sm-10 col-md-10 col-sm-offset-2 col-md-offset-3">
				<div class="card-body" style="background-color:#f5f5f5;">
				
					<form:form role="form" action="updateBatch" commandName="batchUpdate" method="POST">
						<h2>Update Batch Details</h2>
						<hr/>
						
						
						<div class="form-group">
						<div class="row">
					<div class="col-sm-2 col-md-2" style="text-align: center; font-size: 13px;">
					
					
					<i class="fas fa-id-badge fa-3x"></i><br/>
					</div>
					<div class="col-sm-10 col-md-10" style="margin-left: -6%;">	
						<form:select path="batchid" name="bid" id="Bid" class="form-control input-lg" placeholder="Batch ID" tabindex="1" onchange="fetchdate()" required = "required">
						<option value="" disabled selected style="display: none;">Select Batch ID</option>
        					<c:forEach items="${batch}" var="b">
        						<form:option value="${b.batchid}">${b.batchid}</form:option>
        					</c:forEach>
        				</form:select><br>
        				</div>
        				</div>
						<div class="row">
					<div class="col-sm-2 col-md-2" style="text-align: center; font-size: 13px;">
		
					<i class="far fa-calendar-alt fa-3x" ></i>
					
					</div>
					<div class="col-sm-10 col-md-10" style="margin-left: -6%;">	
						New Close Date:<form:input type="date" name="cday" path="closedate" class="form-control input-lg" placeholder="Close Date" tabindex="1"/>
						</div>
						</div>
						</div>
							<input type="submit" value="Update" class="btn btn-primary btn-block btn-lg color-b" tabindex="7">
						</form:form>
						</div>
						<hr/>
						
                    <script type="text/javascript">
						
						
							 $(document).ready(function() {
								
								
								
								var minDate1 = fetchdate();
								
								$("#closeDate").datepicker("destroy");
								
								$('#closeDate').datepicker({
								dateFormat : "dd-MM-yy",
								changeMonth : true,
								changeYear : true,
								minDate:  minDate1+parseInt(1)
								});
							})
                    </script>
					
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
