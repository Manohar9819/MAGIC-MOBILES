<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <title>Contact Us</title>
  <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css"
        integrity="sha384-JcKb8q3iqJ61gNV9KGb8thSsNjpSL0n8PARn9HuZOnIxN0hoP+VmmDGMN5t9UJ0Z" crossorigin="anonymous">
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"
        integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj"
        crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"
        integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN"
        crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"
        integrity="sha384-B4gt1jrGC7Jh4AgTPSdUtOBvfO8shuf57BaghqFfPlYxofvL8/KUEfYiJOMMV+rV"
        crossorigin="anonymous"></script>
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">
  <link rel="stylesheet" href="https://demo.voidcoders.com/htmldemo/fitgear/main-files/assets/css/animate.css">
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.6.3/css/all.css" integrity="sha384-UHRtZLI+pbxtHCWp1t77Bi1L4ZtiqrqD80Kn4Z8NTSRyMA2Fd33n5dQ8lWUE00s/" crossorigin="anonymous">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

        <style>
           .checked {
            color: orange;
        }
        .white{
          color:rgb(240, 205, 205);
          
        }
          .left{
            left:0;
          }
          .nava:hover{
            background-color: rgb(243, 41, 41);
            background-position: 10;
          }
          .parev{
            /* padding: 2px -100px; */
            background-color: rgb(102, 253, 102);
            position:absolute !important;
          }
          .map-container-3{
  overflow:hidden;
  padding-bottom:56.25%;
  position:relative;
  height:0;
}
.map-container-3 iframe{
  left:0;
  top:0;
  height:100%;
  width:100%;
  position:absolute;
}
        </style>
  </head>
<body>
  <nav class="navbar navbar-dark bg-dark fixed-top navbar-expand-lg navbar-light bg-light">
    <a class="navbar-brand" href="inde2.jsp" style="font-weight: bold;">Magic Mobiles</a>&ensp;&ensp;&ensp;&ensp;
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNavAltMarkup"
        aria-controls="navbarNavAltMarkup" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarNavAltMarkup">
        <div class="navbar-nav container-fluid">
            <a class="nav-link nava active" href="topdealds2.jsp">TOP dells<span class="sr-only">(current)</span></a>
          <!-- <a class="nav-link nava active" href="#">Recent arrivals</a> -->
            <a class="nav-link nava active" href="upcomingmobiles2.jsp">Upcoming Mobiles</a>
            <!-- <a class="nav-link nava active" href="#">,;,;,;,;</a>
            <a class="nav-link nava active" href="#">,;,;,;,;</a> -->
            <!-- <a class="nav-link nava active" href="#">,;,;store rooms,;</a> -->
            <!-- <a class="nav-link nava active" href="#">,;,;,;,;</a> -->
            <a class="nav-link nava active" href="#"> All Mobiles </a>
            <a class="nav-link nava active" href="smartWaches2.jsp">Smart watches</a>
            <a class="nav-link nava active" href="Contactus2.jsp">CONTACT US</a>
            <a class="nav-link nava active" href="accesseries2.jsp">Accesseries</a>
            <a class="nav-link nava active " href="userprofile.jsp">
            <% 
            String s1=(String)session.getAttribute("user");
          
            out.println(s1); %></a>  
            <a  onclick="reg()" class="nav-link nava active" href="logut.jsp"> 
                
                <% out.println("Logut"); %></a> 
            <!-- <a class="nav-link disabled" href="#" tabindex="-1" aria-disabled="true">Disabled</a> -->
        </div>
    </div>
