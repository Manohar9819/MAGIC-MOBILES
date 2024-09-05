
<%@ page import="java.util.Date" %>
<%@page import="java.sql.*"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Payment Successful</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css">
    <link rel="stylesheet" href="style.css">
    
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css" integrity="sha512-gWz5rG4H7oVf/3eymKf+mfUm3PFkIwlC/9douSbpljDzgqh0vvl1DPhgIwHI5/JoVGQGfj5ktK8YvA17NpF4lw==" crossorigin="anonymous" referrerpolicy="no-referrer" />
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/css/bootstrap.min.css" integrity="sha384-+RK/bjfd5GAiIwGJCiz7H9LbKPyJhzLwr4Iu7FpNngwQCL6FjNIBzOfoB7uKF7a" crossorigin="anonymous">
    <style>
     
    /* Global styles */
body {
    font-family: "Helvetica Neue", sans-serif;
    font-size: 16px;
    line-height: 1.5;
    color: #333;
  }
  
  /* Header */
  .success-heading {
    margin-top: 1rem;
    font-size: 3rem;
    font-weight: bold;
    text-align: center;
  }
  
  /* Success icon */
  .success-icon {
    display: block;
    margin: 2rem auto;
    color: #3cba54;
    animation: zoom-in 0.5s ease-in-out;
  }
  
  /* Success message */
  .success-message {
    margin: 1rem auto 3rem auto;
    font-size: 1.2rem;
    text-align: center;
  }
  
  /* Table */
  table {
    width: 100%;
    max-width: 100%;
    margin-bottom: 1rem;
    background-color: transparent;
    font-size: 1rem;
    border-collapse: collapse;
  }
  
  th,
  td {
    padding: 0.75rem;
    vertical-align: top;
    border-top: 1px solid #dee2e6;
  }
  
  thead th {
    vertical-align: bottom;
    border-bottom: 2px solid #dee2e6;
  }
  
  /* Button */
  .success-btn {
    display: block;
    margin: 2rem auto 1rem auto;
    border-radius: 50px;
    font-weight: bold;
    text-transform: uppercase;
    background-color: #3cba54;
    border-color: #3cba54;
    animation: slide-up 0.5s ease-in-out;
  }
  
  .success-btn:hover {
    background-color: #2c8a3e;
    border-color: #2c8a3e;
  }
  
  /* Animations */
  @keyframes slide-up {
    0% {
      transform: translateY(100%);
      opacity: 0;
    }
    100% {
      transform: translateY(0);
      opacity: 1;
    }
  }
  
  @keyframes zoom-in {
    0% {
      transform: scale(0);
      opacity: 0;
    }
    100% {
      transform: scale(1);
      opacity: 1;
    }
  }
  
        @media print {
            /* Styles for print */
            /* Hide unnecessary elements */
            a,button {
                visibility: hidden;
            }
            .printable-content {
                visibility: visible;
            }
        }
    
  
    </style>
<% 
    String pro=(String)session.getAttribute("mobname");
    String user=(String)session.getAttribute("user");
    String opt=(String)session.getAttribute("type");
    String address=(String)session.getAttribute("address");
    int cost=Integer.parseInt((String)session.getAttribute("mobname2"));
    int nof=Integer.parseInt((String)session.getAttribute("nof"));
    float tot=(float)(cost*nof);
  float tax=0;
  if(opt.equals("credit card")){
    tax=(float)(cost*nof*0.16);
    tot=(float)(cost*nof*1.16);
  }
    try
    {
        Class.forName("oracle.jdbc.driver.OracleDriver");
        Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","2003");
        String str = "insert into recipt values(?,?,?,?,?,num.nextval)";
        PreparedStatement st = con.prepareStatement(str);
        //String user=(String)session.getAttribute("user");            
        //out.println(expida);
        st.setString(1,user);
        st.setString(2,pro);
        st.setInt(3,nof);
        st.setFloat(4,tot);
        st.setString(5,address);
        st.executeQuery();   
    }
    catch(Exception e)
    {
        System.out.println(e);
    }
    %>
</head>
<body>
        <body>
          <%
  response.setHeader("Cache-Control","no-cache,no-store,must-revalidate");
    response.setHeader("Pragma","no-cache");
    response.setHeader("Expires","0");
    
    %>
          <div class="container-fluid success-container">
              <div class="row">
                  <div class="col-md-8 offset-md-2">
                      <div class="success-box">
                          <i class="fas fa-check fa-5x success-icon"></i>
                          <h1 class="success-heading">Payment Successful!</h1>
                          <p class="success-message">Thank you for your purchase. We have received your payment and your order will be processed shortly.</p>
                          <div class="row">
                              <div class="col-md-6">
                                  <div class="success-details">
                                      <h4>Order Summary:</h4>
                                      <table class="table">
                                          <tbody>
                                              <tr>
                                                  
      
                                            <td>Email:</td>
                                            <td><%=user%></td>
                                        </tr>
                                        <tr>
                                          <td>Product:</td>
                                          <td><%=pro%></td>
                                        </tr>
                                        <tr>
                                            <td>Type of payement:</td>
                                            <td><%=opt%></td>
                                        </tr>
                                        <tr>
                                            <td>No of products:</td>
                                            <td><%=nof%></td>
                                        </tr>
                                        <tr>
                                            <td>Price:</td>
                                            <td>&#8377;<%=cost*nof%></td>
                                        </tr>
                                        <tr>
                                            <td>Tax:</td>
                                            <td>&#8377;<%=(float)(tax)%></td>
                                        </tr>
                                        <tr>
                                            <td>Total:</td>
                                            <td>&#8377;<%=(float)(tot)%></td>
                                        </tr>
                                        <tr>
                                            <td>address:</td>
                                            <td><%=address%></td>
                                        </tr>
                                    
                                </table>
                                <button class="btn btn-primary" onclick="pri()" >  print</button>
                            </div>
                        </div>
                    </div>

                    <a href="inde2.jsp" class="btn btn-primary btn-lg success-btn">Continue Shopping</a>
                </div>
            </div>
        </div>
    </div>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/js/all.min.js"></script>
    <script >
        function pri(){
            document.body.classList.add('print');

// Print the page
  window.print();

// Reset the styles after printing
document.body.classList.remove('print');
            
        }
    </script>
</body>
</html>