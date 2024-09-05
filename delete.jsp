<%@page import="java.sql.*"%>
<%@page import="java.util.*"%>
<%
  if (request.getMethod().equals("POST")) {
    String del = request.getParameter("del");
    try{
            Class.forName("oracle.jdbc.driver.OracleDriver");
            Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","2003");
            String str = "delete from regiters where USERID=?";
            PreparedStatement st = con.prepareStatement(str);
            st.setString(1,del);
            st.executeUpdate();
            response.sendRedirect("addtocard.jsp");
        }
        catch(Exception e)
        {
            System.out.println(e);
        }
    } 
%>