<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Triangle</title>
    <link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" />
</head>
<body>
    <div class="container">
        <h2 class="mt-5">Enter the sides of the triangle</h2>
        <form action="triangle" method="post" class="mt-3">
            <div class="form-group">
                <label for="a">Side a:</label>
                <input type="number" step="any" class="form-control" id="a" name="a" required>
            </div>
            <div class="form-group">
                <label for="b">Side b:</label>
                <input type="number" step="any" class="form-control" id="b" name="b" required>
            </div>
            <div class="form-group mb-3">
                <label for="c">Side c:</label>
                <input type="number" step="any" class="form-control" id="c" name="c" required>
            </div>
            <button type="submit" class="btn btn-primary">Check</button>
        </form>
        
        <div class="mt-3">
        	<span>${ result }</span>
        </div>
    </div>
</body>
</html>
