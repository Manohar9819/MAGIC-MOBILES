<%@ page import="java.sql.*" %>
<%@ page import="java.io.*" %>
<%@ page import="javax.sql.*" %>
<html>
<head>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title></title>
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
	<title>User Details</title>
    
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
                <a class="nav-link nava active" href="userprofile.jsp">

                    <!-- <a class="nav-link nava active " onclick="login()" href="#"> -->
                        <% 
                        String s1=(String)session.getAttribute("user");
                        out.println(s1); %> 
                    </a>
                <a  onclick="reg()" class="nav-link nava active" href="logut.jsp"> 
                    <% out.println("Logut"); %></a> 
            </div>
        </div>
    </nav>
                
    
    <div class="pt-5">
        <h1 class="text-center pt-2">Your added to alert details </h1>
	<table class="container text-dark  table-striped   text-center  table-bordered" >
		<tr class="bg-dark p-3 text-white lead w-100" style="height: 60px;" >
			<th>Name</th>
            <th>Email</th>
			
            <!-- <th>actions</th> -->
		</tr>
        <%
			try{
				Class.forName("oracle.jdbc.driver.OracleDriver");
				Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","2003");
				PreparedStatement check_stm=con.prepareStatement("select * from card");
				ResultSet rs=check_stm.executeQuery(); 
				while (rs.next()) {
                    String name = rs.getString("PRODUCT_NAME");
					String email = rs.getString("EMAIL");
					String pass = rs.getString("image");
                    request.setAttribute("pass", pass);
					//String userid = rs.getString("USERID");
                    if(email.equals(s1)){%>
					<tr class=" text-dark  w-100" style="height: 45px;">
						<td><%= name %></td>
						<td><%= email %></td>
                    </tr>
						<% }
                    
                   

						
                       
		
				}
				con.close();
			}
			catch(Exception e)
            {
                e.printStackTrace();
            }

        %>
	</table>
    </div>
    
    <div class="pt-5">
        <h1 class="text-center pt-2">add to card details</h1>
	<table class="container text-dark  table-striped   text-center  table-bordered" >
		<tr class="bg-dark p-3 text-white lead w-100" style="height: 60px;" >
			<th>Name</th>
            <th>Email</th>
			
            <!-- <th>actions</th> -->
		</tr>
        <%
			try{
				Class.forName("oracle.jdbc.driver.OracleDriver");
				Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","2003");
				PreparedStatement check_stm=con.prepareStatement("select * from card2");
				ResultSet rs=check_stm.executeQuery(); 
				while (rs.next()) {
                    String name = rs.getString("PRODUCT_NAME");
					String email = rs.getString("EMAIL");
					String pass = rs.getString("image");
                    request.setAttribute("pass", pass);
					//String userid = rs.getString("USERID");
                    if(email.equals(s1)){%>
					<tr class=" text-dark  w-100" style="height: 45px;">
						<td><%= name %></td>
						<td><%= email %></td>
						<% }
                    String base64Image = (String) request.getAttribute("base64Image");
                                  %>

						
                       
					</tr>
		<%
				}
				con.close();
			}
			catch(Exception e)
            {
                e.printStackTrace();
            }

        %>
	</table>
    </div>
    
    <div class="pt-5">
        <h1 class="text-center pt-2">payement history</h1>
	<table class="container text-dark  table-striped   text-center  table-bordered" >
		<tr class="bg-dark p-3 text-white lead w-100" style="height: 60px;" >
			<th>Name</th>
            <th>Email</th>
            <th>no of products</th>
            <th>cost</th>
            <th>address</th>
            <th>Transaction id</th>
			
            <!-- <th>actions</th> -->
		</tr>
        <%
			try{
				Class.forName("oracle.jdbc.driver.OracleDriver");
				Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","2003");
				PreparedStatement check_stm=con.prepareStatement("select * from recipt");
				ResultSet rs=check_stm.executeQuery(); 
				while (rs.next()) {
					String email = rs.getString("EMAIL");
                    String name = rs.getString("PRODUCT");
					String nof = rs.getString("NO_OF_PRODUCT");
					String cost = rs.getString("COST");
					String address = rs.getString("ADDRESS");
					String tid = rs.getString("TRANSACTION_ID");
                    if(email.equals(s1)){%>
					<tr class=" text-dark  w-100" style="height: 45px;">
						<td><%= name %></td>
						<td><%= email %></td>
						<td><%= nof %></td>
						<td><%= cost %></td>
						<td><%= address %></td>
						<td><%= tid %></td>
						<% }
                    
                    %>

						
                       
					</tr>
		<%
				}
				con.close();
			}
			catch(Exception e)
            {
                e.printStackTrace();
            }

        %>
	</table>
    </div>
    
    <div class="pt-5">
        <h1 class="text-center pt-2">Your saved card details</h1>
	<table class="container text-dark  table-striped   text-center  table-bordered" >
		<tr class="bg-dark p-3 text-white lead w-100" style="height: 60px;" >
			<th>Name</th>
            <th>Email</th>
            <th>CVV</th>
            <th>Carf number</th>
            <th>Expiry Date</th>
			
            <!-- <th>actions</th> -->
		</tr>
        <%
			try{
				Class.forName("oracle.jdbc.driver.OracleDriver");
				Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","2003");
				PreparedStatement check_stm=con.prepareStatement("select * from payement ");
				ResultSet rs=check_stm.executeQuery(); 
				while (rs.next()) {
					String email = rs.getString("EMAIL");
                    String name = rs.getString("NAME");
					String nof = rs.getString("CVV");
					String cost = rs.getString("CARDNO");
					String address = rs.getString("EXPDATE");
					//String tid = rs.getString("TRANSACTION_ID");
                    if(email.equals(s1)){%>
					<tr class=" text-dark  w-100" style="height: 45px;">
						<td><%= name %></td>
						<td><%= email %></td>
						<td><%= nof %></td>
						<td><%= cost %></td>
						<td><%= address %></td>
						
						<% }
                    
                    %>

						
                       
					</tr>
		<%
				}
				con.close();
			}
			catch(Exception e)
            {
                e.printStackTrace();
            }

        %>
	</table>
    </div>
    
</body>
</html>