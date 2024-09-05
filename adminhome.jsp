<%@ page import="java.sql.io.*"%>
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
    <a class="navbar-brand" href="adminhome.jsp" style="font-weight: bold;">Magic Mobiles</a>&ensp;&ensp;&ensp;&ensp;
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNavAltMarkup"
        aria-controls="navbarNavAltMarkup" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarNavAltMarkup">
        <div class="navbar-nav container-fluid">
            <a class="nav-link nava active" href="addtocard.jsp">To deleate user<span class="sr-only">(current)</span></a>
          <!-- <a class="nav-link nava active" href="#">Recent arrivals</a> -->
            <a class="nav-link nava active" href="admindetails.jsp">Admin details</a>
            
                      <a class="nav-link nava active" href="userdetails.jsp"> User details </a>
                      <a class="nav-link nava active" href="transaction.jsp">Payement details</a>
                      <a class="nav-link nava active" href="contactdetails.jsp">User Queries</a>
                      <a class="nav-link nava active" href="cardDetails.jsp">Accesseries</a>
                      <a class="nav-link nava active " onclick="login()" href="#">  
                      <% 
                      String s1=(String)session.getAttribute("admin");
                    
                      out.println(s1); %></a>  
                      <a  onclick="reg()" class="nav-link nava active" href="logut.jsp"> 
                          
                          <% out.println("Logut"); %></a> 
            <!-- <a class="nav-link disabled" href="#" tabindex="-1" aria-disabled="true">Disabled</a> -->
        </div>
    </div>
</nav>
  <div class="container  pt-5">
    <div class="row text-center  mt-5  pt-4">
      <div class="col-12  col-md-6 ">
        <h4 class="">
          <img height="300px" width="500px" src="https://static.vecteezy.com/system/resources/previews/003/523/410/original/illustration-business-finance-ecommerce-admin-customer-service-calling-consumers-complain-people-character-flat-design-style-vector.jpg">
          <a href="userdetails.jsp">Customer Management</a></h4>
        </div>
        
        <div class="col-12  mt-4  col-md-6 ">
          <img height="280px" width="500px" src="https://img.freepik.com/free-vector/business-people-working-giving-tasks_1262-19728.jpg?size=626&ext=jpg&ga=GA1.1.760075994.1685332858&semt=sph">
          
          <h4 class="pt-1"><a href="admindetails.jsp">Administration Management</a></h4>
        </div>
      </div>
      <div class="row text-center pt-4">
        <div class="col-12 col-md-6 ">
    <img height="300px"  width="400px" src="https://icons.iconarchive.com/icons/custom-icon-design/pretty-office-3/256/Add-Male-User-icon.png" alt="image">
    <h4 class=""><a href="#">Add Customer</a></h4>
  </div>
  
  <div class="col-12 col-md-6 ">
    <img height="300px"  width="400px" src="https://www.iconexperience.com/_img/v_collection_png/256x256/shadow/user_delete.png" alt="image">
    <h4 class=""><a href="addtocard.jsp">Delete Customer</a></h4>
  </div>
