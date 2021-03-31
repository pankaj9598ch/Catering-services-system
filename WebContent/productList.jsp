<%-- <%@page import="com.cdac.dto.Product"%>

<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
   
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add Product</title>
</head>
<body>
	<h1>Add product</h1>
	<table align="center" >
		<% 
		List<Product> plist = (List<Product>)request.getAttribute("productList");
		for(Product prod : plist){
		%>
		<tr>
			<td>
				<%=prod.getProductName()%>
			</td>
			<td>
				<%=prod.getProductDesc()%>
			</td>
			<td>
				<%=prod.getProductPrice()%>
			</td>
			<td>
				<a href="product_delete.htm?productId=<%=prod.getProductId()%>">Delete</a>
			</td>
			<td>
				<a href="product_update_form.htm?productId=<%=prod.getProductId()%>">Update</a>
			</td>
		</tr>
		<% } %>
		<tr>
			<td>
				<a href="adminHome.jsp" >Back</a>
			</td>
			<td>
				
			</td>
		</tr>
	</table>
	
</body>
</html> --%>

<%@page import="com.cdac.dto.Admin"%>
<%
	response.setHeader("Cache-Control", "No-Store");
	response.setHeader("Cache-Control", "No-Cache");
	
	if((Admin)session.getAttribute("admin") !=null && ((Admin)session.getAttribute("admin")).getAdminId()>0){
		
%>

<%@page import="com.cdac.dto.Product"%>

<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
   
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">

<title>Add Product</title>
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
    <header class="text-secondary py-5 mb-5">
    <div class="container h-100">
      <div class="row h-100 align-items-center">
        <div class="col-lg-12">
          <h1 class="display-4 text-white mt-5 mb-2 text-success" > Product Updated Successfully!! </h1>
          <p class="lead mb-5 text-white-50">"No one who cooks, cooks alone. Even at her most solitary, a cook in the kitchen is surrounded by generations of cooks past, the advice and menus of cooks present, the wisdom of cookbook writers" :-Laurie Colwin</p>
        </div>
      </div>
    </div>
  </header>
  
  
  
	
	
	<div class ="container ">
			<table class="table">
		
  <thead class="thead-dark">
    <tr>
      <th scope="col">Product Name</th>
      <th scope="col">Product Description</th>
      <th scope="col">Product Price</th>
      <th scope="col">Update</th>
      <th scope="col">Delete</th>
    </tr>
  </thead>
  <tbody>
  <% 
		List<Product> plist = (List<Product>)request.getAttribute("productList");
		for(Product prod : plist){
		%>
    <tr>
      <!-- <th scope="row">1</th> -->
      <td><%=prod.getProductName()%> </td>
       <td><%=prod.getProductDesc()%></td>
       <td><%=prod.getProductPrice()%></td>
        
       <td><a class="btn btn-success" href="product_update_form.htm?productId=<%=prod.getProductId()%>">Update</a></td>
       <td><a class="btn btn-danger" href="product_delete.htm?productId=<%=prod.getProductId()%>" onclick="javascript:alert('Product Deleted Successfully !!')">Delete</a></td>
    </tr>
   
   <% } %>
  </tbody>
  <a href="adminHome.jsp" ><button  type="submit" class="btn bg-light ">Back</button></a>
 	<br>
</table>

	
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