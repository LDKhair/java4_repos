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
			<div class="card-header">
				<h1>Register</h1>
			</div>
			<div class="card-body">
				<form action="RegisterServlet" method="post">
					<div class="mb-3">
						<label for="exampleInputEmail1" class="form-label fw-medium">Username</label>
						<input type="text" class="form-control" id="exampleInputEmail1"
							name="username">
					</div>
					<div class="mb-3">
						<label for="exampleInputPassword1" class="form-label fw-medium">Password</label>
						<input type="password" class="form-control"
							id="exampleInputPassword1" name="password">
					</div>
					<div class="mb-3">
						<div class="mb-2">
							<span class="form-label fw-medium">Gender</span>
						</div>
						<div class="form-check">
							<input class="form-check-input" type="radio" name="gender"
								value="true" id="flexRadioDefault1"> <label
								class="form-check-label" for="flexRadioDefault1"> Male </label>
						</div>
						<div class="form-check">
							<input class="form-check-input" type="radio" name="gender"
								value="false" id="flexRadioDefault2" checked> <label
								class="form-check-label" for="flexRadioDefault2"> Female
							</label>
						</div>
					</div>
					<div class="form-check">
						<input class="form-check-input" type="checkbox" value=""
							name="married" id="flexCheckChecked"> <label
							class="form-check-label" for="flexCheckChecked"> Married?
						</label>
					</div>
					<div class="mb-3">
						<div class="mb-2">
							<span class="form-label fw-medium">Nation</span>
						</div>
						<select class="form-select" aria-label="Default select example"
							name="nation">
							<option value="American" selected>American</option>
							<option value="Vietnamese">Vietnamese</option>
							<option value="Chinese">Chinese</option>
						</select>
					</div>
					<div class="mb-3">
						<div class="mb-2">
							<span class="form-label fw-medium">Hobbies</span>
						</div>
						<div class="form-check">
							<input class="form-check-input" type="checkbox"
								value="Listen to music" name="hobbies" id="flexCheckDefault">
							<label class="form-check-label" for="flexCheckDefault">
								Listen to music </label>
						</div>
						<div class="form-check">
							<input class="form-check-input" type="checkbox" value="Read book"
								name="hobbies" id="flexCheckChecked"> <label
								class="form-check-label" for="flexCheckChecked"> Read
								book </label>
						</div>
						<div class="form-check">
							<input class="form-check-input" type="checkbox" value="Cooking"
								name="hobbies" id="flexCheckDefault"> <label
								class="form-check-label" for="flexCheckDefault"> Cooking
							</label>
						</div>
						<div class="form-check">
							<input class="form-check-input" type="checkbox" value="Camping"
								name="hobbies" id="flexCheckChecked"> <label
								class="form-check-label" for="flexCheckChecked"> Camping
							</label>
						</div>
					</div>
					<div class="mb-3">
						<label for="validationTextarea" class="form-label fw-medium">Notes</label>
						<textarea class="form-control" name="notes"
							id="validationTextarea" placeholder="Notes..." required></textarea>
					</div>
					<hr>
					<button type="submit" class="btn btn-primary">Done</button>
				</form>
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
