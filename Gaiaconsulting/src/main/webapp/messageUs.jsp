<html>
<head>
<link rel="stylesheet" href="css/messageUs.css">
<script src='https://kit.fontawesome.com/a076d05399.js'></script>
<title>Message Us</title>
</head>
<body style= "margin-top:20px">
	<%@include file="includes/navbar.jsp"%>

<div style="color:black; text-align: center; font-size: 30px;">Message Us <i class='fas fa-comment-alt'></i></div>

<h4 style="text-align:center; ;">Avantages Formations Expert en Formations � Distance vous accompagne dans toutes vos d�marches</h4>

<h5 style="text-align:center;color:Grey; ">FAITES-VOUS RAPPELER PAR UN DE NOS CONSULTANTS FORMATION</h5>
<p style="text-align:center"> Gaia consulting est � votre enti�re disposition au 01 60 17 05 29
du lundi au vendredi de 9h � 13h et de 14h � 17h </p>
</h3>
	<div class="container">
		<div class="signup">
			<div class="card mx-auto my-5">
				<div class="card-header text-center">Register</div>
				<div class="card-body">
					<form action="register-user" method="post">
					
						<div class="form-group">						
						 <label>Nom</label>						
						   <input type="text"name="name" class="form-control" placeholder="Entrer votre nom"required>
						   <label>Pr�nom</label>						
						   <input type="text"name="pr�nom" class="form-control" placeholder="Entrer votre pr�nom"required>
						
							<label>Email</label> <input type="email"
								class="form-control" name="email"
								placeholder="Entrer votre email" required>
						</div>
					
						<div class="form-group">
							<label>T�l�phone</label> <input type="text"
								class="form-control"  name="mobileNumber"
								placeholder="Enter the phone number" required>
						</div>
						<div class="form-group">
							<label>Question de s�curit�</label> <select name="securityQuestion">
							
								<option value="My problem is about my order  ">Je suis interress� par une de vos formation ?</option>
								<option value="J'ai besoin de m'entretenir avec un conseiller">J'ai besoin de m'entretenir avec un conseiller</option>
								<option value="J'ai rencontr� un soucis avec ma formation actuelle">J'ai rencontr� un soucis avec ma formation actuelle</option>
								<option value="Other">Autre...</option>
								</select>
								<input type="text" class="form-control" name ="answer" placeholder="Veuillez �crire votre r�ponse " required>
						</div>
						<div class="text-center">
							<button type="submit" class="btn btn-success" value="signup">Send</button>
						</div>
					</form>
					<h4>
					<a href="index.jsp">Retour</a>
				</h4>
				</div>
			</div>

				
			</div>
			<div class="whysign">
			<%
			String msg = request.getParameter("msg");
			if("valid".equals(msg)){%>
				<h1>SuccessFull Registered</h1>
			<% }%>
					<%
					if("valid".equals(msg)){%>
					<h1>Some things went wrong ! Try again</h1>
				<% }%>
			
			
			</div>
	</div>	

<br><br><br>
</body>
<footer><%@include file="includes/footer.jsp"%></footer>
</html>