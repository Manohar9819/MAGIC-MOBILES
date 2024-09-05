<%@ page import="java.text.SimpleDateFormat"%>
<%@ page import="java.util.Date"%>
<%@ page import="java.time.LocalDate" %>
<%@ page import="java.sql.*"%>


<!DOCTYPE html>
<html lang = "en">
   <head>
      <meta charset = "utf-8">
      <meta name = "viewport" content = "width = device-width, initial-scale = 1, shrink-to-fit = no">
      <link rel = "stylesheet" 
         href = "https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" 
         integrity = "sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" 
         crossorigin = "anonymous">
      <script src = "https://code.jquery.com/jquery-3.3.1.slim.min.js" 
      integrity = "sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" 
      crossorigin = "anonymous">
   </script>
   
   <script src = "https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" 
      integrity = "sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" 
      crossorigin = "anonymous">
   </script>
   
   <script src = "https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" 
      integrity = "sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" 
      crossorigin = "anonymous">
   </script>
      <title>Pay</title>
   </head>
   
   <body>
    <%
        
        Date c2=new Date();
        String email=(String) session.getAttribute("user");
        String payment_type=(String)session.getAttribute("type");
        String no_of_books=(String)session.getAttribute("nof");
        
        String cost=(String)session.getAttribute("mobname2");
        String product=(String)session.getAttribute("mobname");
    %>
      <div class = "container">
         <h2>CONFIRMATION</h2>
         
         <form action="pay.jsp" method="POST">
            
                <div class = "form-group ">
                   <label for = "email">Email</label>
                   <input type = "email" class = "form-control" id="email"   value="<%=email%>" readonly required/>
                </div>
                <div class = "form-group ">
                   <label for = "text">payement  Type</label>
                  <input type = "text" class = "form-control" id="room-type" value="<%=payment_type%>" readonly required/>
               </div>
               <div class = "form-group ">
                   <label for = "check_out">no of books</label>
                   <input type = "text" class = "form-control" id = "check_out" value="<%=no_of_books%>"" readonly required/>
               </div>
               <div class = "form-group ">
                   <label for = "product">Product</label>
                   <input type = "text" class = "form-control" id = "product" value="<%=product%>"" readonly required/>
               </div>
           
               <div class="form-group">
                <label for="name">total money</label>
                
                <% String use=(String)session.getAttribute("mobname2"); 
                 int nof=Integer.parseInt((String)session.getAttribute("mobname2")); 
                 %>
                <input type="text" class="form-control" id="name" name="name" value="<%=(Integer.parseInt(use)*1.16*nof)%>" readonly>
              </div>
               <div class="form-group">
                <label for="message">feedback</label>
                <textarea class="form-control" id="message" name="feedback" rows="3" placeholder="Enter your message" required></textarea>
              </div>
            <button type = "submit" class = "btn btn-primary">Pay</button>
         </form>
      </div>
      <%
  if (request.getMethod().equals("POST")) {
      
      String feedback = request.getParameter("feedback");
    try
        {
            Class.forName("oracle.jdbc.driver.OracleDriver");
            Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","2003");
            String str = "insert into payee values(?,?,?,?,?,?)";
            PreparedStatement st = con.prepareStatement(str);
            //String user=(String)session.getAttribute("user");
            float cos= (float)(Integer.parseInt(use)*1.16*nof);        
            //out.println();
            st.setString(1,email);
            st.setString(2,payment_type);
            st.setString(3,no_of_books);
            st.setString(4,feedback);
            st.setFloat(5,cos);
            st.setString(6,product);
            st.executeQuery();
            response.sendRedirect("done1.jsp");
        }
        catch(Exception e)
        {
            System.out.println(e);
        }
    } 
%>
      
   </body>
</html>