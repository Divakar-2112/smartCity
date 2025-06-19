  function togglePassword() {
    const passwordInput = document.getElementById("password");
    const toggleIcon = document.getElementById("togglePassword");

    const isHidden = passwordInput.type === "password";
    passwordInput.type = isHidden ? "text" : "password";

    toggleIcon.classList.toggle("fa-eye-slash");
    toggleIcon.classList.toggle("fa-eye");
  }
