
<%@ page import="java.util.Date" %>
<%@page import="java.sql.*"%>
<!DOCTYPE html>
<html>
<head>
  <title>Enter details</title>
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
  <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
</head>
<body>
  
<div style="margin-top: 80px;">
<div class="container ">
  <h2>Enter card details</h2>
  <form  method="POST">
    <div class="form-group" >
      <div class="form-group">
        <label for="paymentMethod">Payment Method:</label>
        <select class="form-control" id="paymentMethod">
          <option value="paytm">Rupey</option>
            <option value="phonepe">Visa</option>
            <option value="googlepay">Master card</option>
            <option value="amazon">other</option>
            <!-- Add more payment options here -->
        </select>
      <label for="cardNumber">Card Number</label>
      <input type="text" class="form-control" id="cardNumber" name="cardno" placeholder="Enter card number" required>
    </div>
    <div class="form-group">
      <label for="expiryDate">Expiry Date</label>
      <input type="date" class="form-control" id="expiryDate" name="expida" placeholder="MM/YY" required>
    </div>
    <div class="form-group">
      <label for="cvv">CVV</label>
      <input type="number" class="form-control" id="cvv"  name="cvv" placeholder="CVV" required>
    </div>
    <div class="form-group">
      <label for="name">Cardholder Name</label>
      <input type="text" class="form-control" id="name" name="name" placeholder="Enter cardholder name"  required>
    </div>
    <div class="form-group">
      <label for="name">total money</label>
      
      <% String use=(String)session.getAttribute("mobname2"); 
       int nof=Integer.parseInt((String)session.getAttribute("nof")); 
       %>
      <input type="text" class="form-control" id="name" name="name" value="<%=(Integer.parseInt(use)*1.16*nof)%>" readonly>
    </div>
    <button type="submit" class="btn btn-primary">Submit</button>
  </form>
</div>
</div>
<%

  if (request.getMethod().equals("POST")) {
      String cardno = request.getParameter("cardno");
       String expida  = request.getParameter("expida");
      String cvv = request.getParameter("cvv");
      String name = request.getParameter("name");
    try
        {
            Class.forName("oracle.jdbc.driver.OracleDriver");
            Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","2003");
            String str = "insert into payement values(?,?,?,?,?)";
            PreparedStatement st = con.prepareStatement(str);
            String user=(String)session.getAttribute("user");            
            //out.println(expida);
            st.setString(1,user);
            st.setString(2,name);
            st.setString(3,cvv);
            st.setString(4,cardno);
            st.setDate(5,java.sql.Date.valueOf(expida));
            
            Date currentDate = new Date(); 
            Date date1 = java.sql.Date.valueOf(expida)  ; 
             int a=currentDate.compareTo(date1);
            if(a < 0){
                st.executeQuery();
               response.sendRedirect("pay.jsp");
            }
            else{
                out.println("<script> alert('card date was expired please ensure right card')</script>");

            } 
        }
        catch(Exception e)
        {
            System.out.println(e);
        }
    } 
%>
</body>
</html>
