<%@page import="java.sql.*"%>
<%@ page import="java.util.*" %>
<%@ page import="java.io.*" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Mobile Market</title>
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
        <!-- <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css"> -->
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
</head>
<body style=" background-color: rgb(218, 249, 207);">
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
                <!-- <a class="nav-link disabled" href="#" tabindex="-1" aria-disabled="true">Disabled</a> -->
            </div>
        </div>
    </nav>
                
    <div class="container" >
        <br>
        <h2 class="pt-5 text-dark d-flex flex-row justify-content-center"> Upcoming Phones to Be Excited About in 2023 </h2>
        
<div class="pt-2">
<p >As we kick off 2023, it’s a good time to reflect on the past year
     and see how the world of technology has progressed. In the U.S., 
     consumers were forecasted to spend nearly $75 billion on smartphones in 2022. 
     Apple and Samsung phones were the leaders in the U.S. market this last year, with a combinedmarket share of almost 70%.
    </p><p>
    This past year was certainly a busy one for smartphones, with the new release of the iPhone 14 
    and the Galaxy Z Flip 4 — both popular devices. If you kept up with the newest releases in 2022,
     you’ll likely want to stay on top of new upcoming phones in 2023. If you’re on the hunt for a 
     new cell phone, we’ve compiled a list of some confirmed and rumored new phone releases that you 
     can keep your eyes peeled for.</p>
     <h2>The Best Upcoming Smartphones Releases In 2023</h2>
     <p>As a tech enthusiast or consumer excited about new phones to be released, this list will certainly pique your interest. Here are the new smartphones coming out in 2023.</p>
     <h3>1. Samsung Galaxy A54 5G </h3>
     <% 
            
            Class.forName("oracle.jdbc.driver.OracleDriver");
            Connection con1 = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","2003");
            String str2="select email,product_name from card where product_name=? and email=? " ; 
            PreparedStatement st1 = con1.prepareStatement(str2);
            st1.setString(1,"Samsung Galaxy A54 5G");
            st1.setString(2,s1);
            ResultSet rs = st1.executeQuery();
            String s;
            if(rs.next()){
                s="alerted";
            }
            else{
               s="Set as alert";
            }
            String str3="select email,product_name from card where product_name=? and email=? " ; 
            PreparedStatement st2 = con1.prepareStatement(str3);
            st2.setString(1,"Google Pixel Fold");
            st2.setString(2,s1);
            ResultSet rs1 = st2.executeQuery();
            String s2;
            if(rs1.next()){
                s2="alerted";
            }
            else{
               s2 ="Set as alert";
            }
            String str4="select email,product_name from card where product_name=? and email=? " ; 
            PreparedStatement st3 = con1.prepareStatement(str4);
            st3.setString(1,"Samsung Galaxy S23 Range");
            st3.setString(2,s1);
            ResultSet rs4 = st3.executeQuery();
            String s4;
            if(rs4.next()){
                s4="alerted";
            }
            else{
               s4 ="Set as alert";
            }
            String str5="select email,product_name from card where product_name=? and email=? " ; 
            PreparedStatement st4 = con1.prepareStatement(str5);
            st4.setString(1,"Samsung Galaxy Z Fold 5");
            st4.setString(2,s1);
            ResultSet rs5 = st4.executeQuery();
            String s5;
            if(rs5.next()){
                s5="alerted";
            }
            else{
               s5 ="Set as alert";
            }

    %>
     <img src="https://cdn.dnaindia.com/sites/default/files/styles/full/public/2020/08/10/918562-samsung-galaxy-note-20.jpg" width="100%" height="400vh">
     <a href="#" onclick="alertfun('Samsung Galaxy A54 5G','https://cdn.dnaindia.com/sites/default/files/styles/full/public/2020/08/10/918562-samsung-galaxy-note-20.jpg')" class="btn btn-warning mt-3 pl-5 pr-5">
         <%=s%></a><br><br>
     <p>While the Samsung Galaxy S phones are quite popular, the Galaxy A series is ideal for those who have a bit of a tighter budget. One of the highly anticipated upcoming Samsung phones is the Galaxy A54 5G, following the A53 that was released in 2022. The A54 5G is expected to have moderate improvements over its predecessor.
        </p><p>
        Though it’s predicted to come with a 6.4-inch screen, which is slightly smaller than the A53’s 6.5-inch screen, it’s rumored to have a slightly larger battery and a triple rear camera. Though the screen is a hair shorter, this smartphone may have a wider and thicker build, although the materials used to craft this device have not been confirmed.
        </p><p>        As suggested in the name, the Galaxy A54 5G is also expected to come with 5G connectivity to increase the speed and responsiveness of the device. In addition, this smartphone may come with an improved chipset that boosts processing speed and overall performance. Though this chipset is ideal for efficiency, it may have some limitations that may not be a strong fit for multitaskers. However, the price point of the Galaxy </p>
        <h3>2. Google Pixel Fold </h3>
        <img src="https://m.media-amazon.com/images/I/61d6OnWpttL._SX679_.jpg" width="100%" height="500vh">
        <a href="#" onclick="alertfun('Google Pixel Fold','https://m.media-amazon.com/images/I/61d6OnWpttL._SX679_.jpg')" class="btn btn-warning mt-3 pl-5 pr-5">
            <%=s2%>    </a><br><br>

        <p>Because Google already makes foldable phones for Android, such as the Galaxy Z Fold 4, some believe it doesn’t need to make its own version of this device. However, a foldable Pixel phone would create interesting competition between the two tech giants. There is much speculation surrounding the potential Pixel Fold, which could likely launch around May 2023 with the new Pixel Tablet. May is also the month that Google revealed its Pixel 6a and Pixel 7 phones, so this release date would be fitting.
