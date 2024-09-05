<%@ page import="java.sql.*" %>
<%@ page import="java.io.*" %>
<%
try
    {

        String s2=(String)session.getAttribute("mobname");
        String s1=(String)session.getAttribute("user");
        String s3=(String)session.getAttribute("mobimge");
        Class.forName("oracle.jdbc.driver.OracleDriver");
        Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","2003");
        String str2="select email,product_name from card where product_name=? and email=? " ; 
        PreparedStatement st1 = con.prepareStatement(str2);
        st1.setString(1,s2);
        st1.setString(2,s1);
        ResultSet rs = st1.executeQuery();
        if(rs.next())
        {
            String str3="DELETE FROM card WHERE email=? and product_name=? ";
            PreparedStatement st3 = con.prepareStatement(str3);
            st3.setString(1,s1);
            st3.setString(2,s2);
            st3.executeQuery();
            response.sendRedirect("upcomingmobiles2.jsp");
        }
        else{
            String str = "insert into card values(?,?,?)";
            PreparedStatement st = con.prepareStatement(str);
            byte[] bytes = s3.getBytes();
            ByteArrayInputStream inputStream = new ByteArrayInputStream(bytes);
            st.setString(1,s1);
            st.setString(2,s2);
            st.setBinaryStream(3, inputStream, bytes.length);
            st.executeQuery();
            response.sendRedirect("upcomingmobiles2.jsp");
    }
    st1.close();
        con.close();
}
    catch(Exception e)
    {
        System.out.println(e);
    }
%>