<?php
	include 'includes/session.php';
	include 'includes/slugify.php';

	if(isset($_POST['edit'])){
		$id = $_POST['id'];
		$name = $_POST['name'];
		$slug = slugify($name);
		$description = $_POST['description'];

		
		$conn = $pdo->open();

		try{
			$stmt = $conn->prepare("UPDATE news SET name=:name, slug=:slug, description=:description WHERE id=:id");
			$stmt->execute(['name'=>$name, 'slug'=>$slug, 'description'=>$description, 'id'=>$id]);
			$_SESSION['success'] = 'News updated successfully';
		}
		catch(PDOException $e){
			$_SESSION['error'] = $e->getMessage();
		}
		
		$pdo->close();
	}
	else{
		$_SESSION['error'] = 'Fill up edit news form first';
	}

	header('location: news.php');

?>