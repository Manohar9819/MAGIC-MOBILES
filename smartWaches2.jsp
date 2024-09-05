<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
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
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <style>
        .parallax {
  background-image: url("https://m.media-amazon.com/images/S/aplus-media-library-service-media/85636e4b-cc57-42be-95a9-8ee4ff2a2182.__CR0,0,970,600_PT0_SX970_V1___.jpg");
  min-height: 500vh; 
  background-attachment: fixed;
  background-position: center;
  background-repeat: no-repeat;
  background-size: cover;
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
                <a class="nav-link nava active " onclick="login()" href="#">
                <% 
                String s1=(String)session.getAttribute("user");
                out.println(s1); %></a>  
                <a  onclick="reg()" class="nav-link nava active" href="logut.jsp"> 
                    <% out.println("Logut"); %></a> 
            </div>
        </div>
    </nav>
                
                <br><br><br>
                <div class="parallax"></div>
                <div class="p-4">
                <p class="h6" style="color:rgb(127, 127, 12)">Smartwatches have become more of a necessity these days.
                     But buying one has become a lot more difficult, considering the wide range of options available.
                      If you browse online, you’ll find Fossil, Samsung, Apple, Mi smart watches.
                       Many smartwatches have built-in fitness features, such as a heart rate sensor and GPS. 
                       The Fitbit Versa is promoted as a health device rather than as a smartphone replacement.
                        Each smartwatch has its own USP.
                         All you need to do is figure out what your needs are and then buy an Android smartwatch or iOS smartwatch depending on your requirements.
                        </p>
                <br>
                <p class="h4 text-primary">Smart Watches &ensp;(Showing 1 &#45; 30 products of 4,683 products)</p>
                    <div class=" container-fluid mb-4 pt-5"  >
                      
                      <div class="row border border-warning">
                        <div class="col-12 col-md-6 col-lg-3 ">
                          <img src="https://m.media-amazon.com/images/I/61SSVxTSs3L._SX522_.jpg" width="100%"   height="400vh">
                        </div>
                        <div class="col-12 col-md-6 col-lg-7 p-5 ">
                            <p style="font-size:25px;" class="hov">Noise Pulse 2 Max Advanced Bluetooth Calling Smart Watch with 1.85'' Display, 550 NITS Brightness, Smart DND, 10 Days Battery, 100 Sports Modes, Smart Watch for Men and Women - (Jet Black)</p>
                            <p>
                                Brand	Noise<br>
                                Model Name	ColorFit Pulse 2 Max<br>
                                Style	Modern<br>
                                Colour	Black<br>
                                Screen Size	1.85 Inches<br>
                            M.R.P:-&#8377;1,12,499<br>
                                M.R.P:-<s class="text-danger"> &#8377; 2,15,999</s> (75%off)<br>
                                Inclusive of all taxes<br>
                                EMI starts at &#8377;513 per month.<br>
                              <a href="#">Emi options</a> </p>
                              <button style="padding: 1px -2px !important;" onClick="buy('INoise Pulse 2 Max Advanced Bluetooth Calling Smart Watch with 1.85','112499')" class="btn btn-warning mt-3 pl-5 pr-5">Buy Now &ensp;</button>
                        
                        </div>
                </div>    
                </div>  
                <!-- <p class="h4 text-primary">Smart Watches &ensp;(Showing 1 – 30 products of 4,683 products)</p> -->
                    <div class=" container-fluid mb-4 "  >
                      
                      <div class="row border border-warning">
                        <div class="col-12 col-md-6 col-lg-3 ">
                          <img src="https://m.media-amazon.com/images/I/617ysOitciL._SX522_.jpg" width="100%"   height="400vh">
                        </div>
                        <div class="col-12 col-md-6 col-lg-7 p-5 ">
                            <p style="font-size:25px;" class="hov">boAt Xtend Smartwatch with Alexa Built-in, 1.69” HD Display, Multiple Watch Faces, Stress Monitor, Heart & SpO2 Monitoring, 14 Sports Modes, Sleep Monitor, 5 ATM & 7 Days Battery(Charcoal Black)</p>
                            <p>
                                Brand	BoAt
                                Model Name	Watch Xtend<br>
                                Style	With Alexa<br>
                                Colour	Charcoal Black<br>
                                Screen Size	1.69 Inches<br>

                            M.R.P:-&#8377;57,884<br>
                                M.R.P:-<s class="text-danger"> &#8377;1,15,999</s> (75%off)<br>
                                Inclusive of all taxes<br>
                                EMI starts at &#8377;513 per month.<br>
                              <a href="#">Emi options</a> </p>
                                <button style="padding: 1px -2px !important;" onClick="buy('boAt Xtend Smartwatch with Alexa Built-in, 1.69','57884')" class="btn btn-warning mt-3 pl-5 pr-5">Buy Now &ensp;</button>
                        
                        </div>
                </div>    
                </div>    
                    <div class=" container-fluid mb-4 "  >
                      
                      <div class="row border border-warning">
                        <div class="col-12 col-md-6 col-lg-3 ">
                          <img src="https://m.media-amazon.com/images/I/61ZjlBOp+rL._SX522_.jpg" width="100%"   height="400vh">
                        </div>
                        <div class="col-12 col-md-6 col-lg-7 p-5 ">
                            <p style="font-size:25px;" class="hov">ID-116 Smartwatch for Men's ,Womens Boys Girls, Bluetooth Smart Fitness Band Watch with Heart Rate Activity Tracker Step & Sports Activity Tracker Smart Watch for</p>
                            <p>
                                    Brand	Generic<br>
                                    Model Name	Id 116<br>
                                    Style	Minimalist<br>
                                    Screen Size	1.5 Inches<br>
                                    Special Feature	Blood Pressure, Sleep Monitor, Activity Tracker<br>
                            M.R.P:-&#8377;1,499<br>
                                M.R.P:-<s class="text-danger"> &#8377;5,999</s> (75%off)<br>
                                Inclusive of all taxes<br>
                                EMI starts at &#8377; 513 per month.<br>
                              <a href="#">Emi options</a> </p>
                             <a href="#"> <button style="padding: 1px -2px !important;" onClick="buy('ID-116 Smartwatch','1499')" class="btn btn-warning mt-3 pl-5 pr-5">Buy Now &ensp;</button><br></a>
                              
                        </div>
                </div>    
                </div>    
                <script>
                  function buy(name,name2){
                      var name=name;
                      var name2=name2;
                      // var url=url;
                      window.location.replace("smartWaches2.jsp?name="+encodeURIComponent(name)+"&name2="+encodeURIComponent(name2));
                      //var name1 = request.getParameter("name");
                      //alert(name1);
                  }
                </script>
                <%
                
                  String name = request.getParameter("name");
                  String name2 = request.getParameter("name2");
                  if(name != null)
                  {
                      session.setAttribute("mobname",name);
                      
                      session.setAttribute("mobname2",name2);
                      response.sendRedirect("booking.jsp");
                  }
                %>            
    </body>
</html>