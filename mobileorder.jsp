<%

        String name = request.getParameter("name4");
        String name2 = request.getParameter("name3");
  
        if(name != null && name2 != null)
        {
          session.setAttribute("mobname",name);
          session.setAttribute("mobname2",name2);
          //out.println(name2);
          name=null;
          name2=null;
            response.sendRedirect("booking.jsp");
        }
       
      %>