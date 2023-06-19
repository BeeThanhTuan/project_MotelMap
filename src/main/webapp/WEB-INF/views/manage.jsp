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

<link href='https://unpkg.com/boxicons@2.1.4/css/boxicons.min.css'
	rel='stylesheet'>
<title>Manage</title>
</head>
<style>
* {
	margin: 0;
	padding: 0;
}

body {
	width: 100%;
	height: 100vh;
	padding: 10px;
}

table {
	width: 95%;
	height: auto;
	border: 1px solid black;
	border-collapse: collapse;
	width: 100%;
}

th, td {
	border: 1px solid rgb(134, 133, 133);
	text-align: left;
	padding: 2px;
}

th {
	text-align: center;
	background-color: #4CAF50;
	color: white;
	font-weight: bold;
	text-transform: capitalize;
}

tr:nth-child(even) {
	text-align: center;
	background-color: #f2f2f2;
}

button {
	padding: 8px 8px;
	border: none;
	cursor: pointer;
	border-radius: 4px;
	transition: background-color 0.3s ease;
}

input[type="text"] {
	width: 100%;
	height: 30px;
	outline: none;
	border-radius: 4px;
	border: 1px solid #ccc;
	box-sizing: border-box;
	margin-bottom: 8px;
	font-size: 16px;
}

input[type="file"] {
	width: 100%;
	height: 30px;
	margin-bottom: 8px;
}

td.action {
	border: 1px solid #ccc;
	text-align: center;
	height: 100%;
	border: none;
	display: flex;
	justify-content: center;
	align-items: center;
	background-color: #f2f2f2;
}

button i {
	color: #3e8e41;
	font-size: 25px;
	border: none;
	cursor: pointer;
	border-radius: 4px;
	transition: background-color 0.1s ease;
	background-color: none;
}

from .addnew {
	width: 300px;
	height: 80px;
	dispdisplay: flex;
	justify-content: center;
	align-items: center;
	padding-bottom: 10px;
}

.header {
	width: 100%;
	height: 60px;
	padding-left: 30px;
	padding-right: 100px;
	display: flex;
	justify-content: space-between;
}

.header .add {
	width: 100px;
	height: 100%;
}

.header .add i {
	font-size: 30px;
	color: #4CAF50
}

.header .search {
	width: 500px;
	height: 100%;
}

.header .search form {
	width: 100%;
	height: 100%;
	display: flex;
	justify-content: center;
	align-items: center;
}

.header .search input {
	padding: 0 10px;
	width:500px;
	height:35px;
	border: 3px solid #4CAF50;
}

.header .toHome {
	margin-right: 100px;
	width: 100px;
	height: 100%;
}

a {
	font-size: 25px;
	font-weight: 600;
	text-decoration: none;
	color: #4CAF50;
}

.add, .search, .toHome {
	display: flex;
	justify-content: center;
	align-items: center;
}

h1 {
	pading: 10px;
	background-color: #4CAF50;
	color: white;
}

.toHome  a {
	margin:10px 0;
	
}
</style>
<body>
	<h1>Manage Motels</h1>
	<div class="header">
		<div class="add">
			<a href="addMotels"> <i class='bx bx-message-square-add'></i></a>
		</div>
		<div class="search">
			<form action="">
				<input type="text">
			</form>
		</div>
		<div class="toHome">
			<a href=toHome>Home</a>
		</div>

	</div>

	<table>
		<tr>
			<th>ID</th>
			<th>Latitude</th>
			<th>Longitude</th>
			<th>Image</th>
			<th>Name of Innkeepers</th>
			<th>Description</th>
			<th>Address</th>
			<th>Phone</th>
			<th>Price</th>
			<th>Actions</th>
		</tr>
		<c:forEach items="${data}" var="item">
			<tr>
			<form action="delete" method="get" > 
				<input type="hidden" name="id" value="${item.id}" >
				<td> <p>${item.id }</p></td>
				<td> <p>${item.getLatitude()}</p></td>
				<td> <p>${item.getLongitude()}</p></td>
				<td> <p>${item.getImage()}</p></td>
				<td> <p>${item.getNameInnkeepers()}</p></td>
				<td> <p>${item.getDescription()}</p></td>
				<td> <p>${item.getAddress()}</p></td>
				<td> <p>${item.getPhone()}</p></td>
				<td> <p>${item.getPrice()}</p></td>
				<td class="action">
					<!-- <button type ="submit" name = "update" value="action">
						<i class='bx bx-edit'></i>
					</button> -->
					
					<button type ="submit" name = "delete" value="action">
						<i class='bx bx-trash'></i>
					</button>
				</td>
				</form>
			</tr>
		</c:forEach>
	</table>
</body>
</html>