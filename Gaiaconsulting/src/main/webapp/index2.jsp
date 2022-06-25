<%@page import="com.gaiaconsulting.model.Products"%>
<%@page import="com.gaiaconsulting.model.User"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.gaiaconsulting.connection.DbCon"%>
<%@page import="com.gaiaconsulting.model.Cart"%>
<%@page import="java.util.List"%>
<%@page import="com.gaiaconsulting.dao.ProductsDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%
User auth = (User) request.getSession().getAttribute("auth");

if (auth != null) {
	request.setAttribute("auth", auth);
}
ProductsDao pd = new ProductsDao(DbCon.getConnection());
List<Products> products = pd.getAllProducts();

ArrayList<Cart> cart_list = (ArrayList<Cart>) session.getAttribute("cart-list");
List<Cart> cartProduct = null;

if (cart_list != null) {

	//total = pDao.getTotalCartProducts(cart_list);

	request.setAttribute("cart_list", cart_list);
}
%>

<!DOCTYPE html>
<html>
<style>.:root {
  --surface-color: #fff;
  --curve: 40;
}

* {
  box-sizing: border-box;
}

body {
  font-family: 'Noto Sans JP', sans-serif;
  background-color: #fef8f8;
}

.cards {
  display: grid;
  grid-template-columns: repeat(auto-fit, minmax(300px, 1fr));
  gap: 2rem;
  margin: 4rem 5vw;
  padding: 0;
  list-style-type: none;
}

.card {
  position: relative;
  display: block;
  height: 100%;  
  border-radius: calc(var(--curve) * 1px);
  overflow: hidden;
  text-decoration: none;
}

.card__image {      
  width: 100%;
  height: auto;
}

.card__overlay {
  position: absolute;
  bottom: 0;
  left: 0;
  right: 0;
  z-index: 1;      
  border-radius: calc(var(--curve) * 1px);    
  background-color: var(--surface-color);      
  transform: translateY(100%);
  transition: .2s ease-in-out;
}

.card:hover .card__overlay {
  transform: translateY(0);
}

.card__header {
  position: relative;
  display: flex;
  align-items: center;
  gap: 2em;
  padding: 2em;
  border-radius: calc(var(--curve) * 1px) 0 0 0;    
  background-color: var(--surface-color);
  transform: translateY(-100%);
  transition: .2s ease-in-out;
}

.card__arc {
  width: 80px;
  height: 80px;
  position: absolute;
  bottom: 100%;
  right: 0;      
  z-index: 1;
}

.card__arc path {
  fill: var(--surface-color);
  d: path("M 40 80 c 22 0 40 -22 40 -40 v 40 Z");
}       

.card:hover .card__header {
  transform: translateY(0);
}

.card__thumb {
  flex-shrink: 0;
  width: 50px;
  height: 50px;      
  border-radius: 50%;      
}

.card__title {
  font-size: 1em;
  margin: 0 0 .3em;
  color: #6A515E;
}

.card__tagline {
  display: block;
  margin: 1em 0;
  font-family: "MockFlowFont";  
  font-size: .8em; 
  color: #D7BDCA;  
}

.card__status {
  font-size: .8em;
  color: #D7BDCA;
}

.card__description {
  padding: 0 2em 2em;
  margin: 0;
  color: #D7BDCA;
  font-family: "MockFlowFont";   
  display: -webkit-box;
  -webkit-box-orient: vertical;
  -webkit-line-clamp: 3;
  overflow: hidden;
}    </style>
<head>
<title>Welcome to Gaia consulting</title>
<%@include file="includes/navbar.jsp"%>
</head>
<body >
<div class="row">
				<%
				if (!products.isEmpty()) {

					for (Products p : products) {
				%>
                 <ul class="cards">
  <li>
    <a href="" class="card">
    <div class="containerIMG mt-3"
							style="width: 150px; height: 150px; margin: auto; display: block">
							<img class="card-img-top" src="images/<%=p.getImage()%>"
								alt="Card image cap">
								
						</div>
      <div class="card__overlay">
        <div class="card__header">
          <svg class="card__arc" xmlns="http://www.w3.org/2000/svg"><path /></svg>                     
          <img class="card__thumb" src="https://avantages-formations.fr/wp-content/uploads/2022/03/Certification.png" alt="" />
          <div class="card__header-text">
            <h3 class="card__title">Jessica Parker</h3>            
            <span class="card__status">1 hour ago</span>
          </div>
          
        </div>
        
        <p class="card__description">Lorem ipsum dolor sit amet consectetur adipisicing elit. Asperiores, blanditiis?</p>
      </div>
      <div class="mt-3 d-flex justify-content-between">
								<a href="add-to-cart?id=<%=p.getId()%>" class="btn btn-danger">Add
									to cart</a> <a href="order-now?quantity=1&id=<%=p.getId()%>"
									class="btn btn-success">Buy now</a>
    </a>      
  </li>
    
</ul>
	<%
			}

			}
			%>
		</div>
<footer><%@include file="../includes/footer.jsp"%></footer>
</body>

</html>