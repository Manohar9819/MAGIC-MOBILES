<%@page import="java.sql.*"%>
<%
  if (request.getMethod().equals("POST")) {
    String name = request.getParameter("uname");
    String email = request.getParameter("Email");
    String pass = request.getParameter("pass");
    String pass2 = request.getParameter("pass2");
    try
        {
            Class.forName("oracle.jdbc.driver.OracleDriver");
            Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","2003");
            String str = "insert into adminregisters values(?,?,?,adms.NEXTVAL)";
            PreparedStatement st = con.prepareStatement(str);
            st.setString(1,name);
            st.setString(2,email);
            st.setString(3,pass);
            st.executeQuery();
            response.sendRedirect("addadmin.jsp");
        }
        catch(Exception e)
        {
            System.out.println(e);
        }
    } 
%>