


<%@page import="com.cdac.dto.Order"%>

<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
   
   <%@page import="com.cdac.dto.Customer"%>
<% 
	response.setHeader("Cache-Control", "No-Store");
	response.setHeader("Cache-Control", "No-Cache");
	
	if((Customer)session.getAttribute("customer") !=null && ((Customer)session.getAttribute("customer")).getCustId()>0){
		
%> 
   
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">

<title>My Orders</title>
</head>
<body>
	<nav class="navbar navbar-expand-lg navbar-dark bg-dark fixed-top">
    <div class="container">
      <a class="navbar-brand" href="home.jsp">Catering Services</a>
      <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
      </button>
      <div class="collapse navbar-collapse" id="navbarResponsive">
        <ul class="navbar-nav ml-auto">
          <li class="nav-item active">
            <a class="nav-link" href="home.jsp">Home</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="show_order.htm">Your Orders</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="cart_show.htm">My Cart</a>
          </li>
           <li class="nav-item">
            <a class="nav-link" href="logout.htm">Log Out</a>
          </li>
        
        </ul>
      </div>
    </div>
  </nav>
    <header class="text-secondary py-5 mb-5">
    <div class="container h-100">
      <div class="row h-100 align-items-center">
        <div class="col-lg-12">
          <h1 class="display-4 text-white mt-5 mb-2 text-success" > Your Order History !! </h1>
          <p class="lead mb-5 text-red-50 text-primary">"No one who cooks, cooks alone. Even at her most solitary, a cook in the kitchen is surrounded by generations of cooks past, the advice and menus of cooks present, the wisdom of cookbook writers" :-Laurie Colwin</p>
        </div>
      </div>
    </div>
  </header>
  <div class = "container">
	<table align="center" >
	
		<div class ="container ">
			<table class="table">
		
  <thead class="thead-dark">
    <tr>
      <th scope="col">Product ID</th>
      <th scope="col">Product Name</th>
      <th scope="col">Product Price</th>
      <th scope="col">Date and time</th>
    </tr>
  </thead>
  <tbody>
 
  <% float totalPrice = 0.0f;
	List<Order> clist = (List<Order>)request.getAttribute("ordertList");
	for(Order c : clist){
	%>
    <tr>
      <!-- <th scope="row">1</th> -->
      <td><%=c.getOrderId()%> </td>
       <td><%=c.getProductName()%></td>
       <td>Rs. <%=c.getProductPrice()%></td>
        <td><%=c.getOrderDate()%></td>
      
    </tr>
  
  </tbody>
			
			<% 
				totalPrice = totalPrice + c.getProductPrice();
				session.setAttribute("total_price", totalPrice);
			%>
		
		
			
		</tr>
		<% } %>
		<tr>
		
		
		
			<td>
				<a class="btn btn-light"  href="home.jsp" >Back</a>
			</td>
			<td>
				
			</td>
		</tr>
	</table>
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