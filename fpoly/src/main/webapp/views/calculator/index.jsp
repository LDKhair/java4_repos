<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Simple Calculator</title>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<style>
.calculator {
	max-width: 400px;
	margin: 50px auto;
	padding: 20px;
	border: 1px solid #ccc;
	border-radius: 10px;
	box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
}

.screen {
	height: 50px;
	font-size: 24px;
	text-align: right;
	padding: 10px;
	margin-bottom: 10px;
	border: 1px solid #ccc;
	border-radius: 5px;
	background-color: #f5f5f5;
}

.btn-custom {
	width: 25%;
	margin: 5px 0;
}
</style>
</head>
<body>

	<div class="calculator">
		<form action="/fpoly/Calculator" method="post">
			<div class="screen" id="screen">0</div>
			<div class="row">
				<button type="button" value="7" name="key"
					class="btn btn-light btn-custom">7</button>
				<button type="button" value="8" name="key"
					class="btn btn-light btn-custom">8</button>
				<button type="button" value="9" name="key"
					class="btn btn-light btn-custom">9</button>
				<button type="button" value="" name="key"
					class="btn btn-danger btn-custom">C</button>
			</div>
			<div class="row">
				<button type="button" value="4" name="key"
					class="btn btn-light btn-custom">4</button>
				<button type="button" value="5" name="key"
					class="btn btn-light btn-custom">5</button>
				<button type="button" value="6" name="key"
					class="btn btn-light btn-custom">6</button>
				<button type="button" value="" name="key"
					class="btn btn-warning btn-custom">/</button>
			</div>
			<div class="row">
				<button type="button" value="1" name="key"
					class="btn btn-light btn-custom">1</button>
				<button type="button" value="2" name="key"
					class="btn btn-light btn-custom">2</button>
				<button type="button" value="3" name="key"
					class="btn btn-light btn-custom">3</button>
				<button type="button" value="" name="key"
					class="btn btn-warning btn-custom">*</button>
			</div>
			<div class="row">
				<button type="button" value="0" name="key"
					class="btn btn-light btn-custom">0</button>
				<button type="button" value="" name="key"
					class="btn btn-light btn-custom">.</button>
				<button type="button" value="" name="key"
					class="btn btn-success btn-custom">=</button>
				<button type="button" value="" name="key"
					class="btn btn-warning btn-custom">+</button>
			</div>
			<div class="row">
				<button type="button" value="" name="key"
					class="btn btn-light btn-custom">-</button>
			</div>
		</form>
	</div>

	<!-- Bootstrap JS and dependencies -->
	<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.3/dist/umd/popper.min.js"></script>
	<script
		src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>
