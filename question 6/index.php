<?php 
	require_once "config.php";

	$result = mysqli_query($conn, "SELECT * FROM posts ORDER BY id DESC");

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
				<li class="nav-item active"><a href="#" class="nav-link">Home</a></li>
				<li class="nav-item"><a href="#" class="nav-link">About</a></li>
				<li class="nav-item"><a href="#" class="nav-link">Contact</a></li>
			</ul>
		</div>
	</div>
</nav>

<section id="content">
	<div class="container">
		<div class="row">
			<?php if(mysqli_num_rows($result) > 0){ ?>
				<?php while($post = mysqli_fetch_object($result)) { ?>
					<div class="col-md-4">
						<div class="card mb-3">
							<div class="card-body">
								<h4 class="card-title"><?= $post->title ?></h4>
								<p class="card-text">
									<?= substr($post->content, 0, 100) ?>...
								</p>
								<a href="/post.php?id=<?= $post->id ?>" class="btn btn-outline-primary">Read more</a>
							</div>
						</div>
					</div>
				<?php }} ?>
		</div>
	</div>
</section>


<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"></script>
</body>
</html>