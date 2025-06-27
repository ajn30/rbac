<?php
$conn = new mysqli("localhost", "root", "", "hotel_system");
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

function log_activity($conn, $user_id, $role_id, $action_description, $ip_address = null) {
    // Get IP address if not provided
    if ($ip_address === null) {
        $ip_address = $_SERVER['REMOTE_ADDR'] ?? 'UNKNOWN';
    }
    $stmt = $conn->prepare("INSERT INTO activity_log (user_id, role_id, action_description, ip_address) VALUES (?, ?, ?, ?)");
    $stmt->bind_param("iiss", $user_id, $role_id, $action_description, $ip_address);
    $stmt->execute();
    $stmt->close();
}

?>
