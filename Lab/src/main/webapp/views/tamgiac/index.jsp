<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<title>Hinh Tam Giac</title>
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" />
</head>
<body>
	<div class="container">
		<form action="tamgiac" method="post">
			<div>
				<span class="fs-2 fw-bold">HINH TAM GIAC</span>
			</div>
			<div class="row">
				<div class="col-12 input-group mt-3">
					<input class="form-control" name="a" type="text" placeholder="canh a" />
				</div>
				<div class="col-12 input-group mt-3">
					<input class="form-control" name="b" type="text" placeholder="canh b" />
				</div>
				<div class="col-12 input-group mt-3">
					<input class="form-control" name="c" type="text" placeholder="canh c" />
				</div>
			</div>
			<hr />
			<div class="btn-group">
				<button class="btn btn-info" formaction="dientich">Tinh dien tich</button>
				<button class="btn btn-success" formaction="chuvi">Tnh chu vi</button>
			</div>
		</form>
		
		<div>
			<span class="fs-4 fw-bold">${ message }</span>
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
