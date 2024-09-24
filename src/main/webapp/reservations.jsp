<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@page import="java.util.ArrayList" %>
    <%@page import="com.Dining.Dining" %>
    
    <% 	
    String userName,userId;
    	if ((String)session.getAttribute("userName") == null){
    		userName = "not Loggedin";
    		userId = "NULL";
    	}else{
    		userName = (String)session.getAttribute("userName");
    		userId = (String)session.getAttribute("userId");
    	}
    	    	 
    %>
    
    <%ArrayList dinRes = (ArrayList)request.getAttribute("dinRes");%>
    

<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="ISO-8859-1">
  	<meta charset="UTF-8">
  	<meta name="viewport" content="width=device-width, initial-scale=1.0">
  	<meta http-equiv="X-UA-Compatible" content="ie=edge">
  	
  	<title>My Reservation List</title>
	<link rel="stylesheet" href="css/bootstrap.min.css.css">
	
	<link rel="icon" href="img/favicon.png" type="image/png">
  	<link rel="stylesheet" href="vendors/bootstrap/bootstrap.min.css">
  	<link rel="stylesheet" href="vendors/fontawesome/css/all.min.css">
	<link rel="stylesheet" href="vendors/themify-icons/themify-icons.css">
	<link rel="stylesheet" href="vendors/linericon/style.css">
  	<link rel="stylesheet" href="vendors/magnefic-popup/magnific-popup.css">
  	<link rel="stylesheet" href="vendors/owl-carousel/owl.theme.default.min.css">
  	<link rel="stylesheet" href="vendors/owl-carousel/owl.carousel.min.css">
  	<link rel="stylesheet" href="vendors/nice-select/nice-select.css">

  	<link rel="stylesheet" href="css/dining.css">
  	
  	<script>
  		
  		function cheker(){
  		
  			<!--Display a confirmation dialog box and store the result-->
  			var result = confirm('Are you sure you want to delete this ??');
  			
  			if(result == false){
  				event.preventDefault();<!-- If the user cancels the deletion action  Prevent the default action-->
  			}
  			
  		}
  	
  	</script>
  	
</head>

<body>
	
	<!-- ================ header section start ================= -->	
	<header class="header_area">
    <div class="header-top">
      	<div class="container">
        	<div class="d-flex align-items-center">
          		<div id="logo">
            	<a href="index.html"><img src="img/Logo.png" alt="" title="" width= "150" height="70" /></a>
          		</div>
          	<div class="ml-auto d-none d-md-block d-md-flex">
            	<div class="media header-top-info">
              	<span class="header-top-info__icon"><i class="fas fa-phone-volume"></i></span>
              		<div class="media-body">
                	<p>Contact Us</p>
                	<p>: <a href="Tel +94 77 999 4374">+94 77 999 4374</a></p>
              		</div>
            	</div>
            	<div class="media header-top-info">
              	<span class="header-top-info__icon"><i class="ti-email"></i></span>
              		<div class="media-body">
                	<p>Contact Us</p>
                	<p>: <a href="royal@gmail.com">royal@gmail.com</a></p>
              		</div>
            	</div>
            	
            	<div class="media header-top-info">
              	<span class="header-top-info__icon"><i class="ti-user"></i></span>
              		<div class="media-body">
                	<p>UserName  ${userId}</p>
                	<h4>: ${userName} </h4>
              		</div>
            	</div>
          	</div>
       		</div>
      	</div>
      	
    </div>


    <jsp:include page="navBar.jsp"></jsp:include>
    
	</header>
	<!-- ================ header section end ================= -->	

  	<main class="site-main">
    
	<!-- ================ start banner area ================= --> 
    <section class="home-banner-area" id="home">
      	<div class="container h-100">
        <div class="home-banner">
        <div class="text-center">
            <h4><em>Dining reservation list</em></h4>
            <a class="button home-banner-btn" href="dining.jsp#form"> <i class="ti-plus"></i> Add new</a><br><br>
            
   <jsp:include page="successs.jsp"></jsp:include>
   <jsp:include page="unsuccesssful.jsp"></jsp:include>
  <table class="table bg-light" style="margin-left:35px; width:95%; height: auto;">
  <thead class="thead-dark">
    <tr>
      
      <th scope="col">Name</th>
      <th scope="col">Email</th>
      <th scope="col">Phone Number</th>
      <th scope="col">Num of People</th>
      <th scope="col">Date</th>
      <th scope="col">Time</th>
      <th scope="col">Meal Plan</th>
      <th scope="col">Action</th>
    </tr>
  </thead>
  <tbody>
  
  <%for (int i=0; i< dinRes.size(); i++){ %>
  
  	<% Dining din = (Dining)dinRes.get(i); %>
  
    <tr>
   
      <td><%= din.getName()%></td>
      <td><%= din.getEmail()%></td>      
      <td><%= din.getPhone()%></td>
      <td><%= din.getNumOfpeople()%></td>
      <td><%= din.getDate()%></td>
      <td><%= din.getTime()%></td>
      <td><%= din.getMeal()%></td>
      
      <td>      
      	<button type="button" class="btn btn-secondary"> <a href="EditeServlet?did=<%=din.getDid()%>&userId=<%=din.getUid()%>"><i class="ti-reload"></i> Edit</a></button>
      	<button onclick="cheker()"  type="button" class="btn btn-danger"><a href="DiningDeleteServlet?did=<%=din.getDid()%>&userId=<%=din.getUid()%>" ><i class="ti-trash"></i> Delete</a></button>
	  </td>
	</tr>
	
	<%} %>
	
  </tbody>
</table>

      	</div>
        </div>            	
      	</div>
 
    </section>

    <!-- ================ end banner area ================= -->
  



<jsp:include page="footer.jsp"></jsp:include>