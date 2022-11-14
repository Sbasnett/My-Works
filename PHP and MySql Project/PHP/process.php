<?php include 'database.php';?>
<?php session_start(); ?>
<?php
//Get input
	$inputGrade = $_SESSION['inGrade'];
	$inputCategory = $_SESSION['inCategory'];
	//Check to see if score is set_error_handler
	if( !isset($_SESSION['score']) ){
		$_SESSION['score'] = 0;
	}
	if($_POST){
		$number = $_POST['number'];  // ['number'] is from question.php <input name = "number" >
		$selected_choice = $_POST['selection'];	// ['choice'] is from question.php <input name = "choice">
		$next = $number+1;
	//Get correct choice
	$query = "SELECT * FROM questions
					WHERE grade = '$inputGrade' AND category = '$inputCategory' AND question_no = $number";
	//Get result
	$result = $mysqli->query($query) or die($mysqli->error.__LINE__);
	//Get row
	$row = $result->fetch_assoc();
	//Set correct choice
	$correct_choice = $row['right'];
		//Compare
		if($correct_choice == $selected_choice){
			//Answer is correct
			$_SESSION['score']++;
		}
		//Check if last question
		if($number == 4){
			header("Location: final.php");
			exit();
		} else{
			header("Location: question.php?n=".$next);
		}
	}
