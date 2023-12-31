<%@ page import="com.green.service.impl.*, com.green.service.*,com.green.beans.*,java.util.*,jakarta.servlet.ServletOutputStream,java.io.*"%>
<%@ page import="net.codejava.* "%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Payment Receipt</title>
    <style type="text/css">
        body {
            font-family: 'Arial', sans-serif;
            background-color: #f4f4f4;
            background-image: url('images/backgroundreceipt.jpg');
            
            margin: 0;
            padding: 0;
        }

        header {
            background-color: #333;
            color: #fff;
            text-align: center;
            padding: 10px;
        }

        .container {
            max-width: 800px;
            margin: 20px auto;
            background-color: #fff;
            padding: 20px;
            border-radius: 5px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }

        table {
            width: 100%;
            border-collapse: collapse;
            margin-top: 20px;
        }

        table, th, td {
            border: 1px solid #ddd;
        }

        th, td {
            padding: 12px;
            text-align: left;
        }

        th {
            background-color: #333;
            color: #fff;
        }

        h2 {
            color: #333;
        }
        h1{
        color:#fff;
        }

        button {
            background-color: #4caf50;
            color: #fff;
            padding: 10px 15px;
            font-size: 16px;
            border: none;
            border-radius: 5px;
            cursor: pointer;
        }

        button:hover {
            background-color: #45a049;
        }
    </style>
</head>
<body>
    <header>
        <h1>Payment Done! Thank you for purchasing our products!</h1>
    </header>

    <div class="container">
        <% String total = request.getParameter("total"); 
           String shipping = request.getParameter("shipping");
           String tax = request.getParameter("tax");
           String subtotal = request.getParameter("subtotal");
           String orderId = request.getParameter("orderId");
        %>

        <h2>Receipt Details:</h2>
        <table>
            <tr>
                <th>Merchant</th>
                <td>Green Supermarket</td>
            </tr>
         
            <tr>
                <th>Subtotal</th>
                <td><%=subtotal%> USD</td>
            </tr>
            <tr>
                <th>Shipping</th>
                <td><%=shipping%> USD</td>
            </tr>
            <tr>
                <th>Tax</th>
                <td><%=tax%> USD</td>
            </tr>
            <tr>
                <th>Total</th>
                <td><%=total%> USD</td>
            </tr>
        </table>

        <form action="./OrderServlet" method="post">
            <button type="submit" name="submit" value="Track Order">Track Order</button>
        </form>
    </div>
</body>
</html>