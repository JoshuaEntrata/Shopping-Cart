<%-- 
    Document   : error
    Created on : 10 Dec 2022, 10:12:18 am
    Author     : JOSHUA KYLE
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
     <body>
        <div class="container" id="container">
            <form action="gameshop.jsp" method="post">
                <img class="error" src="img/error.png"/>
                <h1>No items found on the cart.</h1>
                <p>Please continue on with <br>your shopping</p>
                
                <input class="back-btn" type="submit" value="Go back"/>
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
    .error{
        width: 300px;
        margin-right: 40px;
    }
    h1 {
	font-weight: bold;
        margin-top: 20px;
        margin-bottom: 0;
    }
    p{
        margin-bottom: 20px;
        margin-top: 10px;
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
    .container {
	background-image: url("img/games.png");
	border-radius: 10px;
  	box-shadow: 0 14px 28px rgba(0,0,0,0.25), 0 10px 10px rgba(0,0,0,0.22);
	position: relative;
	overflow: hidden;
	width: 400px;
	max-width: 100%;
	min-height: 480px;
    }
    .back-btn{
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
        margin-bottom: 20px;
    }
</style>
