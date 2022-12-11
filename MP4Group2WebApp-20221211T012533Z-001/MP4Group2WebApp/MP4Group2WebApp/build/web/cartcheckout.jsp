<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.ArrayList"%>
<%@ page import="product.Game" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>A Check Out Page</title>
    </head>
       <%
            // HTTP 1.1 supports the code below
            response.setHeader("Cache-Control","no-cache, no-store, must-revalidate");// RECOMMENDED WAY: the user value is not cached in the browswer
            
            //HHTP 1.0 for the code below
            response.setHeader("Pragma", "no-cache");
            
            //For Proxy servers:
            response.setHeader("Expires", "0");
            
            if(session.getAttribute("username")==null) 
                response.sendRedirect("500Error.jsp"); 
        %>
    <body>
        <div class="container" id="container">
            
            <form action="ClearCartAfterBuying" method="post"> 
                <img class="logo" src="img/logo.png" />
                <h1>Checkout:</h1>
                <%
                    ArrayList cart = (ArrayList) session.getAttribute("gameList");

                %>
            <div class="summary-label">
                <%
                    for (int i = 0; i < cart.size(); i++) {
                    Game game = (Game) cart.get(i);
                    %>
                    <p><%out.print(game.gameName);%></p> 
                    <p>&#8369; <%out.print(game.price);%></p> 
                    <p>X <%out.print(game.quantity);%></p> 
                    <br>
                <%}%>
            </div>
            <p class="total">Total: $ <%out.print(session.getAttribute("total"));%></>
            <input class="btn" type="submit" value="Purchase"/>
            <img src="img/paywith.png" width="210" height="80" />
            </form>
        </div>
    </body>
</html>

<style>
    @import url('https://fonts.googleapis.com/css?family=Montserrat:400,800');
    body{
	background-image: url("img/games.png");
	display: flex;
	justify-content: center;
	align-items: center;
	flex-direction: column;
	font-family: 'Montserrat', sans-serif;
	height: 100vh;
	margin: -20px 0 50px;
    }
    .logo{
        width: 250px;
        margin-top: 50px;
    }
    h1 {
	font-weight: bold;
	margin-bottom: 20px;
    }
    p {
	font-size: 14px;
	font-weight: 100;
	line-height: 20px;
	letter-spacing: 0.5px;
	margin: 20px 0 30px;
    }
    .total{
        font-weight: bold;
    }
    form {
	background-color: #FFFFFF;
	display: flex;
	align-items: center;
	justify-content: center;
	flex-direction: column;
	padding: 0 50px;
	height: 100%;
	text-align: center;
    }
    input {
	background-color: #eee;
	border: none;
	padding: 12px 15px;
	margin: 8px 0;
	width: 100%;
    }
    .container {
	background-color: #fff;
	border-radius: 10px;
  	box-shadow: 0 14px 28px rgba(0,0,0,0.25), 0 10px 10px rgba(0,0,0,0.22);
	position: relative;
	overflow: hidden;
	width: 400px;
	max-width: 100%;
	min-height: 480px;
    }
    .summary-label{
        display: table-row;
    }
    .summary-label div{
        display: table-cell;
        width: 250px;
        font-weight: bold;
    }
    .summary-label p{
        display: table-cell;
        width: 250px;
    }
    .btn{
        border-radius: 20px;
	border: 1px solid #FF4B2B;
	background-color: #FF4B2B;
	color: #FFFFFF;
	font-size: 12px;
	font-weight: bold;
	padding: 12px 45px;
	letter-spacing: 1px;
	text-transform: uppercase;
	transition: transform 80ms ease-in;
        cursor: pointer;
    }
</style>