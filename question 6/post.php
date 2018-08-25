<?php
	
	if(!isset($_GET['id'])){
		header('Location: /');
	}

	require_once "config.php";
	$id = $_GET['id'];
	$result = mysqli_query($conn, "SELECT * FROM posts JOIN users ON posts.create_by = users.id WHERE posts.id=$id");

	if(mysqli_num_rows($result) == 0){
		header('Location: /');
	}

	$post = mysqli_fetch_object($result);

?>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>Simple Blog</title>
	<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">
</head>
<body>

<nav class="navbar navbar-expand-lg navbar-dark bg-primary mb-5">
	<div class="container">
		<a href="/" class="navbar-brand">My Blog</a>
		<button class="navbar-toggler" data-toggle="collapse" data-target="#menu">
			 <span class="navbar-toggler-icon"></span>
		</button>
		
		<div class="collapse navbar-collapse" id="menu">
			<ul class="navbar-nav">
				<li class="nav-item"><a href="#" class="nav-link">Home</a></li>
				<li class="nav-item"><a href="#" class="nav-link">About</a></li>
				<li class="nav-item"><a href="#" class="nav-link">Contact</a></li>
			</ul>
		</div>
	</div>
</nav>

<div class="container">
	<section id="content">
		<h2 class="display-4"><?= $post->title ?></h2>
		<p class="lead">Created by: <?= $post->username ?></p>
		<p>
			<?= $post->content ?>
		</p>
	</section>

	<section id="comments">
		<div class="card">
			<div class="card-header">
				<h3>Komentar</h3>
			</div>
			<div class="card-body">
				<div class="row">
			<?php
				$q = mysqli_query($conn, "SELECT * FROM comments WHERE post_id=$post->id");
				if(mysqli_num_rows($q) == 0){
					echo "<h3 class='text-muted'>Tidak ada komentar</h2>";
				}else{
					while($row = mysqli_fetch_object($q)){ ?>
					<div class="col-sm-12 mb-2">
						<div class="card">
							<div class="card-body">
								<h3 class="card-title">User</h3>
								<p class="card-text">
									<?= $row->comment ?>
								</p>
							</div>
						</div>
					</div>
					<?php }} ?>
				</div>
			</div>	
		</div>
	</section>
</div>
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"></script>
</body>
</html>