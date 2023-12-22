

<%@ page import="com.DAO.FeedbackDAOImpl" %>
<%@ page import="com.DB.DBConnect" %>
<%@ page import="com.entity.FeedbackDtls" %>
<%@ page import="java.util.List" %>
<%@ page import="com.green.service.impl.*, com.green.service.*" %>
<%@ page import="jakarta.servlet.http.HttpSession" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page isELIgnored="false" %>
<html>
<head>
    <title>Feedback</title>
	
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <link rel="stylesheet" href="feedstyle.css">
    <!-- Fontawesome Link for Icons -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.3.0/css/all.min.css">
   


    <link rel="stylesheet" href="css/feed.css" />
    <!-- Fontawesome CDN Link -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.2/css/all.min.css" />

    <style type="text/css">

        #form{
            max-width: 100%;
            display: flow;
        }
        #form .container{
            margin:90px;
        }
        .container .content {
            max-width:100%;
        }


        @media (max-width: 950px) {
            .container{
                padding-bottom:50px ;
            }
        }

        @media (max-width: 800px) {
            .container{
                padding-bottom:790px ;
                margin-left: 20px;
            }
            .left-side,.address,.phone,.email,.details{
                font-size: 50%;

            }
        }
        @media (max-width: 480px) {
            .container{
                padding-bottom:1000px ;
                margin-left: 20px;
            }
        }
        @media (max-width: 350px) {
            .container{
                padding-bottom:1200px ;
                margin-left: 10px;
            }
        }




        /* Import Google font - Poppins */
       
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
            font-family: "Poppins", sans-serif;
        }
        body {
            display: block;
            padding: 0 35px;
            align-items: center;
            justify-content: center;
            justify-items: center;
            min-height: 100vh;
            /*background: linear-gradient(to left top, #031A9A, #8B53FF);*/
            background: linear-gradient(to left top, #01D28E, #50dea9);
        }
        section{
            align-content: center;
            justify-content: center;
            justify-items: center;
        }
        .wrapper {
            max-width: 1100px;
            width: 100%;
            position: relative;
            justify-items: center;
            align-content: center;
            justify-content: center;
        }
        .wrapper i {
            top: 50%;
            height: 50px;
            width: 50px;
            cursor: pointer;
            font-size: 1.25rem;
            position: absolute;
            text-align: center;
            line-height: 50px;
            background: #fff;
            border-radius: 50%;
            box-shadow: 0 3px 6px rgba(0,0,0,0.23);
            transform: translateY(-50%);
            transition: transform 0.1s linear;
        }
        .wrapper i:active{
            transform: translateY(-50%) scale(0.85);
        }
        .wrapper i:first-child{
            left: -22px;
        }
        .wrapper i:last-child{
            right: -22px;
        }
        .wrapper .carousel{
            display: grid;
            grid-auto-flow: column;
            grid-auto-columns: calc((100% / 3) - 12px);
            overflow-x: auto;
            scroll-snap-type: x mandatory;
            gap: 16px;
            border-radius: 8px;
            scroll-behavior: smooth;
            scrollbar-width: none;
        }
        .carousel::-webkit-scrollbar {
            display: none;
        }
        .carousel.no-transition {
            scroll-behavior: auto;
        }
        .carousel.dragging {
            scroll-snap-type: none;
            scroll-behavior: auto;
        }
        .carousel.dragging .card {
            cursor: grab;
            user-select: none;
        }
        .carousel :where(.card, .img) {
            display: flex;
            justify-content: center;
            align-items: center;
        }
        .carousel .card {
            scroll-snap-align: start;
            height: 342px;
            list-style: none;
            background: #fff;
            cursor: pointer;
            padding-bottom: 15px;
            flex-direction: column;
            border-radius: 8px;
        }
        .carousel .card .img {
            background: #8B53FF;
            height: 148px;
            width: 148px;
            border-radius: 50%;
        }
        .card .img img {
            width: 140px;
            height: 140px;
            border-radius: 50%;
            object-fit: cover;
            border: 4px solid #fff;
        }
        .carousel .card h2 {
            font-weight: 500;
            font-size: 1.56rem;
            margin: 30px 0 5px;
        }
        .carousel .card span {
            color: #6A6D78;
            font-size: 1.31rem;
        }

        @media screen and (max-width: 900px) {
            .wrapper .carousel {
                grid-auto-columns: calc((100% / 2) - 9px);
            }
        }

        @media screen and (max-width: 600px) {
            .wrapper .carousel {
                grid-auto-columns: 100%;
            }
        }

    </style>

</head>
<body>

<section>
    <div align="center"><h1 style="font-size:50px;margin-top: 30px;color:white;">Feedback Form</h1></div>
</section>
<section id="form" class="container" style="margin-top: 30px;" >
    <div class="content">
        <div class="left-side">
            <div class="address details">
                <i class="fas fa-map-marker-alt" style="color:#1FAB89"></i>
                <div class="topic">Address</div>
                <div class="text-one"><%--Surkhet, NP12--%></div>
                <div class="text-two"><%----%></div>
            </div>
            <div class="phone details">
                <i class="fas fa-phone-alt" style="color:#1FAB89"></i>
                <div class="topic">Phone</div>
                <div class="text-one"><%----%></div>
                <div class="text-two"><%----%></div>
            </div>
            <div class="email details">
                <i class="fas fa-envelope" style="color:#1FAB89"></i>
                <div class="topic">Email</div>
                <div class="text-one"><%----%></div>
                <div class="text-two"> <%----%></div>
            </div>
        </div>
        <div class="right-side">
            <div class="topic-text " style="color:#1FAB89">Send us a message</div>
            <p>We value your feedback, you can send us message from here. It's our pleasure to help you.</p>

            <c:if test="${not empty added}">
                
            <p style="color:#1FAB89;align-items: center;justify-content: center;">${added}</p>
                <c:remove var="added" scope="session"/>
            </c:if>
            <c:if test="${not empty failed}">
               
                <p style="color:#c92f2f;align-items: center;justify-content: center;">${failed}</p>
                <c:remove var="failed" scope="session"/>

            </c:if>

            <form action="addFeedback" method="post">

                <div class="input-box">
                    <input type="text" placeholder="Enter your name" name="name"/>
                </div>
                <div class="input-box">
                    <input type="text" placeholder="Enter your email" name="email"/>
                </div>
                <div class="input-box message-box">
                    <textarea placeholder="Enter your message" name="message"></textarea>
                </div>
                <div class="button">
                    <input type="submit" value="Send Now" style="padding:8px 15px;background-color: #1FAB89;color: white;border:none;font-size: 18px;border-radius:5px;"/>
                </div>
            </form>
        </div>
    </div>
</section>


<%
	String userType = (String) session.getAttribute("usertype");
if ("customer".equalsIgnoreCase(userType) || userType == null) { //CUSTOMER HEADER

	double notf = new CartServiceImpl().getCartSum((String) session.getAttribute("username"));
	%>
	<section style="margin-top: 30px;display: flex;margin-bottom: 50px;align-content: center;" >

<div class="wrapper">
    <i id="left"  class="fa-solid fa-arrow-left"></i>
    <ul class="carousel">

        <%
            FeedbackDAOImpl dao=new FeedbackDAOImpl(DBConnect.getConn());
            List<FeedbackDtls> list=dao.getFeedbacks();

            for(FeedbackDtls fdb:list)
            {%>
                <li class="card" style="padding:10px 15px;overflow-y:auto;">
                    <h2 style="color:#1FAB89"><%=fdb.getFeedname()%></h2>
                    <p><span style="font-size: 15px;text-align: justify;"><%=fdb.getFeedmessage()%></span></p>
                </li>
            <%
            }
        %>


    </ul>
    <i id="right" class="fa-solid fa-arrow-right"></i>
</div>
</section>
<%
	} else { //ADMIN HEADER
	%>
	<section style="margin-top: 30px;display: flex;margin-bottom: 50px;align-content: center;" >

<div class="wrapper">
    <i id="left"  class="fa-solid fa-arrow-left"></i>
    <ul class="carousel">

        <%
            FeedbackDAOImpl dao=new FeedbackDAOImpl(DBConnect.getConn());
            List<FeedbackDtls> list=dao.getFeedbacks();

            for(FeedbackDtls fdb:list)
            {%>
                <li class="card" style="padding:10px 15px;overflow-y:auto;">
                    <h2 style="color:#1FAB89"><%=fdb.getFeedname()%></h2>
                    <p><span style="font-size: 15px;text-align: justify;"><%=fdb.getFeedmessage()%></span></p>
                    <p><span style="font-size: 15px;text-align: justify;"><%=fdb.getFeedemail()%></span></p>
                </li>
            <%
            }
        %>


    </ul>
    <i id="right" class="fa-solid fa-arrow-right"></i>
</div>
</section>
<%
	}
	%>
	
<script>
const wrapper = document.querySelector(".wrapper");
const carousel = document.querySelector(".carousel");
const firstCardWidth = carousel.querySelector(".card").offsetWidth;
const arrowBtns = document.querySelectorAll(".wrapper i");
const carouselChildrens = [...carousel.children];

let isDragging = false, isAutoPlay = true, startX, startScrollLeft, timeoutId;

// Get the number of cards that can fit in the carousel at once
let cardPerView = Math.round(carousel.offsetWidth / firstCardWidth);

// Insert copies of the last few cards to beginning of carousel for infinite scrolling
carouselChildrens.slice(-cardPerView).reverse().forEach(card => {
    carousel.insertAdjacentHTML("afterbegin", card.outerHTML);
});

// Insert copies of the first few cards to end of carousel for infinite scrolling
carouselChildrens.slice(0, cardPerView).forEach(card => {
    carousel.insertAdjacentHTML("beforeend", card.outerHTML);
});

// Scroll the carousel at appropriate postition to hide first few duplicate cards on Firefox
carousel.classList.add("no-transition");
carousel.scrollLeft = carousel.offsetWidth;
carousel.classList.remove("no-transition");

// Add event listeners for the arrow buttons to scroll the carousel left and right
arrowBtns.forEach(btn => {
    btn.addEventListener("click", () => {
        carousel.scrollLeft += btn.id == "left" ? -firstCardWidth : firstCardWidth;
    });
});

const dragStart = (e) => {
    isDragging = true;
    carousel.classList.add("dragging");
    // Records the initial cursor and scroll position of the carousel
    startX = e.pageX;
    startScrollLeft = carousel.scrollLeft;
}

const dragging = (e) => {
    if(!isDragging) return; // if isDragging is false return from here
    // Updates the scroll position of the carousel based on the cursor movement
    carousel.scrollLeft = startScrollLeft - (e.pageX - startX);
}

const dragStop = () => {
    isDragging = false;
    carousel.classList.remove("dragging");
}

const infiniteScroll = () => {
    // If the carousel is at the beginning, scroll to the end
    if(carousel.scrollLeft === 0) {
        carousel.classList.add("no-transition");
        carousel.scrollLeft = carousel.scrollWidth - (2 * carousel.offsetWidth);
        carousel.classList.remove("no-transition");
    }
    // If the carousel is at the end, scroll to the beginning
    else if(Math.ceil(carousel.scrollLeft) === carousel.scrollWidth - carousel.offsetWidth) {
        carousel.classList.add("no-transition");
        carousel.scrollLeft = carousel.offsetWidth;
        carousel.classList.remove("no-transition");
    }

    // Clear existing timeout & start autoplay if mouse is not hovering over carousel
    clearTimeout(timeoutId);
    if(!wrapper.matches(":hover")) autoPlay();
}

const autoPlay = () => {
    if(window.innerWidth < 800 || !isAutoPlay) return; // Return if window is smaller than 800 or isAutoPlay is false
    // Autoplay the carousel after every 2500 ms
    timeoutId = setTimeout(() => carousel.scrollLeft += firstCardWidth, 2500);
}
autoPlay();

carousel.addEventListener("mousedown", dragStart);
carousel.addEventListener("mousemove", dragging);
document.addEventListener("mouseup", dragStop);
carousel.addEventListener("scroll", infiniteScroll);
wrapper.addEventListener("mouseenter", () => clearTimeout(timeoutId));
wrapper.addEventListener("mouseleave", autoPlay);

</script>


</body>
</html>