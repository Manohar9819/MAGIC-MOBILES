<%@ page import="java.sql.*" %>
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
                <!-- <a class="nav-link nava active" href="#">,;,;,;,;</a>
                <a class="nav-link nava active" href="#">,;,;,;,;</a> -->
                <!-- <a class="nav-link nava active" href="#">,;,;store rooms,;</a> -->
                <!-- <a class="nav-link nava active" href="#">,;,;,;,;</a> -->
                <a class="nav-link nava active" href="userdetails.jsp"> user details </a>
                <a class="nav-link nava active" href="transaction.jsp">Transaction</a>
                <a class="nav-link nava active" href="Contactus2.jsp">CONTACT US</a>
                <a class="nav-link nava active" href="accesseries2.jsp">Accesseries</a>
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
    
    <div class="pt-5">
        <h1 class="text-center pt-2">Payement Details</h1>
	<table class="container text-dark  table-striped   text-center  table-bordered" >
		<tr class="bg-dark p-3 text-white lead w-100" style="height: 60px;" >
			<th>Name</th>
            <th>Email</th>
			<th>password</th>
			<th>TransactionId</th>
			<th>Address</th>
            <!-- <th>actions</th> -->
		</tr>
        <%
			try{
				Class.forName("oracle.jdbc.driver.OracleDriver");
				Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","2003");
				PreparedStatement check_stm=con.prepareStatement("select * from payement ");
				ResultSet rs=check_stm.executeQuery(); 
				while (rs.next()) {
                    String name = rs.getString("EMAIL");
					String email = rs.getString("NAME");
					String pass = rs.getString("CVV");
					String userid = rs.getString("CARDNO");
					String userid1 = rs.getString("EXPDATE");
		%>
					<tr class=" text-dark  w-100" style="height: 45px;">
						<td><%= name %></td>
						<td><%= email %></td>
						<td><%=pass%></td>
						<td><%= userid %></td>
						<td><%= userid1%></td>
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