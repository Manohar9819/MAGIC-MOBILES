<%@page import="java.sql.*"%>
<%
  if (request.getMethod().equals("POST")) {
    String email = request.getParameter("email");
    String pass = request.getParameter("pass");
    try
        {
            Class.forName("oracle.jdbc.driver.OracleDriver");
            Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","2003");
            String str = "select * from regiters where email=? and pass=?";
            PreparedStatement st = con.prepareStatement(str);
            st.setString(1,email);
            st.setString(2,pass);
            ResultSet rs = st.executeQuery();
            if(rs.next())
            {%>
                <% session.setAttribute("user",email); %><%
                response.sendRedirect("inde2.jsp");
            }
            else{%>
                <div style="text-align:center;">
                    <%out.println("invalid cradintials!!");%>
                </div>

                <jsp:include page="regiter.html"/>
                <%
            }

        }
        catch(Exception e)
        {
           System.out.println(e);
        }
    } 
%>