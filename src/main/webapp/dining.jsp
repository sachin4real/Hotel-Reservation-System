<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
        <%@page import="java.util.ArrayList" %>
    	<%@page import="com.Dining.Item" %>
   
    <% 	
    	
    	String userName,userId;

    	if ((String)session.getAttribute("userName") != null){
    		userName = (String)session.getAttribute("userName");
    		userId = (String)session.getAttribute("userId");
    		
    	}else{
    		userName = "not Loggedin";
    		userId = "NULL";
    	}
    		

    %>
    
    

<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="ISO-8859-1">
  	<meta charset="UTF-8">
  	<meta name="viewport" content="width=device-width, initial-scale=1.0">
  	<meta http-equiv="X-UA-Compatible" content="ie=edge">
  	
  	<title>Dining</title>
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
  	
  	<script type="text/javascript">
  	
  		
  		
  		
  			
  			
  			function validate()
  			{ 
  				
  				var name = document.getElementById("name");
  				var email = document.getElementById("email");
  				var phoneNum = document.getElementById("phoneNum");
  				var numOfPep = document.getElementById("numOfPep");
  				var date = document.getElementById("date");
  				var time = document.getElementById("time");
  				var meal = document.getElementById("meal");			
  				
  				
  				
  				
  				if(name.value.trim() == "")
  				{  
  					name.style.setProperty("border-style","solid");
  					document.getElementById("error-name").innerHTML = "Name can not be empty";
  							
  	  				return false;
  	  			}	
  				
  				else if(email.value.trim() == "")
  				{  
  					email.style.setProperty("border-style","solid");
  					document.getElementById("error-email").innerHTML = "Email can not be empty"
  							
  	  				return false;
  	  			}	
  				
  				else if(phoneNum.value.trim() == "")
  				{  
  					phoneNum.style.setProperty("border-style","solid");
  					document.getElementById("error-phoneNum").innerHTML = "Phone number can not be empty"
  							
  	  				return false;
  	  			}
  				
  				else if(date.value.trim() == "")
  				{  
  					date.style.setProperty("border-style","solid");
  					document.getElementById("error-date").innerHTML = "Date can not be empty"
  							
  	  				return false;
  	  			}	
  				
  	  			
  				else if(time.value.trim() == "")
  				{  
  					time.style.setProperty("border-style","solid");
  					document.getElementById("error-time").innerHTML = "Time can not be empty"
  							
  	  				return false;
  	  			}	
  				
  	  			
  				else if(meal.value.trim() == "")
  				{  
  					meal.style.setProperty("border-style","solid");
  					document.getElementById("error-meal").innerHTML = "Meal can not be empty"
  							
  	  				return false;
  	  			}	
  				
  				else{  					
  					
  	  				name.style.setProperty("border-style","none");
  	  				email.style.setProperty("border-style","none");
  	  				phoneNum.style.setProperty("border-style","none");
  	  				date.style.setProperty("border-style","none");
  	  				time.style.setProperty("border-style","none");
  	  				meal.style.setProperty("border-style","none");
				 }
  				
  	  			return true;
  	  		
  			
  		}
  		
  	
  	</script>
  	
  	
</head>

<body>
	<h1>${errorList}</h1>
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
            	
            	<div class="media header-top-info">
              	<span class="header-top-info__icon"><i class="ti-plate-utensils"></i></span>
              		<div class="media-body">
              		<p>View reservations</p>
              		
              		<button type="button" class="btn btn-primary position-relative">
					  <a href="reservationsServlet?userId=${userId}"> <i class="ti-menu-alt"> View</i></a>
					  
					</button>
            
              		</div>
            	</div>
          	</div>
       		</div>
      	</div>
    </div>
    
    
    

    <jsp:include page="successs.jsp"></jsp:include>
    <jsp:include page="unsuccesssful.jsp"></jsp:include>
    <jsp:include page="navBar.jsp"></jsp:include>
    
    
    
    
	</header>
	<!-- ================ header section end ================= -->	

  	<main class="site-main">
    
	<!-- ================ start banner area ================= --> 
    <section class="home-banner-area" id="home">
      	<div class="container h-100">

        <div class="home-banner">
        
        <div class="text-center">
           	<h4>Welcome to the Royal Group</h4>
            <h1><em>Dining</em></h1>
            <a class="button home-banner-btn " href="#form"> <i class="ti-angle-double-down"> Book Now </i> </a><br><br>
            <a class="button home-banner-btn " href="#menu"> <i class="ti-receipt"> View Menu </i> </a><br><br>
      	</div>
        </div>
      	</div>
    </section>
    <!-- ================ end banner area ================= -->
    
     <!-- ================ Explore section start ================= -->
    <section class="section-margin" id="menu">
      <div class="container">
        <div class="section-intro text-center pb-80px">
          <div class="section-intro__style">
            <img style="width:65px" src="img/home/food-ico.png" alt="">
          </div>
          <h2>Explore Our Dishes</h2>
        </div>
        
        <nav class="navbar navbar-dark bg-dark" >    
            
		  <form action="SearchServlet" class="form-inline">
		    <button class="btn btn-sm btn-outline-secondary text-warning" type="submit" name="item" value="rice"><i class="ti-search"> Rice</i></button>
		    <button class="btn btn-sm btn-outline-secondary text-warning" type="submit"name="item" value="kottu"><i class="ti-search"> Kottu</i></button>
		  </form>
		  
		  <div class="d-flex justify-content-end">
		    <button class="btn btn-sm btn-outline-secondary text-warning"> <a href="#form">  ORDER </a></button>		    
		  </div>
		  
		</nav>
		
