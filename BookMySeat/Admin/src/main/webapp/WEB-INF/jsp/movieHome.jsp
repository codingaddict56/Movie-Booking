<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <jsp:include page="header.jsp"/>
  
<!DOCTYPE html>
<html>
  <%@ page isELIgnored="false" %>
<head>
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">

<title>MovieHome::BookMySeat</title>
<style type="text/css">
        	body{background-color:goldenrod;}
        	.navbar{
        	height:80px;
        	width:100%;
        	background: rgba(0,0,0,0.4);
        	}
        	
        	.navbar1{
        	height:30px;
        	width:97%;
        	padding: 30px 20px;
       		background: rgba(0,0,0,0.9);
        	}
        	
        	.navbar1 a{
        	text-decoration:none;
        	color:white;
        	font-size:20px;
 			padding: 20px 50px;
        	margin: 0 8px;
        	font-family:'roboto', sans-serif;
        	transition: .4s;
        	}
        	
        	.logo{
        	width: 140px;
        	height:auto;
        	padding: 20px 100px;
        	}
        	
        	.navbar ul{
        	float:right;
        	margin-right:20px;
        	}
        	
        	.navbar ul li{
        	list-style:none;
        	margin: 0 8px;
        	display: inline-block;
        	line-height:80px;
        	}
        	
        	.navbar1 a:hover{
        	background-color: red;
        	border-radius:2px;
        	}
    
        	.navbar ul li a{
        	text-decoration:none;
        	color:white;
        	font-size:20px;
        	padding:6px 13px;
        	font-family:'roboto', sans-serif;
        	transition: .4s;
        	}
        	
        	.navbar ul li a.active,
        	.navbar ul li a:hover{
        	background-color: red;
        	border-radius:2px;
        	}
        	
        	.slide-container{
        	width:800px;
        	height:600px;
        	margin-left:auto;
        	margin-right:auto;
        	overflow:hidden;
        	text-align:center;
        	}
        	
        	.image-container{
        	width:2400px;
        	height:300px;
        	position:relative;
        	transition:left 2s;
        	-webkit-transition:left 2s;
        	-moz-transition:left 2s;
        	-o-transition:left 2s;
        	}
        	
        	.slider-image{
        	float:left;
        	margin:0px;
        	padding:0px;
        	}
        	
        	.button-container{
        	top:-20px;
        	position:relative;
        	
        	}
        	
        	<!--img{
        	width:700px;
        	height:600px;
        	}-->
        	
        	.slider-button{
        	display:inline-block;
        	height:10px;
        	width:10px;
        	border-radius:5px;
        	background-color:white;
        	}
        	
        	#slider-image-1:target ~ .image-container{
        	left: 0px;
        	}
        	
        	#slider-image-2:target ~ .image-container{
        	left: -800px;
        	}
        	
        	#slider-image-3:target ~ .image-container{
        	left: -1600px;
        	}
        	
        	.our{
        	height:30px;
        	width:97%;
        	background: rgba(0,0,0,0.4);
        	font-family:'roboto', sans-serif;
        	color:white;
        	padding: 20px 20px;
        	}
        	
        	.row{
        	box-sizing:border-box;
        	}
        	
        	.column{
        	float:left;
        	width:20%;
        	padding:5px;
        	}
        	
        	.row::after{
        	content:"";
        	display:table;
        	clear:both;
        	}
        	
        	.image-resize{
        	height:200px;
        	width:100%
        	}
        </style>
</head>
<body>
     <form action="format" method="post">
        <nav class="navbar">
        	<img class="logo" src="bookmyseat.jpeg" alt="logo :(">
        	<ul>
        	<li><a href="SearchMovie">Search Movies</a></li>
    		<li><a href="index.jsp">Back</a></li>
        	<li><a href="i">Home</a></li>
        	</ul>
        </nav>
		
		<nav class="navbar1">
    	<a href="#">Home</a>
    	<a href="#">Movies</a>
    	<a href="#">Events</a>
    	</nav>
    	
    	<!-- this code is for slider part -->
    	<div class="slide-container">
    		<span id="slider-image-1"></span>
    		<span id="slider-image-2"></span>
    		<span id="slider-image-3"></span>
    		
    		
    		<div class="image-container">
    			<img src="https://www.moviespie.com/wp-content/uploads/2020/05/Shershah-Movie-Sidhart-Malhotra-Kiara-Advani.jpg" class"slider-image">
    			<img src="https://cdn.thelivemirror.com/wp-content/uploads/2019/09/Nayanthara-Netrikann-First-Poster.jpg" class"slider-image">
    			<img src="https://i.ytimg.com/vi/1t4jhHwk4q8/maxresdefault.jpg" class"slider-image">
    			
    			</div>
    		<div class="button-container">
    			<a href="#slider-image-1" class="slider-button"></a>
 				<a href="#slider-image-2" class="slider-button"></a>
 				<a href="#slider-image-3" class="slider-button"></a>
 				
    		</div>
    	</div>
    	
    	<div>
    		<h2 class="our">Events</h2>
    	</div>
    	
    	<!-- These code is for events part -->
    	<div class="row">
    	<a href="">
    	<div class="column">
    		<img class="img-responsive image-resize" src="https://www.moviespie.com/wp-content/uploads/2020/05/Shershah-Movie-Sidhart-Malhotra-Kiara-Advani.jpg" width="100%;">
    	</div>
    	</a>
    	<a href="">
    	<div class="column">
    		<img class="img-responsive image-resize" src="https://cdn.thelivemirror.com/wp-content/uploads/2019/09/Nayanthara-Netrikann-First-Poster.jpg" width="100%;">
    	</div>
    	</a>
    	<a href="">
    	<div class="column">
    	<img class="img-responsive image-resize" src="https://i.ytimg.com/vi/1t4jhHwk4q8/maxresdefault.jpg" width="100%;">
    	</div>	
    	</a>
    	</div>
    	
    	<div>
    		<h2 class="our">Movies</h2>
    	</div>
    	
    	<!--  movies part -->
    	<div class="row">
    	<a href="">
    	<div class="column">
    		<img class="img-responsive image-resize" src="https://www.moviespie.com/wp-content/uploads/2020/05/Shershah-Movie-Sidhart-Malhotra-Kiara-Advani.jpg" width="100%;">
    	</div>
    	</a>
    	<a href="">
    	<div class="column">
    		<img class="img-responsive image-resize" src="https://cdn.thelivemirror.com/wp-content/uploads/2019/09/Nayanthara-Netrikann-First-Poster.jpg" width="100%;">
    	</div>
    	</a>
    	<a href="">
    	<div class="column">
    	<img class="img-responsive image-resize" src="https://i.ytimg.com/vi/1t4jhHwk4q8/maxresdefault.jpg" width="100%;">
    	</div>	
    	</a>
    	</div>
</body>
</html>