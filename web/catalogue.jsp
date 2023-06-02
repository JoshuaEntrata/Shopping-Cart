<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.ArrayList"%>
<%@ page import="product.Game" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Welcome to GameShop!</title>
        
        <link href='http://fonts.googleapis.com/css?family=Lato' rel='stylesheet' type='text/css'>
    </head>
    <body>
        <form action ="loginpage.jsp" method = "POST">
            
            <div class="container">
                <div class="heading">
                    <img class="logo" src="img/logo.png" />
                    <input class="heading-btn" name="Login" type="submit" value="Login"></input>
                </div>
                
                <hr>
                
                <div class="cart-group">
                    <div class="cart-items">
                        <div class="image-box">
                            <img src="img/god-of-war.jpg">
                        </div>
                        <div class="about">
                            <h1 class="title">God of War</h1>
                            <input name="game1" type="hidden" value="God of War" />
                            <h3 class="subtitle">Item 1</h3>
                        </div>
                        <div class="about">
                            <h3 class="description">His vengeance against the Gods of Olympus years behind him, Kratos now lives as a man in the realm of Norse Gods and monsters. It is in this harsh, unforgiving world that he must fight to survive… and teach his son to do the same.</h3>
                        </div>
                        <div class="ctr">
                        </div>
                        <div class="prices">
                            <div class=”amount”>&#8369; 2500</div>
                            <input name="price1" type="hidden" value="2500" />
                        </div>
                    </div>  

                    <div class="cart-items">
                        <div class="image-box">
                            <img src="img/gta-v.jpg">
                        </div>
                        <div class="about">
                            <h1 class="title">GTA V</h1>
                            <input name="game2" type="hidden" value="GTA V" />
                            <h3 class="subtitle">Item 2</h3>
                        </div>
                        <div class="about">
                            <h3 class="description">Grand Theft Auto V for PC offers players the option to explore the award-winning world of Los Santos and Blaine County in resolutions of up to 4k and beyond, as well as the chance to experience the game running at 60 frames per second.</h3>
                        </div>
                        <div class="ctr">
                        </div>
                        <div class="prices">
                            <div class=”amount”>&#8369; 3500</div>
                            <input name="price2" type="hidden" value="3500" />
                        </div>
                    </div>

                    <div class="cart-items">
                        <div class="image-box">
                            <img src="img/cyberpunk-2077.jpg">
                        </div>
                        <div class="about">
                            <h1 class="title">Cyberpunk 2077</h1>
                            <input name="game3" type="hidden" value="Cyberpunk 2077" />
                            <h3 class="subtitle">Item 3</h3>
                        </div>
                        <div class="about">
                            <h3 class="description">Cyberpunk 2077 is an open-world, action-adventure RPG set in the dark future of Night City — a dangerous megalopolis obsessed with power, glamor, and ceaseless body modification.</h3>
                        </div>
                        <div class="ctr">
                        </div>
                        <div class="prices">
                            <div class=”amount”>&#8369; 5000</div>
                            <input name="price3" type="hidden" value="5000" />
                        </div>
                    </div>

                    <div class="cart-items">
                        <div class="image-box">
                            <img src="img/nba-2k23.jpg">
                        </div>
                        <div class="about">
                            <h1 class="title">NBA 2K23</h1>
                            <input name="game4" type="hidden" value="NBA 2K23" />
                            <h3 class="subtitle">Item 4</h3>
                        </div>
                        <div class="about">
                            <h3 class="description">Rise to the occasion in NBA 2K23. Showcase your talent in MyCAREER. Pair All-Stars with timeless legends in MyTEAM. Build your own dynasty in MyGM, or guide the NBA in a new direction with MyLEAGUE. Take on NBA or WNBA teams in PLAY NOW and feel true-to-life gameplay.</h3>

                        </div>
                        <div class="ctr">
                        </div>
                        <div class="prices">
                            <div class=”amount”>&#8369; 1000</div>
                            <input name="price4" type="hidden" value="1000" />
                        </div>
                    </div>
                </div>
                
                <hr>
                <hr> 
        </form>
        
    </body>
</html>

<style>
    @import url('https://fonts.googleapis.com/css?family=Montserrat:400,800');
    body{
        background-image: url("img/games.png");
        display: flex;
	align-items: center;
	flex-direction: column;
	font-family: 'Montserrat', sans-serif;
	height: 100vh;
	margin: 10px 0 50px;
        
    }
    .heading{
        margin-bottom: 150px;
    }
    .logo{
        width: 250px;
        float: left;
    }
    .heading-btn{
        float: right;
    }
    .container{
        padding: 30px 20px 30px 20px;
        background-color: #ffffff;
	border-radius: 10px;
  	box-shadow: 0 14px 28px rgba(0,0,0,0.25), 0 10px 10px rgba(0,0,0,0.22);
	position: relative;
	overflow: hidden;
        width: 950px;
        margin: 20px;
    }
    .header-container, .header-summary{
        font-size: 24px;
        font-weight: 800;
        color: #2F3841;
    }
    .cart-group{
        text-align: justify;
    }
    .cart-items{
        justify-content: space-between;
    }
    .cart-items div{
        display: table-cell;
        border-spacing: 20px;
        vertical-align: middle;
        padding: 10px;
    }
    .title, .subtitle{
        width: 150px;
    }
    .description{
        width: 400px;
        font-weight: normal;
        font-size: 15px;
    }
    .image-box{
        text-align: center;
    }
    .image-box img{
        height: 120px;
    }
    .about{
        height: 100%;
    }
    .title{
        padding-top: 5px;
        font-size: 22px;
        font-weight: 800;
        color: #202020;
    }
    .subtitle{
        font-size: 15px;
        font-weight: normal;
        color: #909090;
    }
    .ctr input{
        left: 10px;
        top: 10px;
        width: 50px;
        height: 20px;
        padding: 0px;
        font-size: 14pt;
        border: solid 0.5px #000;
        z-index: 1;
    }
    .prices{
        height: 100%;
        font-weight: bold;
    }
    .amount{
        padding-top: 20px;
        font-size: 26px;
        font-weight: 800;
        color: #202020;
    }
    .checkout-text{
        width: 100%;
        display: flex;
        justify-content: space-between;
        margin-top: 30px;
    }
    .subtotal-text{
        font-size: 22px;
        font-weight: 700;
        color: #202020;
        margin-bottom: 10px;
    }
    .items-text{
        font-size: 16px;
        font-weight: 500;
        color: #909090;
        line-height: 10px;
    }
    .amount-text{
        font-size: 26px;
        font-weight: 800;
        color: #202020;
    }
    .cart-btn, .delete-btn, .heading-btn{
        border-radius: 20px;
	border: 1px solid #FF4B2B;
	background-color: #FF4B2B;
	color: #FFFFFF;
	font-size: 12px;
	font-weight: bold;
	padding: 10px 25px;
	letter-spacing: 1px;
        cursor: pointer;
    }
    
    .cart-selected-items{
        text-align: center;
    }
    .checkout-btn{
        border-radius: 20px;
	border: 1px solid #FF4B2B;
	background-color: #FF4B2B;
	color: #FFFFFF;
	font-size: 12px;
	font-weight: bold;
	padding: 12px 45px;
	letter-spacing: 1px;
        cursor: pointer;
        float: right;
    }
    .summary-label, .summary-result{
        margin: auto;
        width: 90%;
        display: table-row;
    }
    .summary-label div, .summary-result div{
        display: table-cell;
        width: 250px;
    }
    .summary-result h3{
        color: #909090;
        font-weight: normal;
    }
</style>
