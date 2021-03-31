


<%@page import="com.cdac.dto.Admin"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <% 
	response.setHeader("Cache-Control", "No-Store");
	response.setHeader("Cache-Control", "No-Cache");
	
	if((Admin)session.getAttribute("admin") !=null && ((Admin)session.getAttribute("admin")).getAdminId()>0){
		
%>   
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">

<title>Admin Home</title>
</head>

<!-- 	<h1>Admin Home</h1>
	
	<a href="addProduct.htm">Add Product</a>
	<a href="product_list.htm">Show All Product</a> -->
	<body>

  <!-- Navigation -->
  <nav class="navbar navbar-expand-lg navbar-dark bg-dark fixed-top">
    <div class="container">
      <a class="navbar-brand" href="#">Catering Services</a>
      <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
      </button>
      <div class="collapse navbar-collapse" id="navbarResponsive">
        <ul class="navbar-nav ml-auto">
          <li class="nav-item active">
            <a class="nav-link" href="#">Home
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

  <!-- Header -->
  <header class="bg-primary py-5 mb-5">
    <div class="container h-100">
      <div class="row h-100 align-items-center">
        <div class="col-lg-12">
          <h1 class="display-4 text-white mt-5 mb-2"> Admin Dashboard !!</h1>
          <p class="lead mb-5 text-white-50">"No one who cooks, cooks alone. Even at her most solitary, a cook in the kitchen is surrounded by generations of cooks past, the advice and menus of cooks present, the wisdom of cookbook writers" :-Laurie Colwin</p>
        </div>
      </div>
    </div>
  </header>

  <!-- Page Content -->
  <div class="container">

    <div class="row">
      <div class="col-md-8 mb-5">
        <h2>Add Product</h2>
        <hr>
        <a class="btn btn-success"  href="addProduct.htm">Add &raquo;</a>
      </div>
      <div class="col-md-4 mb-5">
        <h2>Show All Product</h2>
        <hr>
                <a class="btn btn-success"  href="product_list.htm">Show &raquo;</a>
         </div>
    </div>
    <!-- /.row -->

    <div class="row">
      <div class="col-md-4 mb-5">
        <div class="card h-100">
          <img class="card-img-top" src="https://img-global.cpcdn.com/recipes/fb7774007d29e79a/400x400cq70/photo.jpg" alt="">
          <div class="card-body">
            <h4 class="card-title">Chole Bhature</h4>
            <p class="card-text">At its core, chole bhature is a combination of two dishes: chole - a spicy chickpea curry, and bhature - a type of fried bread made with maida flour.</p>
          </div>
          <div class="card-footer">
            <a href="#" class="btn btn-primary">Update Dish !</a>
          </div>
        </div>
      </div>
      <div class="col-md-4 mb-5">
        <div class="card h-100">
                  <img class="card-img-top" src="https://www.cubesnjuliennes.com/wp-content/uploads/2020/07/Chicken-Biryani-Recipe.jpg" alt="">
        
          <div class="card-body">
            <h4 class="card-title">Chicken Biryani</h4>
            <p class="card-text">Chicken Biryani is a delicious savory rice dish that is loaded with spicy marinated chicken, caramelized onions, and flavorful saffron rice.</p>
          </div>
          <div class="card-footer">
            <a href="#" class="btn btn-primary">Update Dish !</a>
          </div>
        </div>
      </div>
      <div class="col-md-4 mb-5">
        <div class="card h-100">
          <img class="card-img-top" src="https://static.toiimg.com/photo/53519548.cms" alt="">
          <div class="card-body">
            <h4 class="card-title">Panner Tikka Masala</h4>
            <p class="card-text">So paneer tikka masala literally translates to grilled chunks of Indian cheese in a spicy gravy.</p>
          </div>
          <div class="card-footer">
            <a href="#" class="btn btn-primary">Update Dish !</a>
          </div>
        </div>
      </div>
    </div>
    <!-- /.row -->

  </div>
  <!-- /.container -->

  <!-- Footer -->
  <footer class="py-5 bg-dark">
    <div class="container">
      <p class="m-0 text-center text-white">Copyright &copy; FoodWiseIndia@gmail.com 2021</p>
    </div>
    <!-- /.container -->
  </footer>

  <!-- Bootstrap core JavaScript -->
  <script src="vendor/jquery/jquery.min.js"></script>
  <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

</body>
	

</html>
<% 
	}else{
	response.sendRedirect("index.jsp");	
	}
%>
