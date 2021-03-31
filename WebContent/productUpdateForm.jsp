<%-- <%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="spr" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Update Product Form</title>
</head>
<body>
	<spr:form action="product_update.htm" method="post" commandName="product" >
	<table align="center" >
		<tr>
			<td>
				
			</td>
			<td>
				<spr:hidden path="productId"/>
			</td>
		</tr>
		<tr>
			<td>
				Item :
			</td>
			<td>
				<spr:input path="productName"/>
			</td>
		</tr>
		<tr>
			<td>
				Disciption :
			</td>
			<td>
				<spr:input path="productDesc"/>
			</td>
		</tr>
		<tr>
			<td>
				Price:
			</td>
			<td>
				<spr:input path="productPrice"/>
			</td>
		</tr>
		
		<tr>
			<td>
				<a href="product_list.htm" >Back</a>
			</td>
			<td>
				<input type="submit" value="Update" >
			</td>
		</tr>
	</table>
	</spr:form>
</body>
</html> --%>

 <%@page import="com.cdac.dto.Admin"%>
<%
	response.setHeader("Cache-Control", "No-Store");
	response.setHeader("Cache-Control", "No-Cache");
	
	if((Admin)session.getAttribute("admin") !=null && ((Admin)session.getAttribute("admin")).getAdminId()>0){
		
%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="spr" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">

<title>Update Product Form</title>
</head>
<body>
<nav class="navbar navbar-expand-lg navbar-dark bg-dark fixed-top">
    <div class="container">
      <a class="navbar-brand" href="adminHome.jsp">Catering Services</a>
      <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
      </button>
      <div class="collapse navbar-collapse" id="navbarResponsive">
        <ul class="navbar-nav ml-auto">
          <li class="nav-item active">
            <a class="nav-link" href="home.jsp">Home
              <span class="sr-only">(current)</span>
            </a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="aboutUs.html">About</a>
          </li>
         
           <li class="nav-item">
            <a class="nav-link" href="AdminLogout.htm">Log Out</a>
          </li>
        
        </ul>
      </div>
    </div>
  </nav>
    <header class="bg-primary py-5 mb-5">
    <div class="container h-100">
      <div class="row h-100 align-items-center">
        <div class="col-lg-12">
          <h1 class="display-4 text-white mt-5 mb-2"> Update Product !!</h1>
          <p class="lead mb-5 text-white-50">"No one who cooks, cooks alone. Even at her most solitary, a cook in the kitchen is surrounded by generations of cooks past, the advice and menus of cooks present, the wisdom of cookbook writers" :-Laurie Colwin</p>
        </div>
      </div>
    </div>
  </header>
	<spr:form action="product_update.htm" method="post" commandName="product" >
	<table align="center" >
		<tr>
			<td>
				
			</td>
			<td>
				<spr:hidden path="productId"/>
			</td>
		</tr>
		<tr>
			<td>
			  <h3>Item :</h3>
				
			</td>
			<td>
				<spr:input path="productName"/>
			</td>
		</tr>
		<tr>
			<td>
			 <div class="form-group">
				
				 <h3>Disciption :</h3>
			</div>
			</td>
			<td>
				<spr:input path="productDesc"/>
			</td>
		</tr>
		<tr>
			<td>
				 <div class="form-group">
				<h3>Price:</h3>
				</div>
			</td>
			<td>
			    <div class="form-group">
				<spr:input path="productPrice"/>
				</div>
			</td>
		</tr>
		
		<tr>
			<td>
				<a href="product_list.htm"> <button  type="submit" class="btn bg-light "> Back </button></a>
			</td>
			<td>
				
				<input type="submit" class="btn btn-success" value="Update" onclick="javascript:alert('Product Updated Successfully !!')"></button>
			</td>
		</tr>
	</table>
	
	</spr:form>
	<br>
	<br>
		<footer class="py-5 bg-dark">
    <div class="container">
      <p class="m-0 text-center text-white">Copyright &copy; FoodWiseIndia@gmail.com 2020</p>
    </div>
    <!-- /.container -->
  </footer>
</body>
</html>


<% 
	}else{
	response.sendRedirect("index.jsp");	
	}
%>