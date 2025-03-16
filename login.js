let users = [
    { email: "gautam22187@gmail.com", password: "12345678" },
    { email: "hariom22193@gmail.com", password: "user1234" },
    { email: "guruvender@gmail.com", password: "user4567" }
];

function validateLogin() {
    const email = document.getElementById("loginEmail").value;
    const password = document.getElementById("loginPassword").value;

    const validUser = users.find(user => user.email === email && user.password === password);

    if (validUser) {
        alert("Login successful!");
    } else {
        alert("Invalid email or password. Please try again.");
    }
}

function registerUser() {
    const name = document.getElementById("signupName").value;
    const email = document.getElementById("signupEmail").value;
    const password = document.getElementById("signupPassword").value;

    if (name === "" || email === "" || password === "") {
        alert("Please fill in all fields!");
        return;
    }

    if (!email.endsWith("@gmail.com")) {
        alert("Email must end with '@gmail.com'!");
        return;
    }

    if (password.length < 8) {
        alert("Password must be at least 8 characters long!");
        return;
    }

    const existingUser = users.find(user => user.email === email);
    if (existingUser) {
        alert("Email is already registered! Please log in.");
        return;
    }

    users.push({ email, password });
    alert("Sign-up successful! You can now log in.");
    
    showLogin();
}

function showSignUp() {
    document.getElementById("loginForm").style.display = "none";
    document.getElementById("signUpForm").style.display = "block";
}

function showLogin() {
    document.getElementById("loginForm").style.display = "block";
    document.getElementById("signUpForm").style.display = "none";
}

