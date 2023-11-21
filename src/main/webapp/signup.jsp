<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
    <title>Document</title>
    <style>
        /* form {
            margin: 30px 400px;
            padding: 50px;
            border: solid 1px;
            border-radius: 5px;
        } */
    </style>
</head>

<body>
    <form action="signup-action" method="POST">
        <legend>Sign Up</legend>
        <div class="mb-3">
            <label for="username" class="form-label">Username</label>
            <input type="text" class="form-control" id="username" aria-describedby="usernameHelp" name="username">
            <div id="usernameHelp" class="form-text d-none text-danger">Invalid Username</div>
        </div>
        <div class="mb-3">
            <label for="fullName" class="form-label">Full Name</label>
            <input type="text" class="form-control" id="fullName" aria-describedby="fullNameHelp" name="fullname">
            <div id="fullNameHelp" class="form-text d-none text-danger">Invalid Full Name</div>
        </div>
        <div class="mb-3">
            <label for="email" class="form-label">Email address</label>
            <input type="email" class="form-control" id="email" aria-describedby="emailHelp" name = "email">
            <div id="emailHelp" class="form-text d-none text-danger">Invalid Email</div>
        </div>
        <div class="mb-3">
            <label for="phoneNumber" class="form-label">Phone Number</label>
            <input type="text" class="form-control" id="phoneNumber" aria-describedby="phoneNumberHelp" name="phonenumber">
            <div id="phoneNumberHelp" class="form-text d-none text-danger">Invalid Phone Number</div>
        </div>
        <div class="mb-3">
            <label for="password" class="form-label">Password</label>
            <input type="password" class="form-control" id="password" name="password">
            <div id="passwordHelp" class="form-text d-none text-danger">Invalid Password</div>
        </div>
        <div class="mb-3">
            <label for="confirmPassword" class="form-label">Confirm Password</label>
            <input type="password" class="form-control" id="confirmPassword">
            <div id="confirmPasswordHelp" class="form-text d-none text-danger">Password Does Not Match!</div>
        </div>
        <button type="submit" class="btn btn-primary disabled">Sign Up</button>
    </form>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL"
        crossorigin="anonymous"></script>
</body>

</html>