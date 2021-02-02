<!DOCTYPE html>
<html lang="en">
  <head>
    <title>VastuNamah-India's Best Property Dealer</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link href="https://fonts.googleapis.com/css?family=Rubik:300,400,500,700,900" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Playfair+Display:400,400i,700,700i,900,900i" rel="stylesheet">
    <link rel="stylesheet" href="css/open-iconic-bootstrap.min.css">
    <link rel="stylesheet" href="css/animate.css">  
    <link rel="stylesheet" href="css/owl.carousel.min.css">
    <link rel="stylesheet" href="css/owl.theme.default.min.css">
    <link rel="stylesheet" href="css/magnific-popup.css">
    <link rel="stylesheet" href="css/aos.css">
    <link rel="stylesheet" href="css/ionicons.min.css">
    <link rel="stylesheet" href="css/bootstrap-datepicker.css">
    <link rel="stylesheet" href="css/jquery.timepicker.css">
    <link rel="stylesheet" href="css/flaticon.css">
    <link rel="stylesheet" href="css/icomoon.css">
    <link rel="stylesheet" href="css/style.css">
  </head>
  <body>
<%
if(session.getAttribute("email")!=null)
{
%>
    
	  <nav class="navbar navbar-expand-lg navbar-dark ftco_navbar bg-dark ftco-navbar-light" id="ftco-navbar">
	    <div class="container">
	      <a class="navbar-brand" href="userdashboard.jsp">VastuNamah</a>
	      <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#ftco-nav" aria-controls="ftco-nav" aria-expanded="false" aria-label="Toggle navigation">
	        <span class="oi oi-menu"></span> Menu
	      </button>

	      <div class="collapse navbar-collapse" id="ftco-nav">
	        <ul class="navbar-nav ml-auto">
	        	<li class="nav-item"><a href="userdashboard.jsp" class="nav-link">Home</a></li>
	        	<li class="nav-item active"><a href="purchaseproperty.jsp" class="nav-link">Properties</a></li>
	        	<li class="nav-item"><a href="about.html" class="nav-link">About</a></li>
	          <li class="nav-item"><a href="contact.html" class="nav-link">Contact</a></li>
	        </ul>
	      </div>
	    </div>
	  </nav>
    <!-- END nav -->
    
    <section class="hero-wrap hero-wrap-2" style="background-image: url('images/bg_4.jpg');" data-stellar-background-ratio="0.5">
      <div class="overlay"></div>
      <div class="container">
        <div class="row no-gutters slider-text align-items-center justify-content-center">
          <div class="col-md-9 ftco-animate text-center">
            <h1 class="mb-2 bread">Properties</h1>
            <p class="breadcrumbs"><span class="mr-2">Purchase</i></a></span> <span>Properties <i class="ion-ios-arrow-forward"></i></span></p>
          </div>
        </div>
      </div>
    </section>
	<center>
    <div class="col-lg-9">
            <div class="row">
              <div class="col-md-6 col-lg-4 ftco-animate">
                <div class="project">
                  <div class="img"><br><br><br>
                    <img src="images/work-1.jpg" class="img-fluid" alt="Colorlib Template">
                    <div class="text">
                      <span>Sale</span>
                      <h3><a href="properties-1.html">Anjaneya<br>Vila</a></h3>
                    </div>
                  </div>
                  <div class="desc pt-3">
                    <h4 class="price">Rs. 7.08 Cr</h4>
                    <p class="h-info"><span class="location">Pune</span> <span class="details">&mdash; 1,139-2,721 sq.ft</span></p>
                    <button class="btn btn-dark btn-block"><a href="book.jsp">Book</a></button>
                  </div>
                </div>
              </div>
              <div class="col-md-6 col-lg-4 ftco-animate">
                <div class="project">
                  <div class="img"><br><br><br>
                    <img src="images/work-2.jpg" class="img-fluid" alt="Colorlib Template">
                    <div class="text">
                      <span>Rent</span>
                      <h3><a href="properties-2.html">Shivaji Office<br>Complex</a></h3>
                    </div>
                  </div>
                  <div class="desc pt-3">
                    <h4 class="price">Rs. 9.70 Lac</h4>
                    <p class="h-info"><span class="location">Nagpur</span> <span class="details">&mdash; 8,54-9,00 Sq.ft</span></p>
                    <button class="btn btn-dark btn-block"><a href="book.jsp">Book</a></button>
                  </div>
                </div>
              </div>
              <div class="col-md-6 col-lg-4 ftco-animate">
                <div class="project">
                  <div class="img"><br><br><br>
                    <img src="images/work-3.jpg" class="img-fluid" alt="Colorlib Template">
                    <div class="text">
                      <span>Sale</span>
                      <h3><a href="properties-3.html">Galaxy<br>Vila</a></h3>
                    </div>
                  </div>
                  <div class="desc pt-3">
                    <h4 class="price">Rs. 2.55 Cr</h4>
                    <p class="h-info"><span class="location">Mumbai</span> <span class="details">&mdash; 1,450-3,100 Sq.ft</span></p>
                    <button class="btn btn-dark btn-block"><a href="book.jsp">Book</a></button>
                  </div>
                </div>
              </div>
              <div class="col-md-6 col-lg-4 ftco-animate">
                <div class="project">
                  <div class="img">
                    <img src="images/work-4.jpg" class="img-fluid" alt="Colorlib Template">
                    <div class="text">
                      <span>Sale</span>
                      <h3><a href="properties-4.html">Mafatlal<br>House</a></h3>
                    </div>
                  </div>
                  <div class="desc pt-3">
                    <h4 class="price">Rs. 9.02 Cr</h4>
                    <p class="h-info"><span class="location">Mumbai</span> <span class="details">&mdash; 1,690-2,651 Sq.ft</span></p>
                    <button class="btn btn-dark btn-block"><a href="book.jsp">Book</a></button>
                  </div>
                </div>
              </div>
              <div class="col-md-6 col-lg-4 ftco-animate">
                <div class="project">
                  <div class="img">
                    <img src="images/work-5.jpg" class="img-fluid" alt="Colorlib Template">
                    <div class="text">
                      <span>Sale</span>
                      <h3><a href="properties-5.html">Jindal<br>Mansion</a></h3>
                    </div>
                  </div>
                  <div class="desc pt-3">
                    <h4 class="price">Rs. 10.90 Cr</h4>
                    <p class="h-info"><span class="location">Aurangabad</span> <span class="details">&mdash; 3,245-3,502 Sq.ft</span></p>
                    <button class="btn btn-dark btn-block"><a href="book.jsp">Book</a></button>
                  </div>
                </div>
              </div>
              <div class="col-md-6 col-lg-4 ftco-animate">
                <div class="project">
                  <div class="img">
                    <img src="images/work-6.jpg" class="img-fluid" alt="Colorlib Template">
                    <div class="text">
                      <span>Rent</span>
                      <h3><a href="properties-6.html">Vithai<br>Apartment</a></h3>
                    </div>
                  </div>
                  <div class="desc pt-3">
                    <h4 class="price">Rs. 25.09 Lac</h4>
                    <p class="h-info"><span class="location">Kolhapur</span> <span class="details">&mdash; 1,500-2,000 Sq.ft</span></p>
                    <button class="btn btn-dark btn-block"><a href="book.jsp">Book</a></button>
                  </div>
                </div>
              </div>
              <div class="col-md-6 col-lg-4 ftco-animate">
                <div class="project">
                  <div class="img">
                    <img src="images/work-7.jpg" class="img-fluid" alt="Colorlib Template">
                    <div class="text">
                      <span>Rent</span>
                      <h3><a href="properties-7.html">Hiranandani<br>Apartment</a></h3>
                    </div>
                  </div>
                  <div class="desc pt-3">
                    <h4 class="price">Rs. 45.60 Lac</h4>
                    <p class="h-info"><span class="location">Ratnagiri</span> <span class="details">&mdash; 1,550-1,850 Sq.ft</span></p>
                    <button class="btn btn-dark btn-block"><a href="book.jsp">Book</a></button>
                  </div>
                </div>
              </div>
              <div class="col-md-6 col-lg-4 ftco-animate">
                <div class="project">
                  <div class="img">
                    <img src="images/work-8.jpg" class="img-fluid" alt="Colorlib Template">
                    <div class="text">
                      <span>Sale</span>
                      <h3><a href="properties-8.html">Anand<br>House</a></h3>
                    </div>
                  </div>
                  <div class="desc pt-3">
                    <h4 class="price">Rs. 85.43 Lac</h4>
                    <p class="h-info"><span class="location">Amravati</span> <span class="details">&mdash; 2,200-3,081 Sq.ft</span></p>
                    <button class="btn btn-dark btn-block"><a href="book.jsp">Book</a></button>
                  </div>
                </div>
              </div>
              <div class="col-md-6 col-lg-4 ftco-animate">
                <div class="project">
                  <div class="img">
                    <img src="images/work-9.jpg" class="img-fluid" alt="Colorlib Template">
                    <div class="text">
                      <span>Sale</span>
                      <h3><a href="properties-9.html">Mehrangir<br>Mansion</a></h3>
                    </div>
                  </div>
                  <div class="desc pt-3">
                    <h4 class="price">Rs. 92.89 Lac</h4>
                    <p class="h-info"><span class="location">Pune</span> <span class="details">&mdash; 1,890-2,356 Sq.ft</span></p>
                    <button class="btn btn-dark btn-block"><a href="book.jsp">Book</a></button>
                  </div>
                </div>
              </div>
            </div>		
            <div class="row no-gutters my-5">
		          <div class="col text-center">
		            <div class="block-27">
		              <ul>
		                <li><a href="#">&lt;</a></li>
		                <li class="active"><span>1</span></li>
		                <li><a href="#">2</a></li>
		                <li><a href="#">3</a></li>
		                <li><a href="#">4</a></li>
		                <li><a href="#">5</a></li>
		                <li><a href="#">&gt;</a></li>
		              </ul>
		            </div>
		          </div>
		        </div>
		    	</div>
	    	</div>
			</div>
		</section>
		

    <footer class="ftco-footer ftco-section">
      <div class="container">
        <div class="row mb-5">
          <div class="col-md">
            <div class="ftco-footer-widget mb-4">
              <h2 class="ftco-heading-2">Vastu Namah</h2>
              <p>Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts.</p>
              <ul class="ftco-footer-social list-unstyled float-md-left float-lft mt-3">
                <li class="ftco-animate"><a href="https://twitter.com/login?lang=en" target="_blank"><span class="icon-twitter"></span></a></li>
                <li class="ftco-animate"><a href="https://en-gb.facebook.com/login/" target="_blank"><span class="icon-facebook"></span></a></li>
                <li class="ftco-animate"><a href="https://www.instagram.com/accounts/login/" target="_blank"><span class="icon-instagram"></span></a></li>
              </ul>
            </div>
          </div>
          <div class="col-md">
            <div class="ftco-footer-widget mb-4 ml-md-4">
              <h2 class="ftco-heading-2">Company</h2>
              <ul class="list-unstyled">
                <li><a href="#"><span class="icon-long-arrow-right mr-2"></span>Home</a></li>
                <li><a href="#"><span class="icon-long-arrow-right mr-2"></span>About</a></li>
                <li><a href="#"><span class="icon-long-arrow-right mr-2"></span>Services</a></li>
                <li><a href="#"><span class="icon-long-arrow-right mr-2"></span>FAQ</a></li>
                <li><a href="#"><span class="icon-long-arrow-right mr-2"></span>Reviews</a></li>
                <li><a href="#"><span class="icon-long-arrow-right mr-2"></span>Stories</a></li>
              </ul>
            </div>
          </div>
          <div class="col-md">
             <div class="ftco-footer-widget mb-4">
              <h2 class="ftco-heading-2">Explore</h2>
              <ul class="list-unstyled">
                <li><a href="#"><span class="icon-long-arrow-right mr-2"></span>Privacy</a></li>
                <li><a href="#"><span class="icon-long-arrow-right mr-2"></span>Policy</a></li>
                <li><a href="#"><span class="icon-long-arrow-right mr-2"></span>Terms</a></li>
                <li><a href="#"><span class="icon-long-arrow-right mr-2"></span>Review</a></li>
                <li><a href="#"><span class="icon-long-arrow-right mr-2"></span>Features</a></li>
              </ul>
            </div>
          </div>
          <div class="col-md">
             <div class="ftco-footer-widget mb-4">
              <h2 class="ftco-heading-2">Get Started</h2>
              <ul class="list-unstyled">
                <li><a href="#"><span class="icon-long-arrow-right mr-2"></span>Buy</a></li>
                <li><a href="#"><span class="icon-long-arrow-right mr-2"></span>Rent</a></li>
                <li><a href="#"><span class="icon-long-arrow-right mr-2"></span>Payment</a></li>
                <li><a href="#"><span class="icon-long-arrow-right mr-2"></span>Mortgage</a></li>
                <li><a href="#"><span class="icon-long-arrow-right mr-2"></span>Loan</a></li>
              </ul>
            </div>
          </div>
          <div class="col-md">
            <div class="ftco-footer-widget mb-4">
            	<h2 class="ftco-heading-2">Newsletter</h2>
            	<p>Far far away, behind the word mountains, far from the countries.</p>
              </div>
              </form>
            </div>
          </div>
        </div>
        <div class="row">
          <div class="col-md-12 text-center">
    <p><!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
  Copyright &copy;<script>document.write(new Date().getFullYear());</script> All rights reserved | MCA-PRMIT&R Badnera-Amravati <br><i class="icon-heart" aria-hidden="true"></i>
  <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. --></p>
          </div>
        </div>
      </div>
    </footer>
    
  
<%
}
else
{
	%>
	<center>
	<br>
	<h4 style="color:red">Invalid Session</h4>
	<hr>
	<a href="login.html"><h5>Login Now</h5></a>
	
	<%
}
%>
  <!-- loader -->
  <div id="ftco-loader" class="show fullscreen"><svg class="circular" width="48px" height="48px"><circle class="path-bg" cx="24" cy="24" r="22" fill="none" stroke-width="4" stroke="#eeeeee"/><circle class="path" cx="24" cy="24" r="22" fill="none" stroke-width="4" stroke-miterlimit="10" stroke="#F96D00"/></svg></div>


  <script src="js/jquery.min.js"></script>
  <script src="js/jquery-migrate-3.0.1.min.js"></script>
  <script src="js/popper.min.js"></script>
  <script src="js/bootstrap.min.js"></script>
  <script src="js/jquery.easing.1.3.js"></script>
  <script src="js/jquery.waypoints.min.js"></script>
  <script src="js/jquery.stellar.min.js"></script>
  <script src="js/owl.carousel.min.js"></script>
  <script src="js/jquery.magnific-popup.min.js"></script>
  <script src="js/aos.js"></script>
  <script src="js/jquery.animateNumber.min.js"></script>
  <script src="js/scrollax.min.js"></script>
  <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBVWaKrjvy3MaE7SQ74_uJiULgl1JY0H2s&sensor=false"></script>
  <script src="js/google-map.js"></script>
  <script src="js/main.js"></script>
  
  
  </body>
</html>