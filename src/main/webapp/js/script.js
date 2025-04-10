document.addEventListener('DOMContentLoaded', function() {
    // Add fade-in effect to the main content
    const main = document.querySelector('main');
    if (main) {
        main.style.opacity = 0;
        setTimeout(() => {
            main.style.transition = 'opacity 0.5s ease';
            main.style.opacity = 1;
        }, 100);
    }
    
    // Add active class to current page in navigation
    const currentPath = window.location.pathname;
    const navLinks = document.querySelectorAll('nav a');
    navLinks.forEach(link => {
        if (link.getAttribute('href') === currentPath) {
            link.classList.add('active');
        }
    });
    
    // Table row hover effect
    const tableRows = document.querySelectorAll('tbody tr');
    tableRows.forEach(row => {
        row.addEventListener('mouseover', () => {
            row.style.transition = 'background-color 0.2s ease';
        });
    });
});

// Function to validate user form
function validateUserForm() {
    const username = document.getElementById('username').value;
    const password = document.getElementById('password').value;
    const email = document.getElementById('email').value;
    
    if (username.length < 3) {
        alert('Username must be at least 3 characters long');
        return false;
    }
    
    if (password.length < 6) {
        alert('Password must be at least 6 characters long');
        return false;
    }
    
    const emailPattern = /^[^\s@]+@[^\s@]+\.[^\s@]+$/;
    if (!emailPattern.test(email)) {
        alert('Please enter a valid email address');
        return false;
    }
    
    return true;
}