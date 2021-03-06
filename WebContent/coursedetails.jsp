<%@page contentType="text/html"%>
<%@page pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE HTML>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Online Class Room</title>

<script src="js/jquery.min.js"></script>

<script type="text/javascript" src="js/move-top.js"></script>
<script type="text/javascript" src="js/easing.js"></script>
<script type="text/javascript" src="js/onlineclass.js"></script>
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
	<div class="testmonials">
		<div class="container">
			<div class="client-pic col-md-4">
				<img src="images/client.jpg" title="name" />
			</div>
			<div class="client-sys col-md-8">
				<div class="gallery items-3">
					<figure class="item">
						<h3>${course.courseTitle }:</h3>
						<p class="client-says">
							<span class="left-quit"> &#8220; </span> &nbsp;
							${course.courseShortDesc }<span class="right-quit">
								&#8221;</span>
						</p>
					</figure>

					<div class="clearfix"></div>
				</div>

			</div>

			<div class="clearfix"></div>
		</div>
	</div>
	<div class="clearfix"></div>
	<c:if test="${not empty course.aboutCourse }">
		<div class="blog-grids">
			<div class="col-md-10 ">
				<div class="artical-info" style="padding-left: 250px;">
					<div class="post-head">
						<div class="post-head-left">
							<h4>
								<a href="#">About Course</a>
							</h4>
						</div>
						<div class="clearfix"></div>
					</div>
					<p class="post-text">${course.aboutCourse }</p>
					<div class="clearfix"></div>
				</div>
			</div>
			<c:if test="${not empty course.courseSyallbus }">
				<div class="col-md-7">
					<div class="artical-info" style="padding-left: 250px;">
						<div class="post-head">
							<div class="post-head-left">
								<h4>
									<a href="#">Course Syllabus</a>
								</h4>
							</div>
							<div class="clearfix"></div>
						</div>
						<p class="post-text">${course.courseSyallbus }</p>
						<div class="clearfix"></div>
					</div>
				</div>
				<c:if test="${not detailviewcourse }">
					<div class="col-md-3">
						<div class="artical-info">
							<div class="post-head">
								<div class="post-head-left">
									<h4>
										<a href="#">Upcoming Session</a>
									</h4>
								</div>
								<div class="clearfix"></div>
							</div>
							<div class="post-bottom-right">
								<a class="artbtn artbtn1" href="#openModal">Enroll</a>
							</div>
							<div class="clearfix"></div>
						</div>
					</div>
				</c:if>
				<c:if test="${detailviewcourse }">
					<div class="col-md-3">
						<div class="artical-info">
							<div class="post-head">
								<div class="post-head-left">
									<h4>
										<a href="#">Comments</a>
									</h4>
								</div>
								<div class="clearfix"></div>
								<div class="post-bottom-center">
									<br>
									<div id="commentTable">
										<table>
											<c:forEach items="${course.lstComments }" var="comments">
												<tr>
													<td><b> ${comments.commentedBy } : </b></td>
													<td>${comments.commentsValue }</td>
												</tr>

											</c:forEach>
										</table>
									</div>
									<table>
										<tr>
											<td><input type="text" name="comment" id="comment"></td>
											<td><input type="button" value="Comment"
												onclick="addComments('${course.courseCode}')"></td>
										</tr>
									</table>
								</div>
							</div>
							<div class="clearfix"></div>
						</div>
					</div>
				</c:if>
			</c:if>

		</div>
	</c:if>


	<div class="clearfix"></div>

	<div class="copy-right">
		<div class="container">
			<p>
				Copyright &copy; 2014.Company name All rights reserved.<a
					target="_blank" href="#"></a>
			</p>

		</div>
	</div>

	<div id="openModal" class="modalDialog">
		<div>
			<a href="#close" title="Close" class="close">X</a>
			<h2>${course.courseTitle }</h2>
			<p>Your course request will be submit to administrator</p>
			<div class="post-bottom-right">
				<a class="artbtn artbtn1"
					href="EnrollCourseServlet?courseCode=${course.courseCode }">Enroll</a>
			</div>
			<div class="clearfix"></div>
		</div>
	</div>
</body>
</html>
