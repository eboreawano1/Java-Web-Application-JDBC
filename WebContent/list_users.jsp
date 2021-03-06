<!doctype html>
<html lang="en">
  <head>
    <title>Basic Web Page</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <link href="https://fonts.googleapis.com/css?family=Playfair+Display:400,700,900|Rubik:300,400,700" rel="stylesheet">

    <link rel="stylesheet" href="css/bootstrap.css">
    <link rel="stylesheet" href="css/animate.css">
    <link rel="stylesheet" href="css/owl.carousel.min.css">

    <link rel="stylesheet" href="fonts/ionicons/css/ionicons.min.css">
    <link rel="stylesheet" href="fonts/fontawesome/css/font-awesome.min.css">
    <link rel="stylesheet" href="css/magnific-popup.css">

    <!-- Theme Style -->
    <link rel="stylesheet" href="css/style.css">
  </head>
  <body>
	<jsp:include page="include/header.jsp"></jsp:include>
	<%@ page import="java.sql.ResultSet" %>
	<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    <section class="site-hero site-hero-innerpage overlay" data-stellar-background-ratio="0.5" style="background-image: url(images/Green-Background-Image-CSS-Wallpaper.png);">
      <div class="container">
        <div class="row align-items-center site-hero-inner justify-content-center">
          <div class="col-md-12 text-center">

            <div class="mb-5 element-animate">
              <h1>Basic Web Page</h1>
              <p>A simple page to demonstrate basic back-end Java development.</p>
            </div>

          </div>
        </div>
      </div>
    </section>
    <!-- END section -->
    
	<br/><br/><br/><br/>
	<table>
	<th>User ID</th>
	<th>Name</th>
	<th>Email</th>
	<th>Options</th>
		<c:forEach var="temp" items="${users}">
			<c:url var="tempURL" value="Controller">
			<c:param name="page" value="updateUser"/>
			<c:param name="user_id" value="${temp.user_id}"></c:param>
			</c:url>
			
			<c:url var="tempURL2" value="Controller">
			<c:param name="page" value="deleteUser"/>
			<c:param name="user_id" value="${temp.user_id}"></c:param>
			</c:url>
			
			<tr>
				<td>${temp.user_id}</td>
				<td>${temp.name}</td>
				<td>${temp.email}</td>
				<td><a href="${tempURL}">Update</a> | <a href="${tempURL2}" onclick="return confirm('are you sure?')">Delete</a></td> 
			</tr>
		</c:forEach>
	</table>
	<br/><br/><br/><br/><br/>
	<style>
		table, th, td {
		   border: 1px solid black;
		}
	</style>
	<jsp:include page="include/footer.jsp"></jsp:include>
	
    <!-- loader -->
    <div id="loader" class="show fullscreen"><svg class="circular" width="48px" height="48px"><circle class="path-bg" cx="24" cy="24" r="22" fill="none" stroke-width="4" stroke="#eeeeee"/><circle class="path" cx="24" cy="24" r="22" fill="none" stroke-width="4" stroke-miterlimit="10" stroke="#f4b214"/></svg></div>

    <script src="js/jquery-3.2.1.min.js"></script>
    <script src="js/jquery-migrate-3.0.0.js"></script>
    <script src="js/popper.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/owl.carousel.min.js"></script>
    <script src="js/jquery.waypoints.min.js"></script>
    <script src="js/jquery.stellar.min.js"></script>

    <script src="js/jquery.magnific-popup.min.js"></script>
    <script src="js/magnific-popup-options.js"></script>

    <script src="js/main.js"></script>
  </body>
</html>