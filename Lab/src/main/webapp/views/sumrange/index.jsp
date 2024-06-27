<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<title>Sum range</title>
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" />
</head>
<body>
	<div class="container">
		<form action="sumrange" method="post">
			<div class="mb-3">
				<label for="exampleInputEmail1" class="form-label">Sum from:</label>
				<input type="text" class="form-control" id="exampleInputEmail1" name="a"
					autocomplete="off">
			</div>
			<div class="mb-3">
				<label for="exampleInputPassword1" class="form-label">To</label> <input
					type="text" class="form-control" id="exampleInputPassword1" name="b"
					autocomplete="off">
			</div>
			<button class="btn btn-primary">Sum Range</button>
		</form>
		<hr>
		<div>
			${ result }
		</div>
	</div>

	<!-- Bootstrap JS and dependencies -->
	<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.3/dist/umd/popper.min.js"></script>
	<script
		src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>