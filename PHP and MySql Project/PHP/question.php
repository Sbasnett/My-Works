<?php include 'database.php';?>
<?php session_start(); ?>
<?php
	//Get input
	$inputGrade = filter_input(INPUT_POST, 'grade');
	$inputCategory = filter_input(INPUT_POST, 'category');
	if($inputGrade){
	$_SESSION['inGrade'] = $inputGrade;
	$_SESSION['inCategory'] = $inputCategory;
	}
	else{
	$inputGrade = $_SESSION['inGrade'];
	$inputCategory = $_SESSION['inCategory'];}
	//Set question number
	$number = (int) $_GET['n'];
	//Get question
	$query = "SELECT * FROM questions
				WHERE (grade = '$inputGrade' AND category = '$inputCategory' AND question_no = $number)";
				//print_r($query);
		//Get result
	$result = $mysqli->query($query) or die($mysqli->error.__LINE__);
	$question = $result->fetch_assoc();
	/*print_r($question);
	die();*/
	//$_SESSION['questNum'] = $question['question_number'];
?>
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
	</header> <br/>
	<main>
		<div class="container">
		<div class="current">Question <?php echo $number; ?></div>
		<p class="question">
		<?php echo $question['question']; ?>
		</p>
		<form method="post" action="process.php">
		<ul class="choices">
			<li><input name="selection" type="radio" value="<?php echo $question['option1']; ?>" /> <?php echo $question['option1']; ?> </li>
			<li><input name="selection" type="radio" value="<?php echo $question['option2']; ?>" /> <?php echo $question['option2']; ?> </li>
		</ul>
		<input type="submit" name= "submit" value="Submit"/>
		<input type="hidden" name="number" value="<?php echo $number; ?>"/>
		</form>
	</div>
	</main>
</body>
</html>
