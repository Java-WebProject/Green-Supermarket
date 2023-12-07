<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page
	import="com.green.service.impl.*, com.green.service.*,com.green.beans.*,java.util.*,jakarta.servlet.ServletOutputStream,java.io.*"%>
<!DOCTYPE html>
<html>
<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">

  

    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <link href="https://fonts.googleapis.com/css?family=Droid+Sans:400,700" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/baguettebox.js/1.8.1/baguetteBox.min.css">
    <link rel="stylesheet" href="css/imagegal.css">


</head>
<body>

<div class="cont gallery-cont">
    <h1 style="font-family:'Amaranth',sans-serif;" class="heading">Shop by category</h1>

    

    
    <div class="tz-gallery">

        <div class="rowss">

             <div class="col-sm-12 col-md-4">
                <a class="lightbox" href="">
                    <img src="images/Beauty card.png" alt="Beauty and healthcare">
                </a>
            </div>

            <div class="col-sm-6 col-md-4">
                <a class="lightbox" href="Drinks.jsp">
                    <img src="images/Beverage card.png" alt="beverage">
                </a>
            </div>
            <div class="col-sm-6 col-md-4">
                <a class="lightbox" href="">
                    <img src="images/frozen and meats.png" alt="frozen mand meats">
                </a>
            </div>
            <div class="col-sm-12 col-md-8">
                <a class="lightbox" href="../images/Vegerable card.png">
                    <img src="images/Vegerable card.png" alt="organic fruits and vege">
                </a>
            </div>
            <div class="col-sm-6 col-md-4">
                <a class="lightbox" href="https://www.keellssuper.com/product/2/7/78">
                    <img src="images/Biscuit Card.png" alt="biscuit and snacks">
                </a>
            </div> 
            <div class="col-sm-6 col-md-4">
                <a class="lightbox" href="../images/bakery card.png">
                    <img src="images/bakery card.png" alt="bakery">
                </a>
            </div>

        </div>

    </div>

</div>

<script src="https://cdnjs.cloudflare.com/ajax/libs/baguettebox.js/1.8.1/baguetteBox.min.js"></script>

</body>
</html>