<%ArrayList itemRes = (ArrayList)request.getAttribute("itemList");%>	

	
<%if (itemRes != null){ %>


			<table class="table table-dark">
			  <thead class="text-primary">
			    <tr>
			      <th scope="col">ITEM</th>
			      <th scope="col">REGULAR</th>
			      <th scope="col">LARGE</th>
			      
			    </tr>
			  </thead>
			  <tbody>
			  
			  <%for (int i=0; i<itemRes.size(); i++){ %>
			  <% Item itm = (Item)itemRes.get(i); %>
			  
			    <tr>			      
			      <td><%= itm.getItemName() %></td>
			      <td class="text-success">Rs.<%= itm.getRegular() %></td>
			      <td class="text-danger">Rs.<%= itm.getLarge() %></td>			      
			    </tr>
			    
			    <%}}%>
			    
			  </tbody>
			</table>
			
        
      </div>
    </section>
    <!-- ================ Explore section end ================= -->
  

    <!-- ================ start banner form ================= --> 
      
    <form onsubmit="return validate()" class="form-search form-search-position" action="DiningInsertServlet" method="get" id="form">
	
		    
	  
			  
	    <h1 style="align:center">Dining Reservation</h1>
	    
	    	<div class="mt-5 mb-3 fs-4">
			  <label for="exampleFormControlInput1 " class="form-label">Name</label>
			  <input type="text" name="name" class="form-control form-input" id="name" placeholder="Name">
			  <div class="error-div"><p id="error-name"></p></div>
			</div>
			
	      	<div class="mb-3 fs-4">
			  <label for="exampleFormControlInput1 " class="form-label">Email</label>
			  <input type="email" name="email" class="form-control form-input" id="email" placeholder="Email" >
			  <div class="error-div"><p id="error-email"></p></div>
			</div>
			
	      	<div class="mb-3 fs-4">
			  <label for="exampleFormControlInput1 " class="form-label">Phone Number</label>
			  <input type="text" name="phoneNum" class="form-control form-input" id="phoneNum" placeholder="Phone Number">
			  <div class="error-div"><p id="error-phoneNum"></p></div>
			</div>	
			
			<div class="mb-3 fs-4 w-25">
			  <label for="exampleFormControlInput1 " class="form-label">Number of people</label>
			  <select  class="form-control form-input" id="numOfPep" name="numOfPep" >
			  	
			  	<%for(int i = 1; i<=10; i++){%>
			  	<option value="<%=i%>"><%=i%></option>
			  	<%}%>
			  	
			  </select>	
			  <div class="error-div"><p id="error-numOfPep"></p></div>	  
			</div>		
			
			<div class="mb-3 fs-4 w-25">
			  <label for="exampleFormControlInput1 " class="form-label">Date</label>
			  <input type="date" name="date" class="form-control form-input" id="date" ">
			  <div class="error-div"><p id="error-date"></p></div>		  
			</div>	
			
			<div class="mb-3 fs-4 w-25">
			  <label for="exampleFormControlInput1 " class="form-label">Time</label>
			  <input type="time" name="time" class="form-control form-input" id="time" ">
			  <div class="error-div"><p id="error-time"></p></div>	  
			</div>	
			
			<div class="mb-3 fs-4 w-25">
			  <label for="exampleFormControlInput1 " class="form-label">Meal Plan</label>
			  <select class="form-select form-input" aria-label="Default select example" name="meal" id="meal">
			  
				  <option selected>Open Meal Plan</option>
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
			<input type="hidden" name="uid" value="${userId}" >
			<br><br>
		
	
			<center><button type="submit" class="btn btn-primary w-25 p-2 fs-4">Submit</button></center>
			
		
		
      
    </form>
    <!-- ================ end banner form ================= --> 


   
 


  </main>

<jsp:include page="footer.jsp"></jsp:include>