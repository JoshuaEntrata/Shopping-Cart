<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>A Thank You Page</title>
    </head>
    <body>
        <div class="container" id="container">
            <form action="catalogue.jsp" method="post">
                <img class="logo" src="img/logo.png" />
                <p>You have successfully checked out!</p>
                <h1>Thank you for your purchase!</h1>
                <input class="home-btn" type="submit" value="Shop Again"/>
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
        width: 300px;
    }
    h1 {
	font-weight: bold;
        margin-top: 0;
	margin-bottom: 30px;
    }
    p {
	font-size: 18px
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
	background-color: #fff;
	border-radius: 10px;
  	box-shadow: 0 14px 28px rgba(0,0,0,0.25), 0 10px 10px rgba(0,0,0,0.22);
	position: relative;
	overflow: hidden;
	width: 400px;
	max-width: 100%;
	min-height: 480px;
    }
    .home-btn{
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