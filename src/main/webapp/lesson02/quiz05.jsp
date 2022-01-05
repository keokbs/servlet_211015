<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>길이 변환</title>
<!-- bootstrap CDN link -->
 <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
 <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
 <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
 <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>


</head>
<body>

<div class="container d-flex justify-content-center">
	<div>
		<h1>길이 변환</h1>
		<form method="post" action="/lesson02/quiz05_1.jsp">
			<div class="d-flex">
				<input type="text" name="size" class="form-control col-10 mr-2"><span class="mt-3">cm</span>
			</div>
			<div class="d-flex align-items-center mt-1">
				<div>
					<label>인치<input value="inch" name="type" type="checkbox" class="mr-3"></label>
					<label>야드<input value="yard" name="type" type="checkbox" class="mr-3"></label>
					<label>피트<input value="feet" name="type" type="checkbox" class="mr-3"></label>
					<label>미터<input value="meter" name="type" type="checkbox" class="mr-3">	</label>
					<input type="submit" class="btn btn-success" value="변환하기">				
			</div>
		</form>
	</div>
</div>
</body>
</html>