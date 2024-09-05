
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
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
           .nava:hover{
            background-color: rgb(243, 41, 41);
            background-position: 10;
          }
          .br{
            border:1px solid black  !important ;
            border-right:0px solid white !important;
          }
          .bl{
            border:1px solid black  !important ;
            border-left:1px solid #f7cbca !important;
          }
            .checked {
            color: orange;
        }
        .star {
      font-size: 24px;
      color: #f9c406;
      cursor: pointer;
    }
        .righ{
          float: right;
        }
        /* .white{ 
            color:rgb(249, 213, 213);
        } */
        </style>
  </head>
<body>
  <%@ page import="java.sql.*"%>
<%@ page import="java.util.*"%>
<%@ page import="java.io.*"%>
    <nav class="navbar navbar-dark bg-dark fixed-top navbar-expand-lg navbar-light bg-light">
        <a class="navbar-brand" href="inde2.jsp" style="font-weight: bold;">Magic Mobiles</a>&ensp;&ensp;&ensp;&ensp;
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNavAltMarkup"
            aria-controls="navbarNavAltMarkup" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarNavAltMarkup">
            <div class="navbar-nav container-fluid">
                <a class="nav-link nava active" href="topdealds2.jsp">TOP dells<span class="sr-only">(current)</span></a>                <a class="nav-link nava active" href="upcomingmobiles2.jsp">Upcoming Mobiles</a>
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
    <% 
    String s="Add to card",s2="Add to card",s4="Add to card",s5="Add to card";
          try
          {  
            Class.forName("oracle.jdbc.driver.OracleDriver");
            Connection con1 = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","2003");
            String str2="select email,product_name from card2 where email=? and product_name=?" ; 
            PreparedStatement st1 = con1.prepareStatement(str2);
            st1.setString(1,s1);
            st1.setString(2,"realme 5 pro");
            ResultSet rs = st1.executeQuery();
            if(rs.next()){
                s="added to card";
            }
            else{
               s="Add to card";
            }
            String str3="select  *  from card2 where email=? and product_name=?  " ; 
            PreparedStatement st2 = con1.prepareStatement(str3);
            st2.setString(1,s1);
            st2.setString(2, "Brand Apple ,Model Name	IPhone");
            ResultSet rs1 = st2.executeQuery();
            
            if(rs1.next()){
                s2="added to card";
            }
            else{
               s2 ="Add to card";
            }
            String str4="select * from card2 where email=? and product_name=? " ; 
            PreparedStatement st3 = con1.prepareStatement(str4);
            st3.setString(1,s1);
            st3.setString(2,"redmi note 10 pro");
            ResultSet rs4 = st3.executeQuery();
            
            if(rs4.next()){
                s4="added to card";
            }
            else{
               s4 ="Add to card";
            }
            String str5="select * from card2 where email=? and product_name=?  " ; 
            PreparedStatement st4 = con1.prepareStatement(str5);
            st4.setString(1,s1);
            st4.setString(2,"realme C15");
            ResultSet rs5 = st4.executeQuery();
            
            if(rs5.next()){
              s5 ="added to card";
            }
            else{
              s5="added to card";
            }
        }
        catch(Exception e)
          {
              System.out.println(e);
          }
    %>
     
                
<div class=" container-fluid mb-4 pt-5"  >
  <h3 class="mt-3 ">Mega dealss clossing soon| limited orders</h3>
  <div class="row mt-5">
    <div class="col-12 col-md-6 col-lg-3 border border-dark br">
      <p class="text-danger" style="font-size: 30px;">MagSafe Charger<span class="righ"><b class="large symbol star p-4  w3-xxxlarge" id="changeButton1" style="width:100vh;"> &star;</b></span>
      <img src="https://store.storeimages.cdn-apple.com/4668/as-images.apple.com/is/MHXH3_AV1?wid=572&hei=572&fmt=jpeg&qlt=95&.v=1661269794729" width="100%"
        height="400vh">
      </p>
      <p class="text-primary border border-light position-absolute ">Rating:4.5/5:-
          &ensp;  <span class="fa fa-star checked"></span>
          <span class="fa fa-star checked"></span>
          <span class="fa fa-star checked"></span>
          <span class="fa fa-star checked"></span>
          <span class="fa fa-star-half-full checked"></span>
      </p><br><br>
      The MagSafe Charger makes wireless charging snappy. The perfectly aligned magnets attach to your iPhone 14, iPhone 14 Pro, iPhone 13, iPhone 13 Pro, iPhone 12 and iPhone 12 Pro, and provide faster wireless charging up to 15W.<br>

