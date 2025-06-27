<?php
session_start();
include '../includes/db.php';

// Check if user is logged in before logging out
if (isset($_SESSION['user_id'])) {
    log_activity($conn, $_SESSION['user_id'], $_SESSION['role_id'], 'User ' . $_SESSION['email'] . ' logged out');
}

session_unset();
session_destroy();
$conn->close();
header("Location: login.php");
exit();
?> 