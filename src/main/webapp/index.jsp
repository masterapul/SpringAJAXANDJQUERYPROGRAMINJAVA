<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
    <script type="text/javascript" language="javascript" src="http://www.technicalkeeda.com/js/javascripts/plugin/jquery.js"></script>
   
 <script src="https://cdnjs.cloudflare.com/ajax/libs/json2/20160511/json2.js"></script>



<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Spring Jquery Ajax Demo</title>
<style>
Table.GridOne {
	padding: 3px;
	margin: 0;
	background: lightyellow;
	border-collapse: collapse;	
	width:35%;
}
Table.GridOne Td {	
	padding:2px;
	border: 1px solid #ff9900;
	border-collapse: collapse;
}
</style>
<script type="text/javascript">
function madeAjaxCall(){
	$.ajax({
		type: "post",
		url: "http://localhost:3838/SpringAjaxJqueryIntegrationProgram/employee/add.htm",
		cache: false,				
		data:'firstName=' + $("#firstName").val() + "&lastName=" + $("#lastName").val() + "&email=" + $("#email").val(),
		success: function(response){
			$('#result').html("");
			var obj = JSON.parse(response);
			
			
			$('#result').html("<center><table border='1' style='color: green'  bordercolor='red'><tr><td >First Name:- " + obj.firstName +"</td></tr><tr><td>Last Name:- " + obj.lastName  + "</td></tr><tr><td>Email:- " + obj.email+" </td></tr></table></center>");
		},
		error: function(){						
			alert('Error while request..');
		}
	});
}
</script>
</head>
<body bgcolor="">
	<form name="employeeForm" method="post">	<center><h1>WELCOME TO SPRING AJAX AND JQUERY PROGRAM</h1>
		<table cellpadding="0" cellspacing="0" border="2" class="GridOne" style="color: green"  bordercolor="red" align="center">
			<tr>
				<td>First Name</td>
				<td><input type="text" name="firstName" id="firstName" value=""></td>
			</tr>
			<tr>
				<td>Last Name</td>
				<td><input type="text" name="lastName" id="lastName" value=""></td>
			</tr>
			<tr>
				<td>Email</td>
				<td><input type="text" name="email" id="email" value=""></td>
			</tr>
			<tr>
				<td colspan="2" align="center"><input type="button" value="Ajax Submit" onclick="madeAjaxCall();"><input type="submit" value="clear"></td>
			</tr>
		</table></center>
	</form>
	<center> <h1>Spring Framework Jquery Ajax Demo</h1></center>
	<div id="result"></div>
</body>
</html>