<?php include 'database.php';?>
<?php session_start(); ?>
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
		<h2>You're Done!</h2>
		<p>Correct Ansers: <?php echo $_SESSION['score']; ?>
		<p>Incorrect Ansers: <?php echo (4-$_SESSION['score']); ?>
		<?php $_SESSION['score']=0; ?> <br/><br/>
		<a href="index.php" class="start"><button>Take Again</button></a>
	</div>
	</main>
</body>
