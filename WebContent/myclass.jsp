<%@page contentType="text/html"%>
<%@page pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE HTML>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Online Class Room</title>

<script src="js/jquery.min.js"></script>
<script src="js/responsiveslides.min.js"></script>
<script type="text/javascript" src="js/move-top.js"></script>
<script type="text/javascript" src="js/easing.js"></script>
<link rel="shortcut icon" href="images/favicon.ico" />
<link rel="stylesheet" type="text/css" href="css/bootstrap.css" />
<link rel="stylesheet" type="text/css" href="css/testmonial.css" />
<link rel="stylesheet" type="text/css" href="css/theme-style.css" />
<link rel="stylesheet" type="text/css" href="css/font-awesome.min.css" />
</head>
<body>
	<div id="home" class="header scroll">
		<div class="container"
			style="padding-left: 0px; padding-right: 0px; margin-left: 100px; margin-right: 0px; width: 1500px;">
			<div class="logo" title="logo"></div>
			<nav class="top-nav">
				<ul class="top-nav" style="width: 1000px;">
					<c:forEach items="${lstMenu}" var="menu">
						<li class="page-scroll"><a href=${menu.menuURL
							}
							class="scroll" style="width: 200px; height: 50px;">${menu.menuName}</a></li>
					</c:forEach>
				</ul>
				<a href="#" id="pull"></a>
			</nav>
			<div class="clearfix"></div>
		</div>
	</div>
	<div class="clearfix"></div>
	<div id="port" class="portfolio portfolio-box">
		<div class="container">
			<h3>My Class Course</h3>
		</div>
		<div
			style="padding-left: 175px; padding-right: 150px; padding-top: 50px; padding-bottom: 50px;">
			<table id="enrolltable"
				class="table table-striped table-bordered dataTable">

				<tr align="center">
					<th>S/No</th>
					<th>Course Title</th>
					<th>Course Category</th>
					<th>Action</th>
				</tr>

				<c:forEach var="courses" items="${lstCourses }" varStatus="loop">
					<tr>
						<td>${loop.index +1}</td>
						<td><a
							href="MyClassServlet?viewdetail=${courses.courseCode }">${courses.courseTitle }</a></td>
						<td>${courses.courseCategory}</td>
						<td><a
							href="AddEditCourseServlet?editCourse=${courses.courseCode }">Edit</a></td>
						<%-- <td id="result${loop.index +1}" colspan="2"><span
							class="submit-btn"> <input type="button" value="Reject"
								onclick="approveOrRejectEnrolledCourse('${enrolledCourse.loginName}', '${enrolledCourse.courseId }' ,'R','result${loop.index +1}' )">
						</span> &nbsp; <span class="submit-btn"> <input type="button"
								value="Approve"
								onclick="approveOrRejectEnrolledCourse('${enrolledCourse.loginName}', '${enrolledCourse.courseId }' ,'A','result${loop.index +1}')">
						</span></td> --%>
					</tr>
				</c:forEach>
				<tr>
					<td colspan="4" align="center"
						style="padding-top: 15px; padding-bottom: 15px;"><a
						href="addeditcourse.jsp" class="artbtn artbtn1">Add Course</a></td>
				</tr>
			</table>
		</div>

	</div>

	<div class="clearfix"></div>

	<div class="copy-right">
		<div class="container">
			<p>
				Copyright &copy; 2014.Company name All rights reserved.<a
					target="_blank" href="#"></a>
			</p>

		</div>
	</div>
</body>
</html>