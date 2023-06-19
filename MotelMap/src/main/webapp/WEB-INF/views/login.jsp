<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Login</title>
</head>
<style>
@import
	url('https://fonts.googleapis.com/css2?family=Poppins:wght@200;300;400;500;600;700;800;900&display=swap');

* {
	margin: 0;
	padding: 0;
	box-sizing: border-box;
	font-family: 'Poppins', sans-serif;
}

body {
	width: 100%;
	min-width: 387px;
	height: 100vh;
	display: flex;
	justify-content: center;
	align-items: center;
	background-color: rgb(35, 35, 86);
}

.container {
	width: 300px;
	height: 300px;
	padding: 20px;
	background-color: rgba(255, 255, 255, 0.2);
	border-radius: 16px;
}

.container form {
	width: 100%;
	height: 100%;
	display: flex;
	flex-direction: column;
	align-items: center;
}

.container form h3 {
	color: aliceblue;
	font-size: 25px;
}

.container form input {
	position: relative;
	width: 90%;
	height: 38px;
	margin-top: 30px;
	padding-left: 5px;
	font-size: 15px;
	border: none;
	color: aliceblue;
	background-color: rgba(255, 255, 255, 0);
	border-bottom: 2px solid aliceblue;
	outline: none;
}

::-ms-input-placeholder {
	color: white;
}

::placeholder {
	color: rgb(197, 194, 194);
}

.container form button {
	width: 100px;
	height: 35px;
	margin-top: 40px;
	font-size: 15px;
	font-weight: 600;
	color: aliceblue;
	border-radius: 5px;
	background-color: rgb(16, 16, 98);
	border: none;
}
</style>
<body>
    <div class="container">
        
	<form action="loginCheck" method="get">
        <h3>Login Here</h3>
		
		<input type="text" id="username" placeholder="Enter UserName" name="username" required>
	
		<input type="password" id="password" placeholder="Enter Password" name="password" required>

		<button type="submit">Login</button>
	</form>
    </div>
</body>
</html>