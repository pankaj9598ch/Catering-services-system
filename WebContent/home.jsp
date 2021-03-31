<%-- 
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Customer Home Page</title>
</head>
<body>

	<h1>Customer Home</h1>
	<a href="cust_product_list.htm">Show All Product</a>
</body>
</html> --%>

<%@page import="com.cdac.dto.Customer"%>
<% 
	response.setHeader("Cache-Control", "No-Store");
	response.setHeader("Cache-Control", "No-Cache");
	
	if((Customer)session.getAttribute("customer") !=null && ((Customer)session.getAttribute("customer")).getCustId()>0){
		
%> 
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">

<title>Customer Home Page</title>
</head>
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
            <a class="nav-link" href="home.jsp">Home</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="show_order.htm">Your Orders</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="cart_show.htm">My Cart</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="contactUs.html">Contact</a>
          </li>
           <li class="nav-item">
            <a class="nav-link" href="logout.htm">Log Out</a>
          </li>
        
        </ul>
      </div>
    </div>
  </nav>

  <!-- Page Content -->
  <div class="container bg-dark">

    <!-- Jumbotron Header -->
    <header class="jumbotron my-4">
      <div>
 <marquee style="font-size:55px;color:green"> <i><b> Welcome to FoodWise   </b></i> </marquee>
</div>
      <p class="lead"> Cooking requires confident guesswork and improvisation, experimentation and substitution, dealing with failure and uncertainty in a creative way:- Paul Theroux.</p>
      <a href="cust_product_list.htm" class="btn btn-success btn-lg">Order Now !</a>
    </header>





        <div class="row">

          <div class="col-lg-4 col-md-6 mb-4">
            <div class="card h-100">
              <a href="#"><img class="card-img-top" src="https://www.indianhealthyrecipes.com/wp-content/uploads/2020/02/instant-pot-egg-biryani.jpg" alt=""></a>
              <div class="card-body">
                <h4 class="card-title">
                  <a href="#">Anda Biryani</a>
                </h4>
                <h5>120 rs</h5>
                <p class="card-text"> Egg Biryani is wholesome one pot meal made by cooking together fragrant long grain basmati rice and spiced hard boiled eggs topped with caramelized onions.</p>
              </div>
              <div class="card-footer">
                <small class="text-muted">&#9733; &#9733; &#9733; &#9733; &#9734;</small>
              </div>
            </div>
          </div>

          <div class="col-lg-4 col-md-6 mb-4">
            <div class="card h-100">
              <a href="#"><img class="card-img-top" src="https://www.indianhealthyrecipes.com/wp-content/uploads/2018/06/chicken-korma-recipe.jpg" alt=""></a>
              <div class="card-body">
                <h4 class="card-title">
                  <a href="#">Chicken Korma</a>
                </h4>
                <h5>150 rs</h5>
                <p class="card-text">Chicken korma recipe with video and step by step photos – Korma is a delicious gravy usually made with onions, spices, nuts, yogurt and seeds.</p>
              </div>
              <div class="card-footer">
                <small class="text-muted">&#9733; &#9733; &#9733; &#9733; &#9734;</small>
              </div>
            </div>
          </div>

          <div class="col-lg-4 col-md-6 mb-4">
            <div class="card h-100">
              <a href="#"><img class="card-img-top" src="https://www.cubesnjuliennes.com/wp-content/uploads/2020/07/Chicken-Biryani-Recipe-500x375.jpg" alt=""></a>
              <div class="card-body">
                <h4 class="card-title">
                  <a href="#">Hydrabadi Biryani</a>
                </h4>
                <h5>200 rs</h5>
                <p class="card-text">Hyderabadi biryani is a variety of biryani from Hyderabad, India. It is prepared from rice using the dum method of cooking, and is a common feature in Hyderabadi weddings.</p>
              </div>
              <div class="card-footer">
                <small class="text-muted">&#9733; &#9733; &#9733; &#9733; &#9734;</small>
              </div>
            </div>
          </div>

          <div class="col-lg-4 col-md-6 mb-4">
            <div class="card h-100">
              <a href="#"><img class="card-img-top" src="https://atasteofflavours.com/wp-content/uploads/2019/10/IMG_8258.jpg" alt=""></a>
              <div class="card-body">
                <h4 class="card-title">
                  <a href="#">Chicken Handi</a>
                </h4>
                <h5>220 rs</h5>
                <p class="card-text">Chicken Handi (Restaurant Style Murgh Handi) is one of the popular curries in India. It is mild and creamy (without adding cream) and very flavourful.</p>
              </div>
              <div class="card-footer">
                <small class="text-muted">&#9733; &#9733; &#9733; &#9733; &#9734;</small>
              </div>
            </div>
          </div>

          <div class="col-lg-4 col-md-6 mb-4">
            <div class="card h-100">
              <a href="#"><img src="images/vegBiryani.jpg" alt="vegBiryani" style="width:100%"></a>
              <div class="card-body">
                <h4 class="card-title">
                  <a href="#">Veg Biryani</a>
                </h4>
                <h5>150 rs</h5>
                <p class="card-text"> Vegetable biryani is an aromatic rice dish made by cooking basmati rice with mix veggies, herbs & biryani spices.</p>
              </div>
              <div class="card-footer">
                <small class="text-muted">&#9733; &#9733; &#9733; &#9733; &#9734;</small>
              </div>
            </div>
          </div>

          <div class="col-lg-4 col-md-6 mb-4">
            <div class="card h-100">
              <a href="#"><img class="card-img-top" src="data:image/jpeg;base64,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" alt=""></a>
              <div class="card-body">
                <h4 class="card-title">
                  <a href="#">Bhindi Fry</a>
                </h4>
                <h5>100 rs</h5>
                <p class="card-text">This semi dry curry made with ladies finger or okra goes very well with rice or roti.</p>
              </div>
              <div class="card-footer">
                <small class="text-muted">&#9733; &#9733; &#9733; &#9733; &#9734;</small>
              </div>
            </div>
          </div>





    <!-- Page Features -->
    
    <!-- /.row -->

  </div>
  <!-- /.container -->

  <!-- Footer -->
  <footer class="py-5 bg-dark">
    <div class="container">
      <p class="m-0 text-center text-white">Copyright &copy; FoodWiseIndia.com 2021 </p>
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