</p><p>
            Rumors have been swirling for years around Google’s attempt at a bendable device — even the Pixel 6 was expected to fold — so there’s no telling whether these designs have been scrapped or simply postponed until 2023. Though this device is commonly referred to as the Pixel Fold, some industry experts claim it could be called the Pixel Notepad. As for cost, rumors suggest this smartphone could be priced less than or equal to the Galaxy Z Fold series, ranging from $,1400 to $1,700.
            </p><p>
            Most predictions also point out that the foldable Google phone will likely cost much more than the Pixel 7 smartphone range. If the predictions are true, consumers can expect a premium, sleek design that mirrors the Android experience and folding setup. Users may also benefit from a triple camera, a large power button and a 7.6-inch OLED screen.</p>
            <h3>3. Samsung Galaxy S23 Range</h3>
        <img src="https://m.media-amazon.com/images/I/61VfL-aiToL._SX679_.jpg" width="100%" height="500vh">
        <a href="#" onclick="alertfun('Samsung Galaxy S23 Range','https://m.media-amazon.com/images/I/61VfL-aiToL._SX679_.jpg')" class="btn btn-warning mt-3 pl-5 pr-5">
            <%=s4%></a><br><br>
        <p>The information swirling online about Samsung’s next flagship is based on rumors, but many expect these devices to come with significant hardware improvements while maintaining a similar visual aesthetic. Potentially, the Galaxy S23, Galaxy S23 Plus and Galaxy S23 Ultra may come with faster charging, a pixel-packed main camera and an improved front-facing camera. Some bet that the release date for these devices could be around January or February 2023, which could make them the earliest new smartphones coming soon.

            These new mobile phones may be priced higher than the Galaxy S22 range due to larger screens, more internal storage and the elimination of the battery drainage issues the predecessors have experienced. These devices are also predicted to have 12 GB of random-access memory (RAM) so users can quickly switch between apps without pauses or delays. These Galaxy models may also be supported by 5G connectivity.</p>
            <h3>4. Samsung Galaxy Z Fold 5</h3>
            <img src="https://m.media-amazon.com/images/I/418KmWHA2oL._SX300_SY300_QL70_FMwebp_.jpg" width="100%" height="500vh">
        <a href="#" name="Samsung Galaxy Z Fold 5" onclick="alertfun('Samsung Galaxy Z Fold 5','https://m.media-amazon.com/images/I/418KmWHA2oL._SX300_SY300_QL70_FMwebp_.jpg')" action="upcomingmobiles2.jsp" class="btn btn-warning mt-3 pl-5 pr-5" >
            
            <%=s5%></a><br><br>
        <p>The Galaxy Z Fold is one of the most anticipated upcoming phones of Samsung for 2023. It’s arguably the best folding phone Samsung has ever released, which is why many are excited about the fifth generation of the Z Fold — the new Galaxy Z Fold 5. Though there are very few rumors surrounding this device, it’s expected to have a built-in pen for drawing and doodling, faster charging, a slim build and a larger unfolded display. Right now, it’s only a guess if this phone-tablet hybrid will be released in 2023. Since the last two generations were both released in the month of August, consumers can keep an eye out during that time.</p>

        <p>This upcoming phone is predicted to come with an improved camera and processor. Users may even be able to use the bottom portion of the device’s screen as a mini trackpad when the phone is folded halfway. Finally, rumors suggest that the cell phone will provide better heat management to ensure the device doesn’t heat up as much with heavy use. Since the previous models have maintained the same price, it’s unlikely that the Galaxy Z Fold 5 will be offered at a reduced cost.</p>
        </div></div>
        
        <script>
            function alertfun(name){
                var name=name;
                // var url=url;
                window.location.replace("upcomingmobiles2.jsp?name="+name);
                //var name1 = request.getParameter("name");
                //alert(name1);
            }
        </script>
        <%
        
            String name = request.getParameter("name");
            if(name != null)
            {
                session.setAttribute("mobname",name);
                session.setAttribute("mobimge",name);
                response.sendRedirect("setalert.jsp");
            }
      %>
       
</body>
</html>