</nav>
                <div style="padding-top:80px;" class="left">
                  <div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel" data-interval="3000">
                    <ol class="carousel-indicators">
                      <li data-target="#carouselExampleIndicators"  data-slide-to="0" class="active">-</li>
                      <li data-target="#carouselExampleIndicators" data-slide-to="1">-</li>
                      <li data-target="#carouselExampleIndicators" data-slide-to="2">-</li>
                    </ol>
                    <div class="carousel-inner">
                      <div class="carousel-item active">
                        <img class="d-block w-100" src="https://www.nicepng.com/png/detail/10-107408_mobile-png-image-hd-all-mobile-phone-png.png" height="550vh" alt="First slide">
                        <div class="carousel-caption d-none d-md-block text-primary">
                          <h5>mobiles </h5>
                          <p>brands</p>
                        </div>
                      </div>
                      <div class="carousel-item">
                        <img class="d-block w-100" src="https://images.hindustantimes.com/img/2023/01/25/1600x900/Collage_Maker-25-Jan-2023-0856-PM_1674660454280_1674660454588_1674660454588.jpg" height="550vh" alt="Second slide">
                        <div class="carousel-caption d-none d-md-block text-primary">
                          <h5>latest models </h5>
                          <p>clasic & casual for every persion.</p>
                        </div>
                      </div>
                      <div class="carousel-item">
                        <img class="d-block w-100" src="bestdellCrop.png" height="550vh" alt="Third slide">
                        <div class="carousel-caption d-none d-md-block text-primary">
                          <h5>Best offers</h5>
                          <p>offer colses soon.</p>
                        </div>
                      </div>
                    </div>
                    <a class="carousel-control-prev " href="#carouselExampleIndicators" role="button" data-slide="prev">
                      <span class="text-dark" style="font-size:50px;" aria-hidden="true">&lt</span>
                      <span class="sr-only">Previous</span>
                    </a>
                    <a class="carousel-control-next " href="#carouselExampleIndicators" role="button" data-slide="next">
                      <span class="text-dark" style="font-size:50px;" aria-hidden="true">&gt</span>
                      <span class="sr-only">Next</span>
                    </a>
                  </div>
                
                <!-- <img src="https://www.nicepng.com/png/detail/10-107408_mobile-png-image-hd-all-mobile-phone-png.png" alt="image" class="rounded" height="450vh" width="100%"> -->
                <div class="border border-dark ">
                  <div class="border border-info">
                <div class=" container-fluid mb-4 pt-5 "  >
                  <h3 class="mt-2">Up to 66% off | Deal of the day</h3>
                  <div class="row ">
                    <div class="col-12 col-md-6 col-lg-3 ">
                      <img src="https://www.jiomart.com/images/product/420x420/rvci9gpyar/coverage-silicone-hybrid-rubber-case-back-cover-for-realme-5-pro-black-product-images-orvci9gpyar-p597896296-1-202301261534.jpg" width="100%"
                        height="400vh">
                      <div class="text-center"><p>Realme 5 pro</p>
                      <!-- <p>Rating:4.5/5</p> -->
                     <p >Rating:4.7/5
                            &ensp;  <span class="fa fa-star checked"></span>
                            <span class="fa fa-star checked"></span>
                            <span class="fa fa-star checked"></span>
                            <span class="fa fa-star checked"></span>
                            <span class="fa fa-star-half-full checked"></span>
                        </p>
                      </div>
                    </div>
                    <div class="col-12 col-md-6 col-lg-3 pr-2 ">
                      <img class="pt-5" src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTZPleP-7sJlCC9ArGiNCxzacYDtUElqH7OxWOwTPuRTomUveCP" width="70%"
                      height="400vh">                      <div class="text-center"><p>Readmi note 9</p>
                        <!-- <p>Rating:4.5/5</p> -->
                       <p >Rating:4/5
                              &ensp;  <span class="fa fa-star checked"></span>
                              <span class="fa fa-star checked"></span>
                              <span class="fa fa-star checked"></span>
                              <span class="fa fa-star checked"></span>
                              <span class="fa fa-star white"></span>
                          </p>
                        </div>
                    </div>
                    <div class="col-12 col-md-6 col-lg-3 ">
                      <img
                        src="https://www.gizmochina.com/wp-content/uploads/2020/07/Realme-C15-4GB-RAM-variant.jpg"
                        width="100%" height="400vh">
                        <div class="text-center"><p>Realme c15</p>
                          <!-- <p>Rating:4.5/5</p> -->
                         <p >Rating:3.7/5
                                &ensp;  <span class="fa fa-star checked"></span>
                                <span class="fa fa-star checked"></span>
                                <span class="fa fa-star checked"></span>
                                <span class="fa fa-star-half-full checked"></span>
                                <span class="fa fa-star white"></span>
                            </p>
                          </div>
                    </div>
                    <div class="col-12 col-md-6 col-lg-3 ">
                      <img src="https://m.media-amazon.com/images/I/61HHS0HrjpL._SX679_.jpg" width="100%" height="400vh">
                      <div class="text-center"><p>Iphone 14 pro</p>
                        <!-- <p>Rating:4.5/5</p> -->
                       <p >Rating:4.3/5
                              &ensp;  <span class="fa fa-star checked"></span>
                              <span class="fa fa-star checked"></span>
                              <span class="fa fa-star checked"></span>
                              <span class="fa fa-star checked"></span>
                              <span class="fa fa-star-half-full checked"></span>
                          </p>
                        </div>
                    </div>
                  </div>
                </div>
                <div class=" p-1 d-flex  flex-row justify-content-center"><button class="btn p-2 btn-success">View more&ensp;></button></div><br>
                </div>
                
                <div class="border border-info">
                  <div class=" container-fluid mb-3">
                    <h3 class="mt-2">Mobiles Between 10K to 20K</h3>
                    <div class="row ">
                      <div class="col-12 col-md-6 col-lg-3">
                        <img src="https://m.media-amazon.com/images/I/61WtpmvNTFL._SL1440_.jpg" width="100%" height="400vh">
                        <div class="text-center"><p>Poco m2</p>
                          <!-- <p>Rating:4.5/5</p> -->
                         <p >Rating:3.8/5
                                &ensp;  <span class="fa fa-star checked"></span>
                                <span class="fa fa-star checked"></span>
                                <span class="fa fa-star checked"></span>
                                <span class="fa fa-star-half-full checked"></span>
                                <span class="fa fa-star white"></span>
                            </p>
                          </div>
                      </div>
                      <div class="col-12 col-md-6 col-lg-3 ">
                        <img class="pl-5"
                          src="https://fdn2.gsmarena.com/vv/pics/realme/realme-c3-2020-1.jpg"
                          width="80%" height="400vh">
                          <div class="text-center"><p>Realme c2</p>
                            <!-- <p>Rating:4.5/5</p> -->
                           <p >Rating:3.6/5
                                  &ensp;  <span class="fa fa-star checked"></span>
                                  <span class="fa fa-star checked"></span>
                                  <span class="fa fa-star checked"></span>
                                  <span class="fa fa-star-half-full checked"></span>
                                  <span class="fa fa-star white"></span>
                              </p>
                            </div>
                      </div>
                      <div class="col-12 col-md-6 col-lg-3 ">
                        <img
                          src="https://cdn.shopify.com/s/files/1/0675/5716/3324/files/Untitleddesign-2023-04-25T114814.664.png?v=1682403781&width=713 "
                          width="100%" height="400vh">
                          <div class="text-center"><p>Readmi 9 pro</p>
                            <!-- <p>Rating:4.5/5</p> -->
                           <p >Rating:4.6/5
                                  &ensp;  <span class="fa fa-star checked"></span>
                                  <span class="fa fa-star checked"></span>
                                  <span class="fa fa-star checked"></span>
                                  <span class="fa fa-star checked"></span>
                                  <span class="fa fa-star-half-full checked"></span>
                              </p>
                            </div>
                      </div>
                      <div class="col-12 col-md-6 col-lg-3 ">
                        <img src="https://encrypted-tbn2.gstatic.com/shopping?q=tbn:ANd9GcSItvvX4Uskqmj8aIy9noCTxFrsBNYfV1C8_CoaorhqPTGj8wcWBnn13-M-bzFOlPzSMIrsHJ1u3wGMc9wlEGYxt5jz_gHFTsSVYQyZYxWcag2mDQHnreDnnCOG7DZKsoGZ9q4&usqp=CAc"
                          width="80%" height="400vh">
                          <div class="text-center"><p>Samsang galexy M33</p>
                            <!-- <p>Rating:4.5/5</p> -->
                           <p >Rating:4.2/5
                                  &ensp;  <span class="fa fa-star checked"></span>
                                  <span class="fa fa-star checked"></span>
                                  <span class="fa fa-star checked"></span>
                                  <span class="fa fa-star checked"></span>
                                  <span class="fa fa-star-half-full checked"></span>
                              </p>
                            </div>                   
                           </div>
                    </div>
                  </div>
                  <div class=" p-1 d-flex  flex-row justify-content-center"><button class="btn p-2 btn-success">View more&ensp;></button></div><br>
                  </div>
                  <div class="border border-info">
                    <div class=" container-fluid mb-3">
                      <h3 class="mt-2">Popular in keypads </h3>
                        <div class="row ">
                        <div class="col-12 col-md-6 col-lg-3">
                          <img class="pl-5" src="https://www.91-img.com/gallery_images_uploads/6/0/60c3300a59eb24860b14f33dca625c40373ba8c7.jpg?w=0&h=901&q=80&c=1" width="60%" height="400vh">
                          <div class="text-center"><p>Nokia 216 Dual SIM</p>
                            <!-- <p>Rating:4.5/5</p> -->
                           <p >Rating:3.7/5
                                  &ensp;  <span class="fa fa-star checked"></span>
                                  <span class="fa fa-star checked"></span>
                                  <span class="fa fa-star checked"></span>
                                  <span class="fa fa-star-half-full checked"></span>
                                  <span class="fa fa-star white"></span>
                              </p>
                            </div>
                        </div>
                        <div class="col-12 col-md-6 col-lg-3 pl-5">
                          <img src="https://img6.gadgetsnow.com/gd/images/products/additional/large/G411522_View_1/mobiles/feature-phones/samsung-guru-music-2-gt-b315-blue-4-mb-.jpg"
                            width="60%" height="400vh">
                            <div class="text-center"><p>Samsung Guru Music 2 GT-B315 (Blue, 4 MB)</p>
                              <!-- <p>Rating:4.5/5</p> -->
                             <p >Rating:4.6/5
                                    &ensp;  <span class="fa fa-star checked"></span>
                                    <span class="fa fa-star checked"></span>
                                    <span class="fa fa-star checked"></span>
                                    <span class="fa fa-star checked"></span>
                                    <span class="fa fa-star-half-full checked"></span>
                                </p>
                              </div>
                        </div>
                        <div class="col-12 col-md-6 col-lg-3 ">
                          <img
                            src="https://m.media-amazon.com/images/I/41Ywqvcy2wL.jpg "
                            width="100%" height="400vh">
                            <div class="text-center"><p>Jio Phone keypaid 4g Mobile</p>
                              <!-- <p>Rating:4.5/5</p> -->
                             <p >Rating:4.6/5
                                    &ensp;  <span class="fa fa-star checked"></span>
                                    <span class="fa fa-star checked"></span>
                                    <span class="fa fa-star checked"></span>
                                    <span class="fa fa-star checked"></span>
                                    <span class="fa fa-star-half-full checked"></span>
                                </p>
                              </div>
                        </div>
                        <div class="col-12 col-md-6 col-lg-3 ">
                          <img
                            src="https://m.media-amazon.com/images/I/61wbFD6KzmL._SX679_.jpg"
                            width="100%" height="400vh">
                            <div class="text-center"><p>Nokia 2660 Flip 4G Volte</p>
                              <!-- <p>Rating:4.5/5</p> -->
                             <p >Rating:4/5
                                    &ensp;  <span class="fa fa-star checked"></span>
                                    <span class="fa fa-star checked"></span>
                                    <span class="fa fa-star checked"></span>
                                    <span class="fa fa-star checked"></span>
                                    <span class="fa fa-star "></span>
                                </p>
                              </div>                   
                             </div>
                      </div>
                    </div>

                    <div class=" p-1 d-flex  flex-row justify-content-center"><button class="btn p-2 btn-success">View more&ensp;></button></div><br>
                    </div>
                    <!-- <div class=""> -->
                      <img class="d-flex m-auto " width="90%" height="500vh" src="upcoming.jpg">
                      <!-- </div> -->
                    <div class=" p-1 d-flex pt-3 flex-row justify-content-center"><button class="btn p-2 btn-success">Click here&ensp;></button></div><br>

                    <div  style="color: white;" class="d-flex flex-row justify-content-around pt-5 bg-dark">
                  <div class="d-flex flex-column justify-content-start">
                    <h4> <a class="text-white "  href="Contactus.html"> Contac Us</a></h4>
                      <!--Google map-->
                      Chilakalapudi,<br>
                      Ghantasala mandal, krishna district<br>
                      Andhra praesh ,India <br>
                      
                  <div id="map-container-google-3" class="z-depth-1-half map-container-3">
                    <iframe src="https://www.google.com/maps/embed?pb=!1m10!1m8!1m3!1d930.455413082095!2d80.9447948!3d16.1905712!3m2!1i1024!2i768!4f13.1!5e1!3m2!1sen!2sin!4v1683443188879!5m2!1sen!2sin" width="600" height="450" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>
                  </div>
                  </div>
                  <div class=" d-flex flex-column justify-content-start">
                    <h4>Product categories</h4>
                    <a class="text-white" href="topDeals.html">Top dells</a>
                    <a class="text-white" href="upcomingmobiles.html">Upcoming mobiles</a>
                    <a class="text-white" href="accesseries.html">Accesseries</a>
                    <a class="text-white" href="smartWaches.html">Smart waches</a>

                </div>
                  <div class="d-flex flex-column justify-content-start">
                      <h4>Quick Links</h4>
                      <a class="text-white" href="home.html">Home</a>
                      <a class="text-white" href="regiter.html">Sign In</a>
                      <a class="text-white" href="Login.html">Login</a>
                  </div>
                  <div class="d-flex flex-column justify-content-start">
                      <h4>Quick Links</h4>
                      <a>Facebook</a>
                      <a>Instagram</a>
                      <a>Twitter</a>
                      <a>LinkedIn</a>
                  </div>
          
              </div>
              
              <div style="color: white;"  class="d-flex flex-row justify-content-center bg-dark">
                  <h4>Created by @ <a>K.Siva Sai Subrahmanyam</a></h4>
              </div>

              </body>
</html>