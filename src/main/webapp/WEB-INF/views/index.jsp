<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%@ page import="java.util.HashSet"%>

<%@ page import="java.util.Set"%>

<%@ page import="java.util.List"%>

<%@ page import="java.util.ArrayList"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<%@page isELIgnored="false"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet"
	href="https://unpkg.com/leaflet@1.9.3/dist/leaflet.css"
	integrity="sha256-kLaT2GOSpHechhsozzB+flnD+zUyjE2LlfWPgU04xyI="
	crossorigin="" />

<!-- Make sure you put this AFTER Leaflet's CSS -->
<script src="https://unpkg.com/leaflet@1.9.3/dist/leaflet.js"
	integrity="sha256-WBkoXOwTeyKclOHuWtc+i2uENFpDZ9YPdf5Hf+D7ewM="
	crossorigin="">
</script>

<link href='https://unpkg.com/boxicons@2.1.4/css/boxicons.min.css'
	rel='stylesheet'>
<style>
@import
	url('https://fonts.googleapis.com/css2?family=Poppins:wght@200;300;400;500;600;700;800;900&display=swap')
	;

* {
	margin: 0;
	padding: 0;
	box-sizing: border-box;
	font-family: 'Poppins', sans-serif;
}

body {
	position: relative;
	width: 100%;
	height: 100vh;
}

header {
	position: fixed;
	width: 100%;
	height: 80px;
	padding: 0 30px;
	z-index: 10;
	display: flex;
	justify-content: end;
	align-items: center;
}

.container {
	position: absolute;
	width: 100%;
	height: 100%;
	z-index: 1;
}

.searchbox {
	position: relative;
	right: 25%;
	width: 600px;
	height: 100%;
}

.searchbox form {
	position: relative;
	width: 100%;
	height: 100%;
	display: flex;
	justify-content: center;
	align-items: center;
}

.searchbox form input {
	width: 100%;
	height: 45px;
	padding-left: 30px;
	border-radius: 16px;
	border: none;
	font-size: 15px;
	outline: none;
}

.searchbox form button {
	position: absolute;
	right: 0;
	width: 10%;
	height: 45px;
	border-top-right-radius: 16px;
	border-bottom-right-radius: 16px;
	border: none;
	display: flex;
	justify-content: center;
	align-items: center;
	cursor: pointer;
	background: white;
	border-left: 2px solid rgb(135, 134, 134);
}

.searchbox form button i {
	font-size: 20px;
}

.login {
	width: 100px;
	height: 40px;
	display: flex;
	justify-content: center;
	align-items: center;
	border-radius: 16px;
	background-color: rgb(235, 172, 55);
}

.login a {
	align-items: center;
	font-size: 15px;
	font-weight: 500;
	border: none;
	cursor: pointer;
	text-decoration: none;
}

/* details */
 .custom-popup{
 		position: absolute;
        width: 300px;
        height: 100vh;
        padding: 10px;
        background-color: white;
        overflow: hidden;
        z-index:100;
        display:none;
    }

    
    .custom-popup .image{
        width: 280px;
        height: 280px;
        background-color: aliceblue;
       
    }
    .custom-popup .image img{
   		 width: 280px;
        height: 280px;
    }
    p{
        width: 280px;
        min-height: 20px;
        height: auto;
        margin-top:10px;
    }
    p span {
        width: 250px;
        min-height: 20px;
        height: auto;
    }
    
    span#popup-price {
    color: red;
}   
    .position{
        margin-top: 50px;
        text-align: center;
    }
    .address{
    	margin-top:30px;
    }

</style>
</head>
<body>
	<header>
		<!-- <div class="searchbox">
			<form action="/search" method="get">
				<input type="text" placeholder="Search here..." name="keyword" />
				<button type="submit">
					<i class='bx bx-search-alt'></i>
				</button>
			</form>
		</div> -->

		<div class="login">
			<a href="toLogin"> Login </a>
		</div>

	</header>

	<div class="container" id="map"></div> 
	
	<div id="custom-popup" class="custom-popup" >
        <div class="image">
           <img id="popup-image" src=" <c:url value='/resources/images/a1.jpg'/>" />
        </div>    
        <p class="address"><strong>Địa chỉ:</strong> <span id="popup-address"></span></p>
        <p><strong>Tên chủ trọ:</strong> <span id="popup-nameInnkeeper"></span></p>
        <p><strong>Số điện thoại:</strong> <span id="popup-phone"></span></p>
        <p><strong>Mô tả nhà trọ:</strong> <span id="popup-description"></span></p>
        <p><strong>Giá:</strong> <span id="popup-price"></span> VND</p>
        <p class="position"><span id="popup-lat"></span> - <span id="popup-lng"></span></p>
    </div>



</body>



<script>
	var map = L.map('map').setView([13.7594,109.2164], 14);
	L.tileLayer('https://tile.openstreetmap.org/{z}/{x}/{y}.png', {
	    maxZoom: 19,
	    attribution: '&copy; <a href="http://www.openstreetmap.org/copyright">OpenStreetMap</a>'
	}).addTo(map);
	
	
	
	// tạo cac marker
	var locations = [
    <c:forEach items="${data}" var="item">
        {
            address: "${item.getAddress()}",
            lat: ${item.getLatitude()},
            lng: ${item.getLongitude()},
            nameinnkeepers:"${item.getNameInnkeepers()}",
            phone:"${item.getPhone()}",
            description:"${item.getDescription()}",
            price:"${item.getPrice()}",
           /*  image: "../resources/images/${item.getImage()}" */
            
        },
    </c:forEach>
	];

	
	
	// phần detail motels
	locations.forEach(function(location) {
    var marker = L.marker([location.lat, location.lng]).addTo(map);
    
    // Thêm sự kiện click cho marker
    marker.on('click', function(e) {
        // Hiển thị popup
        document.getElementById("popup-nameInnkeeper").innerHTML = location.nameinnkeepers;
        /* document.getElementById("popup-image").src = location.image;  */
        document.getElementById("popup-description").innerHTML = location.description;
        document.getElementById("popup-address").innerHTML = location.address;
        document.getElementById("popup-phone").innerHTML = location.phone;
        document.getElementById("popup-price").innerHTML = location.price;
        document.getElementById("popup-lat").innerHTML = location.lat;
        document.getElementById("popup-lng").innerHTML = location.lng;
        
        
        document.getElementById("custom-popup").style.display = "block";
        
    });
});

// Ẩn popup khi click bất kỳ đâu trên bản đồ
map.on('click', function(e) {
    document.getElementById("custom-popup").style.display = "none";
});
</script>
</html>