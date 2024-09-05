<%@ page import="java.util.Date" %>
<%@page import="java.sql.*"%>
<!DOCTYPE html>
<html>
<head>
  <title>Booking Form</title>
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
  <style>
    
  </style>
</head>
<body>
    <div class="container">
        <h1>UPI Transaction        </h1>
        <form  method="POST" onclick="upi.jsp">
          <div class="form-group">
            <label for="name">Name</label>
            <input type="text" class="form-control" id="name" name="name" placeholder="Enter your name" required>
          </div>
          <div class="form-group">
            <label for="email">Email</label>
            <%
             int s1=Integer.parseInt((String)session.getAttribute("mobname2")); 
             int nof=Integer.parseInt((String)session.getAttribute("nof")); 
            %>
            <input type="email" class="form-control" name="email" value="<%=s1*nof%>" readonly>
          </div>
          <div class="form-group">
            <label for="Phone">UPI Number</label>
            <input type="number" class="form-control" max="999999" min="100000" id="Phone" name="phn" placeholder="Enter your phone number" required>
          </div>
          <button  type="submit" class="btn btn-primary">Pay now</button>
          </form>
          </div>
</body>
<%
if (request.getMethod().equals("POST")) {
    response.sendRedirect("done1.jsp");
}
    %>
</html>