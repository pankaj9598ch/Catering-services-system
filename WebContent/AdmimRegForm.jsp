<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri = "http://www.springframework.org/tags/form" prefix="spr" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Registration Form</title>
</head>
<body bgcolor="DimGrey">
	<spr:form action="adminReg.htm" method="post" commandName="admin" >
	
	<div align="center">
	<img src="logo2.jpeg" width="150px" data-pagespeed-url-hash="2080820710" onload="pagespeed.CriticalImages.checkImageForCriticality(this);">
	</div>
	
	<h1 style="font-size:30px;color:white" align="center" >Please Register Here</h1>
	
	<table border="1px" style="font-size:25px" align="center" cellpadding=10 cellspacing=2 bgcolor="cornflowerblue" >
		<tr>
			<td>
				User Name:
			</td>
			<td>
				<spr:input path="adminName"/>
			</td>
		</tr>
		<tr>
			<td>
				User Email:
			</td>
			<td>
				<spr:input path="adminEmail"/>
			</td>
		</tr>
		
		<tr>
			<td>
				Password:
			</td>
			<td>
				<spr:password path="adminPassword"/>
			</td>
		</tr>
		<tr>
			<td>
				<a href="index.jsp" >Back</a>
			</td>
			<td>
				
				<button type="submit" class="btn btn-success"  value="Register" onclick="javascript:alert('successfully Registered !!')">Register</button>
			</td>
		</tr>
	</table>
	
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<hr>
    <div style="font-size:20px;color:white" align="center">
      <p>Copyright &copy; FoodWiseIndia@gmail.com 2021</p>
    </div>
	
	</spr:form>
</body>
</html>