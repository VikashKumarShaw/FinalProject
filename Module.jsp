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
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
       <link rel="stylesheet" href="styles/custom.css" type="text/css">
           <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.1/css/all.css" integrity="sha384-50oBUHEmvpQ+1lW4y57PTFmhCaXp0ML5d60M1M7uH2+nqUivzIebhndOJK28anvf" crossorigin="anonymous">
       
       
    <title>Module</title>
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
	<div style="margin-top: 40px;" class="jumbotron color-b">
		<h1>Add Module</h1>
	</div>
       
       <div class="row">
              <div class="col-md-4">
                     <div class="card" style="width: 18rem;">
					<img src="http://chittagongit.com/images/graduation-icon-png/graduation-icon-png-6.jpg" class="card-img-top" alt="...">
					<div class="card-body">
						<h5 class="card-title">${sessionScope.adminDetails.firstname }
							${sessionScope.adminDetails.lastname }</h5>
						<p class="card-text">Senior Admin- Academy</p>
					</div>
					<ul class="list-group list-group-flush">
						<li class="list-group-item">Associate
							ID:${sessionScope.adminDetails.adminid }</li>
						<li class="list-group-item">Email:${sessionScope.adminDetails.emailid }</li>
						<li class="list-group-item">Phone:${sessionScope.adminDetails.contact }</li>
					</ul>

				</div>
              </div>
              <div class=" col-md-8 ">
              <!--Content area-->
              
              <div class="row">
                           <div class="col-xs-12 col-sm-10 col-md-10 col-sm-offset-2 col-md-offset-3">
                           <div class="card-body" style="background-color:#f5f5f5;">
                                  
                                  <form:form role="form" action="module1" commandName="module" method="POST">
                                         <h2>Module Details</h2>
                                         <hr/>
                                         
                                         
                                         <div class="form-group">
                                           <div class="row">
					<div class="col-sm-2 col-md-2" style="text-align: center; font-size: 13px;">
					
					
					<i class="fas fa-laptop fa-3x"></i><br/>
					</div>
					<div class="col-sm-10 col-md-10" style="margin-left: -6%;">	     
                                                <form:select path="skillid" name="qualification" id="qualification" class="form-control input-lg" placeholder="Skill" tabindex="3" required="required">
                                                <option value="" disabled selected style="display: none;">Skill</option>
                                                <c:forEach items="${skillMaster}" var="sk">
                                                      <form:option value="${sk.skillid}">${sk.skill}</form:option>
                                                </c:forEach>
                                         </form:select></br>
                                         
                                         </div>
                                         </div>
                                         <div class="row">
					<div class="col-sm-2 col-md-2" style="text-align: center; font-size: 13px;">
					
					
					<i class="fas fa-book-open fa-3x"></i><br/>
					</div>
					<div class="col-sm-10 col-md-10" style="margin-left: -6%;">
                                                <form:input type="text" path="modulename" id="Name" class="form-control input-lg" placeholder="Module Name" tabindex="1" required="required" /><br/>
                                                
                                              </div>   
                                             </div>  
                                         </div>
                                         
                                                <input type="submit" value="Register" class="btn btn-primary btn-block btn-lg color-b" tabindex="7">
                                         
                                         <hr/>
                                         <script type="text/javascript">
											function showAlert(){
												alert("Module added Successfully");
											}
										</script>
                                  </form:form>
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
