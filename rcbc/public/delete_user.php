<?php
session_start();
include '../includes/db.php';
$id = $_GET['id'];

// Fetch user details before deletion for logging purposes
$user_to_delete_stmt = $conn->prepare("SELECT name, email FROM users WHERE user_id = ?");
$user_to_delete_stmt->bind_param("i", $id);
$user_to_delete_stmt->execute();
$user_to_delete_result = $user_to_delete_stmt->get_result();
$user_to_delete = $user_to_delete_result->fetch_assoc();
$user_to_delete_stmt->close();

$conn->query("DELETE FROM users WHERE user_id = $id");

// Log activity: User deleted
if ($user_to_delete) {
    log_activity($conn, $_SESSION['user_id'], $_SESSION['role_id'], 'User ' . $_SESSION['user_name'] . ' deleted user: ' . $user_to_delete['name'] . ' (' . $user_to_delete['email'] . ')');
}

header("Location: index.php");
