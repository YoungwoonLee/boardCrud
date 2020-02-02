<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Spring Boot ADD</title>
<meta name="viewport" content="width=device-width, initial-scale=1"> 
<!-- CSS --> 
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css"> 
<!-- JS --> 
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script> 
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"></script> 
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"></script>

<script>
	function checkForm() {
		if ($("#email").val() =="") {
			alert("email을 입력해주세요");
			$("#email").focus();
			return false;
		}

		if ($("#password").val() =="") {
            alert("password을 입력해주세요");
            $("#password").focus();
            return false;
  		}
	}
	
    function submit(){
		document.formAdd.submit();
    }
</script>
</head>

<body>
	<jsp:include page="../top.jsp" flush="false"/>
	<br>
	<form id="formAdd" name="formAdd" action="./add" method="post" onsubmit="return checkForm();">
	<table class="table table-bordered" style="border: 1px solid red; width:70%; height: 100px; margin: auto; text-align: center;">
		<tbody>
			<tr>
				<td> <label class="col-sm-2 control-label">name</label> </td>
				<td> <input type="text" class="form-control" id="name" name="name" placeholder="이름"> </td>
			</tr>
			<tr> 
				<td><label class="col-sm-2 control-label" >title</label></td> 
				<td><input type="text" class="form-control" id="title" name="title" placeholder="책-제목"></td>
			</tr>
			<tr> 
				<td><label class="col-sm-2 control-label" >price</label></td> 
				<td><input type="text" class="form-control" id="price" name="price" placeholder="책-가격"></td>
			</tr>
			<tr> 
				<td><label class="col-sm-2 control-label" >description</label></td> 
				<td><input type="text" class="form-control" id="description" name="description" placeholder="책-설명"></td>
			</tr>
			<tr>
				<td colspan=2>
				<button class="btn btn-info" >저장</button>
				<!-- <input type="submit" value="저장" /> -->

				</td>
			</tr>
		</tbody>
	</table>
	</form>
</body>
</html>