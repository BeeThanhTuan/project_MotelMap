<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<link href='https://unpkg.com/boxicons@2.1.4/css/boxicons.min.css'
	rel='stylesheet'>
<title>Manage Innkeepers</title>
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
	text-align: center;
	height: 100%;
	border: none;
	display: flex;
	justify-content: center;
	align-items: center;
}

button i{
	color: #3e8e41;
	font-size: 30px;
	border: none;
	cursor: pointer;
	border-radius: 4px;
	transition: background-color 0.1s ease;
	background-color: none;
}

.back i {
	font-size: 30px;
	color: #3e8e41;
}
h1{
	pading:10px;
	background-color: #4CAF50;
	color:white;
}

.back  a  i{
	margin:10px 0;
	margin-left: 20px;
	
}
</style>
<body>
	<h1>Manage Motels</h1>
	<div class="back">
		<a href="manage"> <i class='bx bx-arrow-back'></i></a>
	</div>
	<form action="add" method="get"  enctype="multipart/form-data"> 
		<table>
			<tr>

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
			<tr>
				<td><input type="text" name="latitude"></td>
				<td><input type="text" name="longitude"></td>
				<td><input type="file" name="image"></td>
				<td><input type="text" name="name_innkeepers"></td>
				<td><input type="text" name="description"></input></td>
				<td><input type="text" name="address"></td>
				<td><input type="text" name="phone"></td>
				<td><input type="text" name="price"></td>
				<td class="action">
					<button  type="submit"><i class='bx bxs-plus-circle'></i></button>
				</td>
			</tr>
		</table>
 </form> 
</body>
</html>