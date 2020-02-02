<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>	
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
<title>Spring Boot List</title>
<meta name="viewport" content="width=device-width, initial-scale=1"> 
<!-- CSS --> 
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css"> 
<!-- JS --> 
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script> 
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"></script> 
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"></script>

<script>
    function inputPage(){
        window.location='./add';
    }
    
    function deleteItem(id) {
    	window.location='./del/'+id;
    }
</script>
</head>

<body>
<jsp:include page="../top.jsp" flush="false"/>
<br>
	<table class="table table-bordered" style="border: 1px solid red; width:70%; height: 100px; margin: auto; text-align: center;">
		<thead>
			<tr>
				<th>id</th>
				<th>email</th>
				<th>password</th>
				<th>삭제유무</th>						
			</tr>
		</thead>

		<tbody>
			<c:forEach var="data" items="${list}">
				<tr>
					<td>${data.id }</td>
					<td><a href="./mod/${data.id }">${data.email }</a></td>
					<td>${data.password }</td>					
					<td><a href="./del/${data.id }">삭제</a><button class="btn btn-danger" onclick="deleteItem(${data.id });">삭제</button></td>
				</tr>
			</c:forEach>			
		</tbody>

	</table>
	<div class="container"  style="display: inline-block;text-align: center;">
	<button class="btn btn-primary" onclick="inputPage();">입력</button>
	<button class="btn btn-secondary" onclick="inputPage();">입력</button>
	<button class="btn btn-success" onclick="inputPage();">입력</button>
	<button class="btn btn-danger" onclick="inputPage();">입력</button>
	<button class="btn btn-warning" onclick="inputPage();">입력</button>
	<button class="btn btn-info" onclick="inputPage();">입력</button>
	</div>
	<br><br><br>
</body>

</html>