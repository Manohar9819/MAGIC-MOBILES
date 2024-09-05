<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Payment Form</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css">
    <style>
        body {
            background-color: #f8f9fa;
        }
        
        .container {
            max-width: 500px;
            margin: 0 auto;
            padding: 20px;
            background-color: #fff;
            border-radius: 5px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.2);
        }
        
        .container h1 {
            text-align: center;
            margin-bottom: 30px;
        }
        
        .form-group img {
            display: block;
            margin: 20px auto;
            max-width: 200px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.2);
            border-radius: 5px;
        }
        
        .btn-primary {
            display: block;
            width: 100%;
            text-align: center;
            padding: 10px;
            margin-top: 20px;
            font-size: 16px;
            font-weight: bold;
            border: none;
            border-radius: 5px;
            background-color: #007bff;
            color: #fff;
            box-shadow: 0 0 10px rgba(0, 123, 255, 0.5);
            transition: background-color 0.5s, box-shadow 0.3s;
        }
        
        .btn-primary:hover {
            background-color: #0056b3;
            box-shadow: 0 0 10px rgba(0, 123, 255, 0.8);
        }
    </style>
</head>
<body>
    <div class="container">
        <h1>Payment Form</h1>
        <form action="otherapps.jsp" method="POST">
        <% 
            int s1 = Integer.parseInt((String) session.getAttribute("mobname2"));
            int s2 = Integer.parseInt((String) session.getAttribute("nof"));
            String email = (String) session.getAttribute("user");
        %>
            <div class="form-group">
                <label for="email">Email:</label>
                <input type="email" class="form-control" id="email" value="<%= email %>" readonly>
            </div>
            
            <div class="form-group">
                <label for="amount">Amount:</label>
                <input type="number" class="form-control" id="amount" value="<%= (float) (s2 * s1) %>" readonly>
            </div>
            <div class="form-group">
                <label for="paymentMethod">Payment Method:</label>
                <select class="form-control" id="paymentMethod">
                    <option value="phonepe">PhonePe</option>
                    <option value="googlepay">Google Pay</option>
                    <option value="paytm">Paytm</option>
                    <option value="amazon">Amazon</option>
                    <!-- Add more payment options here -->
                </select>
            </div>
            <div class="form-group">
                <img src="qr.jpg" alt="">
            </div>
            <button type="submit" class="btn btn-primary">Make Payment</button>
        </form>
    </div>
    <%
    if (request.getMethod().equals("POST")) {
        response.sendRedirect("done1.jsp");
    }
%>
</body>
</html>