The MagSafe Charger maintains compatibility with Qi charging, so it can be used to wirelessly charge your iPhone 8 or later, as well as AirPods models with a wireless charging case, as you would with any Qi-certified charger.<br>

The magnetic alignment experience only applies to iPhone 14, iPhone 14 Pro, iPhone 13, iPhone 13 Pro, iPhone 12 and iPhone 12 Pro models.<br>

Recommended: 20W USB-C Power Adapter (sold separately)<br>
      <p style="padding: 1px -2px !important;" class="text-secondary border rounded border-info position-absolute">view more &ensp;<span class="text-dark dropdown-toggle i "></span></p><br><br>

      <p><span class="spinner-border spinner-grow text-danger " style="width: 20px; height:20px;"></span>&#8377;4,999 <s  style="color: red;">&#8377;17,900</s>(21% off)</p>
      <a href="#" class="btn btn-danger" onclick="alertfun3('MagSafe Charger','4999')">Buy now</a> <a href="#" onclick="alertfun1('MagSafe Charger','https://www.jiomart.com/images/product/420x420/rvci9gpyar/coverage-silicone-hybrid-rubber-case-back-cover-for-realme-5-pro-black-product-images-orvci9gpyar-p597896296-1-202301261534.jpg')" class="btn btn-warning">
        <%=s%></a><br><br>

    </div>
    <div class="col-12 col-md-6 col-lg-3 br ">
      <p class="text-danger" style="font-size: 30px;">Realme 5 pro <span class="righ"><b class="large symbol star p-4  w3-xxxlarge" id="changeButton1" style="width:100vh;"> &star;</b></span>

      <img
        src="https://m.media-amazon.com/images/I/61HHS0HrjpL._SX679_.jpg"
        width="100%" height="400vh">
      
    
      <p class="text-primary border border-light position-absolute">Rating:4.7/5
          &ensp;  <span class="fa fa-star checked"></span>
          <span class="fa fa-star checked"></span>
          <span class="fa fa-star checked"></span>
          <span class="fa fa-star checked"></span>
          <span class="fa fa-star-half-full checked"></span>
      </p><br><br>
      <br> Released 2022, September 16 206g, 7.9mm thickness iOS 16, up to iOS 16.4.1. 128GB/256GB/1TB storage, no card slot; 25% 2,810,602 hits; 301 Become a fan ...
      <br>Internal: 128GB 6GB RAM, 256GB 6GB RAM, ...
      <br>Battery: Type
      <br>Battery life: Endurance rating 86h
      <br>Memory: Card slot<br>
      <p style="padding: 1px -2px !important;" class="text-secondary border rounded border-info position-absolute">view more &ensp;<span class="text-dark dropdown-toggle i "></span></p><br><br>
      <p><span class="spinner-border spinner-grow text-danger " style="width: 20px; height:20px;"></span>&#8377;55,999 <s style="color: red;">&#8377;1,17,199</s>(52.2% off)</p>    
        <a href="#" class="btn btn-danger" onclick="alertfun3('realme C15','55999')">Buy now</a> <a href="#" onclick="alertfun1('Brand Apple ,Model Name	IPhone','https://m.media-amazon.com/images/I/61HHS0HrjpL._SX679_.jpg')" class="btn btn-warning">
          
          <%=s2%></a><br><br>
    </div>     

    <div class="col-12 col-md-6 col-lg-3 border border-dark br">
      <p class="text-danger " style="font-size: 30px;" >Realme 5 pro <span class="righ"><b class="large symbol p-4 star  w3-xxxlarge" id="changeButton3" style="width:100vh;"> &star;</b>      </p>
      <img class="pt-5" src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTZPleP-7sJlCC9ArGiNCxzacYDtUElqH7OxWOwTPuRTomUveCP" width="80%"
        height="450vh">
        <p class="text-primary border border-light position-absolute ">Rating:4.5/5:-
            &ensp;  <span class="fa fa-star checked"></span>
            <span class="fa fa-star checked"></span>
            <span class="fa fa-star checked"></span>
            <span class="fa fa-star checked"></span>
            <span class="fa fa-star-half-full checked"></span>
        </p><br><br>
      Realme 5 Pro Android smartphone. Announced Aug 2019. Features 6.3″ display, Snapdragon 712 chipset, 4035 mAh battery, 128 GB storage, 8 GB RAM, ...<br>
      Internal: 64GB 4GB RAM, 64GB 6GB RAM, 12...<br>
      CPU: Octa-core (2x2.3 GHz Kryo 360 Gold & 6...<br>
      Chipset: Qualcomm SDM712 Snapdragon 712 ...<br>
      Memory: Card slot<br>
      <p style="padding: 1px -2px !important;" class="text-secondary border rounded  border-info position-absolute">view more &ensp;<span class="text-dark dropdown-toggle i "></span></p><br><br>

      <p><span class="spinner-border spinner-grow text-danger " style="width: 20px; height:20px;"></span>&#8377;13,999 <s style="color: red;">&#8377;17,900</s>(21% off)</p>
      <a href="#" class="btn btn-danger" onclick="alertfun3('realme C15','55999')">Buy now</a> <a href="#" onclick="alertfun1('redmi note 10 pro','https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTZPleP-7sJlCC9ArGiNCxzacYDtUElqH7OxWOwTPuRTomUveCP')" class="btn btn-warning">
        <%=s4%></a><br><br>

    </div>
    <div class="col-12 col-md-6 col-lg-3 br ">
      <p class="text-danger" style="font-size: 30px;">Realme 5 pro <span class="righ"><b class="large symbol star p-4  w3-xxxlarge" id="changeButton1" style="width:100vh;"> &star;</b></span>

      <img
        src="https://www.gizmochina.com/wp-content/uploads/2020/07/Realme-C15-4GB-RAM-variant.jpg"
        width="100%" height="400vh">
      
      <p class="text-primary border border-light position-absolute">Rating:4.7/5
          &ensp;  <span class="fa fa-star checked"></span>
          <span class="fa fa-star checked"></span>
          <span class="fa fa-star checked"></span>
          <span class="fa fa-star checked"></span>
          <span class="fa fa-star-half-full checked"></span>
      </p><br><br>
      <br> Released 2022, September 16 206g, 7.9mm thickness iOS 16, up to iOS 16.4.1. 128GB/256GB/1TB storage, no card slot; 25% 2,810,602 hits; 301 Become a fan ...
      <br>Internal: 128GB 6GB RAM, 256GB 6GB RAM, ...
      <br>Battery: Type
      <br>Battery life: Endurance rating 86h
      <br>Memory: Card slot<br>
      <p style="padding: 1px -2px !important;" class="text-secondary border rounded border-info position-absolute">view more &ensp;<span class="text-dark dropdown-toggle i "></span></p><br><br>
      <p><span class="spinner-border spinner-grow text-danger " style="width: 20px; height:20px;" ></span>&#8377;55,999 <s style="color: red;">&#8377;1,17,199</s>(52.2% off)</p>    
        <a href="#" onclick="alertfun3('realme C15','55999')"  class="btn btn-danger">Buy now</a> <a href="#" onclick="alertfun1('realme C15','https://www.gizmochina.com/wp-content/uploads/2020/07/Realme-C15-4GB-RAM-variant.jpg')"  class="btn btn-warning">
          <%=s5%></a><br><br>
    </div>     
</div>
</div>

<script>
  function alertfun3(name,url){
      var name=name;
      var name2=url;
      window.location.replace("mobileorder.jsp?name4="+encodeURIComponent(name)+"&name3="+encodeURIComponent(name2)); 
    }
  function alertfun1(name,url){
      var name=name;
      var name2=url;
      window.location.replace("topdealds2.jsp?name="+encodeURIComponent(name)+"&name2="+encodeURIComponent(name2)); 
      
    }
       </script>
      <%
        String name3 = request.getParameter("name");
        String name4 = request.getParameter("name2");
        if(name3 != null && name4 != null){
          session.setAttribute("mobnam",name3);
          session.setAttribute("mobimg",name4);
          response.sendRedirect("setcard.jsp");
        }
      %>
    <script type="text/javascript">
      // Get the button element
    var changeButton1 = document.getElementById('changeButton1');
    var changeButton2 = document.getElementById('changeButton2');
    var changeButton3 = document.getElementById('changeButton3');
    var changeButton4 = document.getElementById('changeButton4');
    changeButton1.addEventListener('click', function() {
      changeButton1.innerHTML = '&bigstar;';});
    changeButton2.addEventListener('click', function() {
      changeButton2.innerHTML = '&bigstar;';});
    changeButton3.addEventListener('click', function() {
      changeButton3.innerHTML = '&bigstar;';});
    changeButton4.addEventListener('click', function() {
      changeButton4.innerHTML =  '&bigstar;';
    });

         </script>
</body>
</html>