<?php
	include 'includes/session.php';
	include 'includes/slugify.php';

	if(isset($_POST['edit'])){
		$id = $_POST['id'];
		$name = $_POST['name'];
		$slug = slugify($name);
		$category = $_POST['category'];
		$price = $_POST['price'];
		$stock_barang = $_POST['stock_barang'];
		$description = $_POST['description'];

		$conn = $pdo->open();

		try{
			$stmt = $conn->prepare("UPDATE products SET name=:name, slug=:slug, category_id=:category, price=:price, stock_barang=:stock, description=:description WHERE id=:id");
			$stmt->execute(['name'=>$name, 'slug'=>$slug, 'category'=>$category, 'price'=>$price, 'stock_barang'=>$stock_barang, 'description'=>$description, 'id'=>$id]);
			$_SESSION['success'] = 'Product updated successfully';
		}
		catch(PDOException $e){
			$_SESSION['error'] = $e->getMessage();
		}
		
		$pdo->close();
	}
	else{
		$_SESSION['error'] = 'Fill up edit product form first';
	}

	header('location: products.php');

?>