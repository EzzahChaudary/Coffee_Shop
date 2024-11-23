document.getElementById("signupForm").addEventListener("submit", function(event) {
    event.preventDefault(); // Prevent form submission for validation

    const username = document.getElementById("username").value;
    const password = document.getElementById("password").value;
    const confirmPassword = document.getElementById("confirm-password").value;

    // Clear previous error messages
    document.querySelectorAll('.error-message').forEach(msg => msg.textContent = '');

    // Validation
    if (username.length < 3 || username.length > 25) {
        document.querySelector('input[name="username"] + .error-message').textContent = 'Username must be between 3 and 25 characters.';
    }

    if (password.length < 8 || 
        !/[a-z]/.test(password) || 
        !/[A-Z]/.test(password) || 
        !/[0-9]/.test(password) || 
        !/[!@#$%^&*]/.test(password)) {
        document.querySelector('input[name="password"] + .error-message').textContent = 'Password must include at least 8 characters, including 1 lowercase letter, 1 uppercase letter, 1 number, and 1 special character.';
    }

    if (password !== confirmPassword) {
        document.querySelector('input[name="confirm-password"] + .error-message').textContent = 'Passwords do not match.';
    }

    // If there are no errors, submit the form (here, just simulating a successful submission)
    if (username.length >= 3 && username.length <= 25 && 
        password.length >= 8 && 
        /[a-z]/.test(password) && 
        /[A-Z]/.test(password) && 
        /[0-9]/.test(password) && 
        /[!@#$%^&*]/.test(password) && 
        password === confirmPassword) {
        alert("Sign Up Successful!");
        // You could submit the form or perform any other actions
    }
});
