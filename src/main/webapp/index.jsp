<%@ page language="java" contentType="text/html; charset=UTF-8" %>
<% 	String userName,userId;
    	if ((String)session.getAttribute("userName") == null){
    		userName = "not Loggedin";
    		userId = "NULL";
    	}else{
    		userName = (String)session.getAttribute("userName");
    		userId = (String)session.getAttribute("userId");
    	}
%>
<!DOCTYPE html>
<html lang="en">
<head>
	<title>Royal Hotel</title>
	<meta charset="ISO-8859-1">
  	<meta charset="UTF-8">
  	<meta name="viewport" content="width=device-width, initial-scale=1.0">
  	<meta http-equiv="X-UA-Compatible" content="ie=edge">
  	<link rel="icon" href="img/favicon.png" type="image/png">
  	<link rel="stylesheet" href="vendors/bootstrap/bootstrap.min.css">
  	<link rel="stylesheet" href="vendors/fontawesome/css/all.min.css">
	<link rel="stylesheet" href="vendors/themify-icons/themify-icons.css">
	<link rel="stylesheet" href="vendors/linericon/style.css">
  	<link rel="stylesheet" href="vendors/magnefic-popup/magnific-popup.css">
  	<link rel="stylesheet" href="vendors/owl-carousel/owl.theme.default.min.css">
  	<link rel="stylesheet" href="vendors/owl-carousel/owl.carousel.min.css">
  	<link rel="stylesheet" href="vendors/nice-select/nice-select.css">
  	<link rel="stylesheet" href="css/style.css">
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
              		<div class="media-body">
                	<p>Contact Us</p>
                	<p>: <a href="Tel +94 77 999 4374">+94 77 000000</a></p>
              		</div>
            	</div>
            	<div class="media header-top-info">
              		<div class="media-body">
                	<p>Contact Us</p>
                	<p>: <a href="royal@gmail.com">theroyal@gmail.com</a></p>
              		</div>
            	</div>
            	
            	<div class="media header-top-info">
              	<span class="header-top-info__icon"><i class="ti-user"></i></span>
              		<div class="media-body">
                	<p>User ID :</p>
                	<p>User Name : </p>
              		</div>
            	</div>
            	
          	</div>
       		</div>
      	</div>
    </div>


    <jsp:include page="navBar.jsp"></jsp:include>
    
	</header>
	<!-- ================ header section end ================= -->	

	<!-- ================ start banner area ================= --> 
    <section class="home-banner-area" id="home">
      	<div class="container h-100">
        	<div class="home-banner">
        		<div class="text-center">
           			<h4>Welcome to the Royal Group</h4>
            		<h1>Moments <em>of</em> pleasure</h1>
            		<a class="button home-banner-btn" href="#">Book Now</a><br><br>
					<a class="button home-banner-btn" href="customerinsert.jsp">Sign Up</a>
					<a class="button home-banner-btn" href="login.jsp">Login</a>
      			</div>
        	</div>
      	</div>
    </section>
    <!-- ================ end banner area ================= -->
  

    <!-- ================ start banner form ================= --> 
    <form class="form-search form-search-position">
      	
      	<div class="container">
        	<div class="row">
        		<div class="col-lg-6 gutters-19">
        			<div class="form-group">
        				<input class="form-control" type="text" placeholder="Enter your keywords.." required>
        			</div>
        		</div>
        
	        	<div class="col-lg-6 gutters-19">
	        		<div class="row">
	        			<div class="col-sm">
	        				<div class="form-group">
	        					<div class="form-select-custom">
	        						<select name="" id="">
	                					<option value="8 AM">8 AM</option>
	               		 				<option value="2 PM">2 PM</option>
	         						</select>
	      						</div>
	      					</div>
	       				</div>
				        
				        <div class="col-sm gutters-19">
				       		<div class="form-group">
				       			<div class="form-select-custom">
				          			<select name="" id="">
				               			<option value="r1">1</option>
				               			<option value="r2">2</option>
										<option value="r3">3</option>
										<option value="r4">4</option>
				           			</select>
				      			</div>
				      		</div>
				       	</div>
	        		</div>
	        	</div>
	        </div>
	        
        <div class="row">
        	<div class="col-sm gutters-19">
        		<div class="form-group">
        			<div class="form-select-custom">
           				<select name="" id="">
                			<option value="12 PM">12 PM</option>
                			<option value="6 PM">6 PM</option>
          				</select>
       				</div>
        		</div>
        	</div>
        
        	<div class="col-sm gutters-19">
        		<div class="form-group">
        			<div class="form-select-custom">
        				<select name="" id="">
			                <option value="a1">1</option>
			               	<option value="a2">2</option>
							<option value="a3">3</option>
							<option value="a4">4</option>
							<option value="a5">5</option>
			         	</select>
			      	</div>
       			</div>
       		</div>
        
        <div class="col-sm gutters-19">
        	<div class="form-group">
        		<div class="form-select-custom">
         			<select name="" id="">
              			<option value="c1">1</option>
                		<option value="c2">2</option>
						<option value="c3">3</option>
           			</select>
      			</div>
        	</div>
        </div>
        
        <div class="col-lg-4 gutters-19">
        	<div class="form-group">
         		<button class="button button-form" type="submit">Check Availability</button>
        	</div>
        </div>
  	</div>
      </div>
    </form>
    <!-- ================ end banner form ================= --> 

    <!-- ================ welcome section start ================= --> 
    <section class="welcome">
      <div class="container">
        <div class="row align-items-center">
          <div class="col-lg-5 mb-4 mb-lg-0">
            <div class="row no-gutters welcome-images">
              <div class="col-sm-7">
                <div class="card">
                  <img class="" src="img/home/welcomeBanner1.jpg" alt="Card image cap">
                </div>
              </div>
              <div class="col-sm-5">
                <div class="card">
                  <img class="" src="img/home/welcomeBanner2.jpg" alt="Card image cap">
                </div>
              </div>
              <div class="col-lg-12">
                <div class="card">
                  <img class="" src="img/home/welcomeBanner3.jpg" alt="Card image cap">
                </div>
              </div>
            </div>
          </div>
          <div class="col-lg-7">
            <div class="welcome-content">
              <h2 class="mb-4"><span class="d-block">Welcome</span> to the Royal Group</h2>
              <p>On behalf of the entire team here at Royal Hotel, I would like to extend a warm welcome to you. We are thrilled to have you with us and look forward to providing you with exceptional service and an unforgettable stay.</p>
			  <p>Please do not hesitate to reach out to us if you need any assistance during your time here. Our staff is available 24/7 to ensure your comfort and satisfaction.</p>
              <p>Thank you for choosing to stay with us. We hope you enjoy your stay and look forward to creating many wonderful memories with you.</p>
              <a class="button button--active home-banner-btn mt-4" href="#">Learn More</a>
            </div>
          </div>
        </div>
      </div>
    </section>
    <!-- ================ welcome section end ================= --> 


    <!-- ================ Explore section start ================= -->
    <section class="section-margin">
     	<div class="container">
        	<div class="section-intro text-center pb-80px">
          		<div class="section-intro__style">
            		<img src="img/home/bed-icon.png" alt="">
          		</div>
          		<h2>Explore Our Rooms</h2>
        	</div>

        	<div class="row">
          		<div class="col-md-6 col-lg-4 mb-4 mb-lg-0">
            		<div class="card card-explore">
              			<div class="card-explore__img">
                			<img class="card-img" src="img/home/explore1.png" alt="">
              			</div>
              			<div class="card-body">
                			<h3 class="card-explore__price">$100.00 <sub>/ Per Night</sub></h3>
                			<h4 class="card-explore__title"><a href="#">Superior Rooms</a></h4>
                			<p>Scenic ocean views combined with comfort; Superior Rooms at Anantaya Resort & Spa Chilaw provide the ideal settings for a relaxing holiday. </p>
                			<a class="card-explore__link" href="#">Book Now <i class="ti-arrow-right"></i></a>
              			</div>
            		</div>
          		</div>

          		<div class="col-md-6 col-lg-4 mb-4 mb-lg-0">
            		<div class="card card-explore">
              			<div class="card-explore__img">
                			<img class="card-img" src="img/home/explore2.png" alt="">
              			</div>
              			<div class="card-body">
                			<h3 class="card-explore__price">$150.00 <sub>/ Per Night</sub></h3>
                			<h4 class="card-explore__title"><a href="#">Deluxe Rooms</a></h4>
                			<p>Enjoy a getaway with stunning sea and lagoon vistas. Deluxe Rooms at Anantaya Chilaw are elegantly designed to make you feel like home.</p>
                			<a class="card-explore__link" href="#">Book Now <i class="ti-arrow-right"></i></a>
              			</div>
            		</div>
          		</div>

          		<div class="col-md-6 col-lg-4 mb-4 mb-lg-0">
            		<div class="card card-explore">
              			<div class="card-explore__img">
                			<img class="card-img" src="img/home/explore3.png" alt="">
              			</div>
              			<div class="card-body">
                			<h3 class="card-explore__price">$170.00 <sub>/ Per Night</sub></h3>
                			<h4 class="card-explore__title"><a href="#">Premium Rooms</a></h4>
                			<p>16 Premium Rooms offer lagoon views and a range of facilities that guarantee total comfort during your stay. Who can say no to glorious views and a relaxing holiday! </p>
                			<a class="card-explore__link" href="#">Book Now <i class="ti-arrow-right"></i></a>
              			</div>
            		</div>
          		</div>
        	</div>
     	</div>
    </section>
    <!-- ================ Explore section end ================= --> 

    <!-- ================ special section start ================= -->
    <section class="section-padding bg-porcelain">
      	<div class="container">
        	<div class="section-intro text-center pb-80px">
          		<div class="section-intro__style">
            		<img src="img/home/bed-icon.png" alt="">
          		</div>
          			<h2>Special Facilities</h2>
        		</div>
        		<div class="special-img mb-30px">
          			<img class="img-fluid" src="img/home/special.jpg" alt="">
        		</div>

        		<div class="row">
          			<div class="col-md-6 col-lg-4 mb-4 mb-lg-0">
            			<div class="card card-special">
              				<div class="media align-items-center mb-1">
                				<span class="card-special__icon"><i class="ti-home"></i></span>
                					<div class="media-body">
                  					<h4 class="card-special__title">Conference Room</h4>
                					</div>
              				</div>
              				<div class="card-body">
                				<p>Conference rooms are spaces where people gather to discuss ideas and collaborate on projects.</p>
              				</div>
            			</div>
          			</div>

          			<div class="col-md-6 col-lg-4 mb-4 mb-lg-0">
            			<div class="card card-special">
              				<div class="media align-items-center mb-1">
                				<span class="card-special__icon"><i class="ti-bell"></i></span>
                					<div class="media-body">
                  						<h4 class="card-special__title">Swimming Pool</h4>
                					</div>
              				</div>
              				<div class="card-body">
                				<p>A swimming pool is a refreshing place to cool off and enjoy aquatic activities.</p>
              				</div>
            			</div>
          			</div>

          			<div class="col-md-6 col-lg-4 mb-4 mb-lg-0">
            			<div class="card card-special">
             	 			<div class="media align-items-center mb-1">
                				<span class="card-special__icon"><i class="ti-car"></i></span>
                					<div class="media-body">
                  						<h4 class="card-special__title">Sports Culb</h4>
                					</div>
              				</div>
              				<div class="card-body">
                				<p>A sports club provides a community for individuals who share a passion for physical activity and healthy living./p>
              				</div>
            			</div>
          			</div>
        		</div>
      		</div>
    	</section>
    	<!-- ================ special section end ================= -->
<jsp:include page="footer.jsp"></jsp:include>