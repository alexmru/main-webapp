
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




