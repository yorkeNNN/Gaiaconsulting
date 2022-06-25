<%@page import="com.gaiaconsulting.model.User" %>

<style>
*{
  box-sizing: border-box;
}




</style>
</head>
<link rel=stylesheet title="Search" href="search.css" >
<body>
<%User auth1 = (User) request.getSession().getAttribute("auth"); %>
  <br>
<div class="w3-top">

  <div class="w3-bar w3-black w3-card">
    <a class="w3-bar-item w3-button w3-padding-large w3-hide-medium w3-hide-large w3-right" href="javascript:void(0)" onclick="myFunction()" title="Toggle Navigation Menu"><i class="fa fa-bars"></i></a>
    <a href="Home2.jsp" class="w3-bar-item w3-button w3-padding-large">Home</a>
     <a href="index.jsp" class="w3-bar-item w3-button w3-padding-large w3-hide-small">Formations</a>
    <a href="cart.jsp" class="w3-bar-item w3-button w3-padding-large w3-hide-small">Panier<span class="badge badge-danger px-1"> ${cart_list.size()}</span></a>
    <div class="w3-dropdown-hover w3-hide-small">
      <button class="w3-padding-large w3-button" title="Orders" >Commandes <i class="fa fa-caret-down"></i></button>     
      <div class="w3-dropdown-content w3-bar-block w3-card-4">
          <a href="orders.jsp" class="w3-bar-item w3-button">Mes commandes</a>
        <a href="myOrders2.jsp" class="w3-bar-item w3-button">Historique </a>
     </div>
    </div>
    <a href="messageUs.jsp" class="w3-bar-item w3-button w3-padding-large w3-hide-small">Contact</a>
 
    <div class="w3-dropdown-hover w3-hide-small">
      <button class="w3-padding-large w3-button" title="More">More <i class="fa fa-caret-down"></i></button>     
      <div class="w3-dropdown-content w3-bar-block w3-card-4">
        <a href="#" class="w3-bar-item w3-button">A propos</a>
        <a href="#" class="w3-bar-item w3-button">FAQ</a>
        
      </div>
    </div>
     <!--  <div class="search-container">
    <form action="searchHome.jsp" method="post" >
    <br>
    <input type="text" placeholder="search" name="search">
    <button type="submit"><a href="javascript:void(0)" class="w3-padding-large w3-hover-red w3-hide-small w3-right"></a><i class="fa fa-search"></i></button>
  </div> -->
  <div search-container style="text-align:right";margin-top: 20px>
	<form action="searchHome.jsp" method="post" >
		<input type="text" placeholder="search" name="search">
		<button type="submit">
			<i class="fa fa-search"></i>
		</button>	

    
 
    <%if(auth1 !=null){
						%>
						<a href="log-out" class="w3-bar-item w3-button w3-padding-large w3-hide-small">Log out</a>
						

						
						<% }else{%>
							<a href="login.jsp" class="w3-bar-item w3-button w3-padding-large w3-hide-small">Sign in</a>
							<a href="signup.jsp" class="w3-bar-item w3-button w3-padding-large w3-hide-small">Sign up</a>
	
		     			<% } %>
		     		<!-- 	  <div class="search-box" style= "text-align:right">
		     			  <form action="searchHome.jsp" method="post" >
    <button class="btn-search" type="submit"><i class="fas fa-search"></i></button>
    <input type="text" class="input-search" placeholder="search" name="search">
	 </form>-->
	 	     </div>
	 	     			
	  </form> 
    


  </div> 
</div>

<!-- 
	<ul>
  <li><a class="active" href="index.jsp">Home</a></li>
  <li><a href="cart.jsp">Cart<span class="badge badge-danger px-1"> ${cart_list.size()}</span></a></li>
  <li><a href="cart.jsp">Cart</a></li>

    <li><a href="signup.jsp">Sign in</a></li>
  <li><a href="messageUs2.jsp">Contact</a></li>
<%--  
   <%if(auth1 !=null){
						%> --%>
<li><a href="orders.jsp">Orders</a></li>

<li><a href="logout.jsp">Logout</a></li>
<%-- <% }else{%> --%>

  <li> <a href="login.jsp">Login</a></li></ul>
  <br>
					
				<%-- 	<% } %>--%>
	j'appel ma div search-container	 
	<div align="right""search-container">
	<form action="searchHome.jsp" method="post" >
		<input type="text" placeholder="search" name="search">
		<button type="submit">
			<i class="fa fa-search"></i>
		</button></form>
		</div>-->
 <%-- <nav class="navbar navbar-expand-lg navbar-light bg-light">
	<div class="container">
		<div class="container-fluid">
		<!-- 	<a class="navbar-brand" href="index.jsp" color="">XPROD</a>
			
			 -->
			
			
			
			<button class="navbar-toggler" type="button"
				data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent"
				aria-controls="navbarSupportedContent" aria-expanded="false"
				aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>
			<div class="collapse navbar-collapse" id="navbarSupportedContent">
			
				<ul class="navbar-nav ml-auto ">
					<li class="active"><a class="nav-link active"
						aria-current="page" href="index.jsp">index</a></li>
					<li class="nav-item"><a class="nav-link" href="cart.jsp">Cart<span class="badge badge-danger px-1"> ${cart_list.size()}</span></a>
					<%if(auth1 !=null){
						%>
					
					<li class="nav-item"><a class="nav-link" href="orders.jsp">orders</a>
					</li>
					<li class="nav-item"><a class="nav-link" href="log-out">Log
							out</a>
							<div class="search-container">
	<!-- j'appel ma div search-container	 -->
	<form action="searchHome.jsp" method="post">
		<input type="text" placeholder="search" name="search">
		<button type="submit">
			<i class="fa fa-search"></i>
		</button></form>
		</div>
							<% }else{%>
					<li class="nav-item"><a class="nav-link" href="login.jsp">Log
							in</a></li>
								
								<li class="nav-item">
								<a class="nav-link" href="signup.jsp">Sign up</a>
								</li>
							<% } %>
				</ul> 
				
			</div>
			
	</div>
	
</nav> --%>