<?php include 'database.php';?>
<!DOCTYPE html>
<html>
	<head>
	<meta charset="utf-8" />
	<title>Are You Smarter Than</title>
	<link rel="stylesheet" type="text/css" href="css/link.css" />
	</head>
<body>
	<header>
		<div class="container">
			<h1>Are you smarter than...</h1>
		</div>
	</header>
	<main>
		<div class="container">
			<h2> Take the quiz to find out!</h2><br>
			<form method="post" action="question.php?n=1">  <ul> <!-- <form method="post" action="question.php"> <input typt="submit" class= "start" name="start"/-->
			  <li> <label for="grade"> <b>Choose a grade level:</b></label>
			  <select name="grade" id="grade">
				<option value="1">1</option>
				<option value="2">2</option>
				<option value="3">3</option>
				<option value="4">4</option>
				<option value="5">5</option>
			  </select> </li>
			  <br>
			  <li> <label for="category"><b>Choose a category:</b></label>
			  <select name="category" id="category">
				<option value="english">English</option>
				<option value="math">Math</option>
				<option value="geography">Geography</option>
			  </select> </li>
			</form>
			  <br><br>
			  <!--a href="question.php?n=1" name="start" class="start">Start Quiz</a-->
			  <a href="question.php?n=1" name="start" class="start"> <input type="submit"/></a>
		</div>
	</main>
</body>
</html>
