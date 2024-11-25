document.getElementById("signupForm").addEventListener("submit", function(event) {
    event.preventDefault();

    const username = document.getElementById("username").value;
    console.log("Username:", username);  // Log the username to the console
    const password = document.getElementById("password").value;
    const confirmPassword = document.getElementById("confirm-password").value;
    const email = document.getElementById("email").value;

    // Clear previous error messages and styles
    const errorMessages = document.querySelectorAll('.error-message');
    errorMessages.forEach(message => {
        message.textContent = '';
    });

    const inputs = document.querySelectorAll('input');
    inputs.forEach(input => {
        input.style.borderColor = '';
    });

    let hasErrors = false;

    // Username validation
    const usernamePattern = /^[A-Za-z](?=.*[!@#$%^&*])[A-Za-z0-9!@#$%^&*]{2,24}[0-9]*$/;
    if (!usernamePattern.test(username)) {
        setError('username', 'Username must be 3-25 characters long, start with a letter, include at least one special character, and can only have numbers at the end.');
        hasErrors = true;
    }

    // Email validation
    const emailPattern = /^[^\s@]+@[^\s@]+\.[^\s@]+$/;
    if (!emailPattern.test(email)) {
        setError('email', 'Please enter a valid email address.');
        hasErrors = true;
    }

    // Password validation
    if (password.length < 8 ||
        !/[\d]/.test(password) ||
        !/[\w]/.test(password) ||
        !/[\W]/.test(password)) {
        setError('password', 'Password must be at least 8 characters long and contain at least one number, one uppercase letter, one lowercase letter, and one special character.');
        hasErrors = true;
    }

    // Confirm password validation
    if (password !== confirmPassword) {
        setError('confirm-password', 'Passwords do not match.');
        hasErrors = true;
    }

    // If no errors, submit the form
    if (!hasErrors) {
        // Handle form submission, e.g., send data to server or redirect
        alert("Sign Up Successful!");
        // window.location.href = "homepage.jsp"; // Replace with actual redirection logic
    }

    function setError(field, message) {
        const input = document.getElementById(field);
        const errorMessage = input.nextElementSibling;
        errorMessage.textContent = message;
        input.style.borderColor = 'red';
    }
});