<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<head>
<title>Spring Boot MOD</title>
<meta name="viewport" content="width=device-width, initial-scale=1"> 
<!-- CSS --> 
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css"> 
<!-- JS --> 
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script> 
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"></script> 
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"></script>

<script>
    function goList(){
        window.location='./list';
    }
</script>
</head>

<body>
<jsp:include page="../top.jsp" flush="false"/>
	
	<form action="./" method="post">
<%-- 		<label>email</label> <input type="text" name="email" value="${data.email }"><br>
		<label>password</label> <input type="text" name="password" value="${data.password }"><br>
		<input type="submit" value="수정">
		<input type="hidden" name="id" value="${data.id }"> --%>
	<br>
	<table class="table table-bordered" style="border: 1px solid red; width:70%; height: 100px; margin: auto; text-align: center;">
		<tbody>
			<tr>
				<td> <label class="col-sm-2 control-label">email</label> </td>
				<td> <input type="text" class="form-control" id="email" name="email" value="${data.email }"> </td>
			</tr>
			<tr> 
				<td><label class="col-sm-2 control-label" >password</label></td> 
				<td><input type="text" class="form-control" id="password" name="password" value="${data.password }"></td>
			</tr>
			<tr>
				<td colspan=2>
				<button class="btn btn-warning" >수정저장</button>
				<button class="btn btn-warning" onclick="goList();">리스트</button>
				</td>
			</tr>
		</tbody>
	</table>
	<input type="hidden" name="id" value="${data.id }">
	</form>
</body>

</html>