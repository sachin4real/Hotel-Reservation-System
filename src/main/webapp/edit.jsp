<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@page import="java.util.ArrayList" %>
    <%@page import="com.Dining.Dining" %>
     <%ArrayList dinRes = (ArrayList)request.getAttribute("diningRec");%>

<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="ISO-8859-1">
  	<meta charset="UTF-8">
  	<meta name="viewport" content="width=device-width, initial-scale=1.0">
  	<meta http-equiv="X-UA-Compatible" content="ie=edge">
  	
  	<title>Update Reservation</title>
	<link rel="stylesheet" href="../src/main/webapp/css/bootstrap.min.css.css">
	
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
</head>

<body class="bg-secondary">

  

    <!-- ================ start banner form ================= --> 
    
    
    <form class="form-search form-search-position" action="DiningUpdateServlet" method="get" id="form">
    
    <%Dining din = (Dining)dinRes.get(0); %>
    
    <h1 style="align:center">Update Reservation</h1>
    
    	<div class="mt-5 mb-3 fs-4">
		  <label for="exampleFormControlInput1 " class="form-label">Name</label>
		  <input type="text" name="name" class="form-control" id="exampleFormControlInput1" value="<%=din.getName()%>">
		</div>
		
      	<div class="mb-3 fs-4">
		  <label for="exampleFormControlInput1 " class="form-label">Email</label>
		  <input type="email" name="email" class="form-control" id="exampleFormControlInput1" value="<%=din.getEmail()%>" >
		</div>
		
      	<div class="mb-3 fs-4">
		  <label for="exampleFormControlInput1 " class="form-label">Phone Number</label>
		  <input type="text" name="phoneNum" class="form-control" id="exampleFormControlInput1" value="<%=din.getPhone()%>">
		</div>	
		
		<div class="mb-3 fs-4 w-25">
		  <label for="exampleFormControlInput1 " class="form-label">Number of people</label>
		  <select class="form-control" id="exampleFormControlInput1" name="numOfPep" >
		  	<option value="<%=din.getNumOfpeople()%>"><%=din.getNumOfpeople()%></option>
		  	<%for(int i = 1; i<=10; i++){%>
		  	<option value="<%=i%>"><%=i%></option>
		  	<%}%>
		  </select>		  
		</div>		
		
		<div class="mb-3 fs-4 w-25">
		  <label for="exampleFormControlInput1 " class="form-label">Date</label>
		  <input type="date" name="date" class="form-control" id="exampleFormControlInput1" value="<%= din.getDate()%>">	  
		</div>	
		
		<div class="mb-3 fs-4 w-25">
		  <label for="exampleFormControlInput1 " class="form-label">Time</label>
		  <input type="time" name="time" class="form-control" id="exampleFormControlInput1" value="<%= din.getTime()%>">	  
		</div>	
		
		<div class="mb-3 fs-4 w-25">
			  <label for="exampleFormControlInput1 " class="form-label">Meal Plan</label>
			  <select class="form-select form-input" aria-label="Default select example" name="meal" id="meal">
			  		
				  <option value="<%= din.getMeal()%>" selected><%= din.getMeal()%></option>
				  <option></option>	
				  <option>Select Rice : </option>
				  			  
				  <option value="Chicken Fried Rice">Chicken Fried Rice</option>
				  <option value="Mixed Rice">Mixed Rice</option>
				  <option value="Nasi Goreng">Nasi Goreng</option>
				  <option value="Sea Food Rice">Sea Food Rice</option>
	  			
	  			  <option></option>	
				  <option>Select Kottu : </option>
				 			  
				  <option value="Vege kottu">Vege kottu</option>
				  <option value="Chicken kottu">Chicken kottu</option>
				  <option value="Roast Chicken kottu">Roast Chicken kottu</option>
				  <option value="Egg kottu">Egg kottu</option>
	  
			  </select>	 
			  <div class="error-div"><p id="error-meal"></p></div> 
		</div>	
		<input type="hidden" name="did" value="<%= din.getDid()%>" >
		<input type="hidden" name="uid" value="<%= din.getUid()%>" >
		<br><br>
		
	
		<input type="submit" class="btn btn-success w-25 p-2 fs-4" Value="Save">	

    </form>
    

    <div style="  position: absolute;top: 940px;right:800px;">
    		<a href="reservationsServlet?userId=<%=din.getUid()%>" style="color:white"><button class="btn btn-primary" style="width:100px">Back</button></a>
    </div>
 
    <!-- ================ end banner form ================= --> 



	<script src="js/bootstrap.min.js"></script>
  	<script src="vendors/jquery/jquery-3.2.1.min.js"></script>
  	<script src="vendors/bootstrap/bootstrap.bundle.min.js"></script>
  	<script src="vendors/magnefic-popup/jquery.magnific-popup.min.js"></script>
  	<script src="vendors/owl-carousel/owl.carousel.min.js"></script>
	<script src="vendors/easing.min.js"></script>
  	<script src="vendors/superfish.min.js"></script>
  	<script src="vendors/nice-select/jquery.nice-select.min.js"></script>
  	<script src="vendors/jquery.ajaxchimp.min.js"></script>
  	<script src="vendors/mail-script.js"></script>
  	<script src="js/main.js"></script>
</body>
</html>