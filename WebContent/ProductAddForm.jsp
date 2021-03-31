<%-- <%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri = "http://www.springframework.org/tags/form" prefix="spr" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add Expense Form</title>
</head>
<body>
	<spr:form action="product_add.htm" method="post" commandName="product" >
	<table align="center" >
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
				Product Desc:
			</td>
			<td>
				<spr:input path="productDesc"/>
			</td>
		</tr>
		<tr>
			<td>
				 Product Price:
			</td>
			<td>
				<spr:input path="productPrice"/>
			</td>
		</tr>
		<tr>
			<td>
				<a href="adminHome.jsp" >Back</a>
			</td>
			<td>
				<input type="submit"  value="Add" >
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

<%@ taglib uri ="http://www.springframework.org/tags/form" prefix="spr" %>     
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">

<title>Add Expense Form</title>
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
            <a class="nav-link" href="adminHome.jsp">Home
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
          <h1 class="display-4 text-white mt-5 mb-2"> Add Dish</h1>
          <p class="lead mb-5 text-white-50">"No one who cooks, cooks alone. Even at her most solitary, a cook in the kitchen is surrounded by generations of cooks past, the advice and menus of cooks present, the wisdom of cookbook writers" :-Laurie Colwin</p>
        </div>
      </div>
    </div>
  </header>
  
  <div class="container">
  	<div class = "row d-flex text-align-center align-item-center">
  		<div class = "col-6">
  			<spr:form action="product_add.htm" method="post" commandName="product" >
	
  <div class="form-group">
    <label for="exampleInputEmail1">Product Name</label>
    <spr:input path="productName"  class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Product Name"/>
    <small id="emailHelp" class="form-text text-muted">please add some items.</small>
  </div>
  <div class="form-group">
    <label for="exampleInputPassword1">Product Description</label>
    <spr:input path="productDesc" class="form-control" id="exampleInputEmail1" placeholder="Product Description"/>
  </div>
  
  <div class="form-group">
    <label for="exampleInputEmail1">Product Price</label>
    <spr:input path="productPrice"  class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Product Product"/>
    
    
  </div>
  
 
  <button type="submit" class="btn btn-success" onclick="javascript:alert('Product Added Successfully !!')">Submit</button>
  
  

	
</spr:form>
  		</div>
  	</div>
  	<a href="adminHome.jsp" ><button  type="submit" class="btn bg-light "> Back </button></a>
  
  
  </div>
<br>
<br>


	<footer class="py-5 bg-dark">
    <div class="container">
      <p class="m-0 text-center text-white">Copyright &copy; FoodWiseIndia@gmail.com 2021</p>
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
