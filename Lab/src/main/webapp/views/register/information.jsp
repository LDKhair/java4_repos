<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<title>Register</title>
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" />
</head>
<body>
	<div class="container">
		<div class="card mt-3">
			<div class="card-header bg-info">
				<h1>Information</h1>
			</div>
			<div class="card-body">
				<table class="table">
					<thead>
						<tr>
							<th scope="col">Username</th>
							<th scope="col">Password</th>
							<th scope="col">Gender</th>
							<th scope="col">Married</th>
							<th scope="col">Hobbies</th>
							<th scope="col">Nation</th>
							<th scope="col">Notes</th>
						</tr>
					</thead>
					<tbody>
						<tr>
							<td>${user.username}</td>
							<td>${user.password}</td>
							<td>${user.gender}</td>
							<td>${user.married}</td>
							<td>${user.hobbies}</td>
							<td>${user.nation}</td>
							<td>${user.note}</td>
						</tr>
					</tbody>
				</table>
			</div>
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
