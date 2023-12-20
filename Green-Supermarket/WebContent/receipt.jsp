

<%@ page import="com.green.service.impl.*, com.green.service.*,com.green.beans.*,java.util.*,jakarta.servlet.ServletOutputStream,java.io.*"%>
<%@ page import="net.codejava.* "%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Payment Receipt</title>
<style type="text/css">
    table { border: 0; }
    table td { padding: 5px; }
</style>
</head>
<body>
<div align="center">
    <h1>Payment Done. Thank you for purchasing our products</h1>
    <br/>
    <% String total = request.getParameter("total"); 
    String shipping = request.getParameter("shipping");
    String tax = request.getParameter("tax");
    String subtotal = request.getParameter("subtotal");
    String orderId = request.getParameter("orderId");
    
    %>
    
    <h2>Receipt Details:</h2>
    <table>
        <tr>
            <td><b>Merchant:</b></td>
            <td>Green Supermarket</td>
        </tr>
        <tr>
            <td><b>Order Id:</b></td>
            <td><%=orderId %></td>
        </tr>
        <tr>
            <td><b>Payer:</b></td>
            <td>${payer.firstName} ${payer.lastName}</td>      
        </tr>
        <tr>
            <td><b>Description:</b></td>
            <td>${transaction.description}</td>
        </tr>
        <tr>
            <td><b>Subtotal:</b></td>
            <td><%=subtotal%> USD</td>
        </tr>
        <tr>
            <td><b>Shipping:</b></td>
            <td><%=shipping%> USD</td>
        </tr>
        <tr>
            <td><b>Tax:</b></td>
            <td><%=tax%> USD</td>
        </tr>
        <tr>
            <td><b>Total:</b></td>
            <td><%=total%> USD</td>
        </tr> 
                        
    </table>
    <form action="./OrderServlet" method="post">
      <button type ="submit" name="submit" value="Track Order">Track Order</button>
      </form>
</div>
</body>
</html>