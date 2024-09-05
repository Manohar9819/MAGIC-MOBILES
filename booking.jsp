<%@ page import="java.util.Date" %>
<%@page import="java.sql.*"%>
<!DOCTYPE html>
<html>
<head>
  <title>Booking Form</title>
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css"/>
</head>
<body>
  <div class="container ">
    <h1>Booking Form</h1>
    <form  method="POST" >
      <div class="form-group">
        <label for="name">Name</label>
        <input type="text" class="form-control" id="name" name="name" placeholder="Enter your name" required>
      </div>
      <div class="form-group">
        <label for="email">Email</label>
        <% String s1=(String)session.getAttribute("user"); %>
        <input type="email" class="form-control" name="email" value="<%=s1%>" readonly>
      </div>
      <div class="form-group">
        <label for="Phone">Phone</label>
        <input type="number" class="form-control" max="999999999999" min="6000000000" id="Phone" name="phn" placeholder="Enter your phone number" required>
      </div>
      <div class="form-group">
        <label for="zip">Zip code</label>
        <input type="number" class="form-control" id="zip" name="zip" placeholder="enter zip number" required>
      </div>
      <div class="form-group">
        <label for="drop">Payment mode</label><br>
        <select id="drop" name="opt" class="form-control" >
            <option value="payed with upi" checked>pay with upi</option>
            <option value="credit card">credit / debit card</option>
            <option value="other apps">other apps</option>
          </select>
      </div>
      <div class="form-group">
        <label for="email">No of products</label>
        <input type="number" max="5" min="1" class="form-control" value="1" name="nof" placeholder="no of products" required>
      </div>
      <div class="form-group">
        <label for="message">Address</label>
        <textarea class="form-control" id="message" name="address" rows="3" placeholder="Enter your message" required></textarea>
      </div>
      <button  type="submit" class="btn btn-primary">Book no</button>
    </form> 
  </div>
  <%
  if (request.getMethod().equals("POST")) {
      String name = request.getParameter("name");
      String phn = request.getParameter("phn");
      String zip = request.getParameter("zip");
      String nof = request.getParameter("nof");
      String opt = request.getParameter("opt");
      String address = request.getParameter("address");
      session.setAttribute("nof",nof);
      session.setAttribute("type",opt);
      session.setAttribute("address",address);
    try
        {
            Class.forName("oracle.jdbc.driver.OracleDriver");
            Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","2003");
            String str = "insert into booking (EMAIL,NAME,PHN,ZIP,ADDRESS,prod,paye) values(?,?,?,?,?,?,?)";
            PreparedStatement st = con.prepareStatement(str);
            String user=(String)session.getAttribute("user");           
            st.setString(1,user);
            st.setString(2,name);
            st.setString(3,phn);
            st.setString(4,zip);
            st.setString(5,address);
            st.setString(6,nof);
            st.setString(7,opt);
            if(opt != null && user!=null ){
                st.executeQuery();
              if(opt.equals("other apps"))
                    response.sendRedirect("otherapps.jsp");
              else if(opt.equals("payed with upi")){
                    response.sendRedirect("upi.jsp");
                }
                else if(opt.equals("credit card")){
                    response.sendRedirect("payment.jsp");
                }
             } 
             else{
              out.println("<script> alert('please login perfectly')</script>");
             }
        }
        catch(Exception e)
        {
            System.out.println(e);
        }
    } 
%>
</html>