</div>
<div class="row text-center pt-4">
  <div class="col-12 col-md-6 ">
    <img height="300px"  width="400px" src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAIYAAACGCAMAAAAvpwKjAAAAq1BMVEX///8ZdtP0QjYAa9CkxN8RdNMAb9EAbdH0NCUAa8zx+Pz1PTCwzOYAac8AZ84LctL88O/0OSvp8/cxf9Dc6vT89/bqhoDscWnxLh344+HuOCm50uvtlZDzysjY5PGmyOhrn9gAa8agwONSj9McdsyHsN1gl9R6p9jN4e3C1+s6hM+St97M3e7309DuIAbvu7jndW7qXlTpUkfmZVzrRTnvnpjxsq3spJ8AXcsWeUsiAAAE3ElEQVR4nO2ZbXOiOhSAE9iEFwUUtL61iogiaFut1u7//2WboK6oqAkS2DuX50Nn2s7Up+ecJCcnAFRUVFRUVFRUVPwXsG1bL9dgOHKdsaZp47HjjoblOOjeBCoYwRiEFTgZlRAVz5etg8PBxDJ8r2CJAVRgCoo/KFBCn2oozYKERFsUl5mJnC5BMWYFSdgRvm0BIXYKiYc+u2tBPGZFeASpxZlEDsRbeHfq4ogyEm1hj2+skSQIiU5L8KAwDuUhOC1zi8UCQk3sCeMyBUN0OHTIUBkxji1Qo84YDLJY6gI1XMbSIFlxBWo4rBYQjcVZ6CazBjTFbR1zHo25MI06w0Z+xAiFaXgPT7UTApfKP6Ix4tCQxWmEBruGwNpo8ayUljANXePQEGYBQMS8mSNHoMaU/WhbCNQI2aOxFKgBfFaLSKQFU19OMcReqm3Go15o80XwmHYwwcEAbGvWElsZlCFDU+wXMIAaPaxSQ/jdkbJ4cLKYBY2ebs56KAiL3D/PWNz2QFqBY7ilg1NFEHbEdcIp6AFMOeUwnBY9Gh262nlEENbcMibFtjfRTAVbBKyY1sQTvIHfMQkXgTubuYEXluZQNnrd9YPUWtQDPxgUEhd7MIPYgti/fi/QRz5GGMOZcJNl4Gj7hwOkROc1aS+i/W0KWYoTCOwBdS8yE7sFUszJtL5s2XZrWZ9OTAUlFq8Z/RKzhdjTMb7sNUgKLGs8tjC+2lUt7E/zz42+8BXW8dsRxfdyjkjoc9yiT8hOnjViuzJvJA4gI31lZ6HlMF/WrsFRTnfqJWS+q6VhwVwOvJDlzeAeCOYw6mg9a0E8/L956b1n1GCfJdzm773lrfvxmslimmmhXqJM4z/2qUpSd5XBYsj8ZHAXFJfpW78mSZL60ubWYH0/eQSd5L/HFlniYXOM/u4iTw+xoKhrTg0vp2CQ2njfHi2IR6fBpTHLYZlQCxf0EhbUg6c+bJRLgVKLftJCkppfHPGY51IaxAI01k3p3GPN7sE66boLnuiNV9D4uvBQX5g12N5+76NMiMLHCrTX6plGl10jhwrFM50mpNkBjU7So7lhL9Lo6Qq1Ih1smvHHgnbCo/bFbmE7z2pgRz9+uEr+/dXRg2uhsA5Bb1tENugcS5OujZfuIRY9dgvQ8p+LhuW0TgHYh+CFflvbcm2iy+diYfn28d8/evSoR23LEwui8VwPSmJxZrH3+O5yWoAlx2PSFcif71OQhAbim7cPDJ/ovJDRAt8f0iU1ib8ZDbPv5QguwWv3ykKS+m/8GpmTgqwQ/FxmJN7C+S3AIHNSzBDsrjNCLD75LUA9qwaJxS41I1ksQD1jUpQF2PXzigXRMBGK+y/OzdTRwVdKYXR/MlkAPYiiyHEc34dIkzXDME3TMGRZNuKvqZBf/R602+3OlYea0YKKEGxCa89wGYbhgFCn/Loi/vFgAHZr0F6p+cTiCTpd0nlvzjzUbHfXZ+htk6d6WRbxjblJ2quTRxkW+04nGQ81yy3+WRr7D2+S03R/rJRiEeeEEp/qXWrBP0nIgdWx+6Qer6rKcRXIkcZpH6fdxc+mDAmSk8Q6rZH2opRYJHPSVKVVhv4iF8jeFTuo3fVr1uljDtCc1NTt5qdXUjb2vKtqf7Mr1yH2+OQbbFVUVFRUVFT8X/gDzbVgapDpQWcAAAAASUVORK5CYII=" alt="image">
    <h4 class=""><a href="#">Update Customer</a></h4>
  </div>
  
  <div class="col-12 col-md-6 ">
      <img height="300px"  width="400px" src="https://visualpharm.com/assets/808/Add%20Administrator-595b40b75ba036ed117d5316.svg" alt="image">
    <h4 class=""><a href="#">Add admin</a></h4>
  </div>
</div>
<div class="row text-center pt-4">
  <div class="col-12 col-md-6 ">
  <h4 class=""><a href="#">Booking details</a></h4>
  </div>
  
  <div class="col-12 col-md-6 ">
  <h4 class=""><a href="#">Products Details</a></h4>
  </div>
</div>
  <div class="row text-center pt-4">
  <div class="col-12 col-md-6 ">
  <h4 class=""><a href="transaction.jsp">payement details</a></h4>
  </div>
  
  <div class="col-12 col-md-6 ">
  <h4 class=""><a href="#">Quries of Customers</a></h4>
  </div>
</div>
</div>

</div>


              </body>
</html>