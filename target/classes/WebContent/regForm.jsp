<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="spr" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Registration Form</title>
</head>
<body>
	<spr:form action="reg.htm" method="post" commandName="customer" >
	<table align="center" >
		<tr>
			<td>
				User Name:
			</td>
			<td>
				<spr:input path="custName"/>
			</td>
		</tr>
		<tr>
			<td>
				User Email:
			</td>
			<td>
				<spr:input path="custEmail"/>
			</td>
		</tr>
		<tr>
			<td>
				User phone:
			</td>
			<td>
				<spr:input path="phoneNO"/>
			</td>
		</tr>
		<tr>
			<td>
				Password:
			</td>
			<td>
				<spr:password path="custPassword"/>
			</td>
		</tr>
		<tr>
			<td>
				<a href="index.jsp" >Back</a>
			</td>
			<td>
				<input type="submit"  value="Register" >
			</td>
		</tr>
	</table>
	</spr:form>
</body>
</html>