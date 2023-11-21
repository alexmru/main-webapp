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
    <script>
        function validateForm() {
            formIsValid = username && fullName && emailIsValid && phoneNumberIsValid && passwordIsValid && confirmPasswordIsValid;
            if (formIsValid) {
                signUpBtn = document.querySelector("button[type='submit']");
                signUpBtn.classList.remove("disabled");
            }
        }

        let usernameIsValid = false;
        let fullNameIsValid = false;
        let emailIsValid = false;
        let phoneNumberIsValid = false;
        let passwordIsValid = false;
        let confirmPasswordIsValid = false;

        let username = document.getElementById("username");
        let fullName = document.getElementById("fullName");
        let email = document.getElementById("email");
        let phoneNumber = document.getElementById("phoneNumber");
        let password = document.getElementById("password");
        let confirmPassword = document.getElementById("confirmPassword");

        // Validate Username
        username.addEventListener('change', () => {

            usernameIsValid = false;

            let error = document.getElementById("usernameHelp");
            const usernameRegex = /^[a-zA-Z1-9]+$/;
            // Validate the length of the content
            if (username.value.length == 0) {
                error.textContent = "Username must not be empty!";
                error.classList.remove("d-none");
            } else if (!usernameRegex.test(username.value)) {
                error.textContent = "Username must contain only alphanumeric characters!";
                error.classList.remove("d-none");
            } else {
                error.classList.add("d-none");
                usernameIsValid = true;
            }

            validateForm();
        })


        // Validate full name
        fullName.addEventListener('change', () => {

            fullNameIsValid = false;
            let error = document.getElementById("fullNameHelp");
            const nonLatinRegex = /[^a-z A-z]+/;
            const fullNameRegex = /^[a-zA-Z]+( [a-zA-Z]+)+$/;
            console.log("name is " + fullName.value);
            if (fullName.value.length == 0) {
                error.textContent = "Full name must not be empty!";
                error.classList.remove("d-none");
            } else if (nonLatinRegex.test(fullName.value)) {
                error.textContent = "Full name must only contain latin characters";
                error.classList.remove("d-none");
            }
            else if (!fullNameRegex.test(fullName.value)) {
                error.textContent = "Full name must contain at least two names!";
                error.classList.remove("d-none");
            } else {
                error.classList.add("d-none");
                fullNameIsValid = true;
            }

            validateForm();
        })


        email.addEventListener('change', () => {
            emailIsValid = false;
            let error = document.getElementById("emailHelp");
            const emailRegex = /^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$/g;
            // Validate the length of the content
            if (email.value.length == 0) {
                error.textContent = "Email must not be empty!";
                error.classList.remove("d-none");
            } else if (!emailRegex.test(email.value)) {
                error.textContent = "Email is invalid!";
                error.classList.remove("d-none");
            } else {
                error.classList.add("d-none");
                console.log(error.classList);
                emailIsValid = true;
            }

            validateForm();
        })

        phoneNumber.addEventListener('change', () => {
            phoneNumberIsValid = false;
            let error = document.getElementById("phoneNumberHelp");
            phoneNumberRegex = /^0?[6,7,8][0-9]{7}$/;

            console.log(phoneNumber.value);
            if (phoneNumber.value.length == 0) {
                error.textContent = "Phone number must not be empty!";
                error.classList.remove("d-none");
            } else if (!phoneNumberRegex.test(phoneNumber.value)) {
                error.textContent = "Phone number is invalid!";
                error.classList.remove("d-none");
            } else {
                error.classList.add("d-none");
                console.log(error.classList);
                phoneNumberIsValid = true;
            }


        })
        password.addEventListener('change', () => {
            passwordIsValid = false;
            let error = document.getElementById("passwordHelp");
            phoneNumberRegex = /^0?[6,7,8][0-9]{7}$/;

            console.log(phoneNumber.value);
            if (password.value.length == 0) {
                error.textContent = "Password must not be empty";
                error.classList.remove("d-none");
            // } else if (!phoneNumberRegex.test(phoneNumber.value)) {
            //     error.textContent = "Phone number is invalid!";
            //     error.classList.remove("d-none");
            } else {
                error.classList.add("d-none");
                passwordIsValid = true;
            }

            validateForm();

        })
        confirmPassword.addEventListener('change', () => {
            confirmPasswordIsValid = false;

            let error = document.getElementById("confirmPasswordHelp");
            if (confirmPassword.value === password.value) {
                error.classList.add("d-none");
                console.log(error.classList);
                confirmPasswordIsValid = true;
            } else {
                error.textContent = "Password do not match!";
                error.classList.remove("d-none");
            }
            validateForm();
        })





    </script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL"
        crossorigin="anonymous"></script>
</body>

</html>