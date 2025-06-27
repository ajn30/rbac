<?php
session_start();
include '../includes/db.php';

// Check if user is logged in
if (!isset($_SESSION['user_id'])) {
    header("Location: login.php");
    exit();
}

function get_action_type($description) {
    if (str_contains($description, 'logged in')) {
        return 'Login';
    } elseif (str_contains($description, 'logged out')) {
        return 'Logout';
    } elseif (str_contains($description, 'added new user') || str_contains($description, 'New user registered')) {
        return 'Create user';
    } elseif (str_contains($description, 'updated user')) {
        return 'Update user';
    } elseif (str_contains($description, 'deleted user')) {
        return 'Delete user';
    } elseif (str_contains($description, 'updated price')) {
        return 'Update price';
    } elseif (str_contains($description, 'deleted Booking ID')) {
        return 'Delete booking';
    } elseif (str_contains($description, 'booked Room')) {
        return 'Book room';
    } elseif (str_contains($description, 'cancelled Booking')) {
        return 'Cancel booking';
    } elseif (str_contains($description, 'checked in Guest')) {
        return 'Check-in guest';
    } elseif (str_contains($description, 'checked out Guest')) {
        return 'Check-out guest';
    }
    return 'Other Action';
}

// Fetch activity logs, joining with users table to get user email and name, and roles table to get role name
$activity_logs = [];
$activity_stmt = $conn->prepare("SELECT al.*, al.ip_address, u.name AS user_name, u.email, r.role_name FROM activity_log al JOIN users u ON al.user_id = u.user_id JOIN roles r ON al.role_id = r.role_id ORDER BY al.timestamp DESC LIMIT 50"); // Fetch more logs for a dedicated page
$activity_stmt->execute();
$activity_result = $activity_stmt->get_result();

while ($log = $activity_result->fetch_assoc()) {
    $activity_logs[] = $log;
}
$activity_stmt->close();
$conn->close();
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Activity Log</title>
    <link rel="stylesheet" href="../assets/style.css">
</head>
<body>
    <div class="header">
        <h1>Activity Log</h1>
    </div>
    <div class="dashboard-layout">
        <div class="sidebar">
            <h2>HBMS</h2>
            <ul>
                <li><a href="dashboard.php" class="active"><span class="icon">&#8962;</span> Dashboard</a></li>
                <li><a href="add_user.php"><span class="icon">&#43;</span> Add New User</a></li>
                <li><a href="index.php"><span class="icon">&#128100;</span> View All Users</a></li>
                <li><a href="view_room_availability.php"><span class="icon">&#127963;</span> View Room Availability</a></li>
                <li><a href="book_room.php"><span class="icon">&#128214;</span> Book Room</a></li>
                <li><a href="view_booked_rooms.php"><span class="icon">&#128213;</span> View Booked Rooms <span class="notification-badge">+6</span></a></li>
                <li><a href="cancel_booking.php"><span class="icon">&#10060;</span> Cancel Booking</a></li>
                <li><a href="check_in_guest.php"><span class="icon">&#128717;</span> Check In Guest <span class="notification-badge">1</span></a></li>
                <li><a href="check_out_guest.php"><span class="icon">&#128718;</span> Check Out Guest</a></li>
                <li><a href="manage_bookings.php"><span class="icon">&#128196;</span> Manage Bookings</a></li>
                <li><a href="manage_room_prices.php"><span class="icon">&#128176;</span> Manage Room Prices</a></li>
                <li><a href="view_billing_history.php"><span class="icon">&#128184;</span> View Billing History</a></li>
                <li><a href="manage_room_inventory.php"><span class="icon">&#128230;</span> Manage Room Inventory</a></li>
                <li><a href="generate_reports.php"><span class="icon">&#128202;</span> Generate Reports</a></li>
                <li><a href="manage_hotel_staff.php"><span class="icon">&#128101;</span> Manage Hotel Staff</a></li>
                <li><a href="view_customer_profile.php"><span class="icon">&#128100;</span> View Customer Profile</a></li>
                <li><a href="edit_customer_profile.php"><span class="icon">&#9999;&#65039;</span> Edit Customer Profile</a></li>
                <li><a href="post_announcement.php"><span class="icon">&#128227;</span> Post Announcement</a></li>
                <li><a href="view_announcement.php"><span class="icon">&#128220;</span> View Announcement</a></li>
                <li><a href="manage_promotions_discounts.php"><span class="icon">&#127873;</span> Manage Promotions/Discounts</a></li>
                <li><a href="handle_complaints.php"><span class="icon">&#128172;</span> Handle Complaints</a></li>
                <li><a href="access_system_settings.php"><span class="icon">&#9881;&#65039;</span> Access System Settings</a></li>
                <li><a href="activity_log.php"><span class="icon">&#128203;</span> Activity Log</a></li>
                <li><a href="logout.php"><span class="icon">&#128682;</span> Logout</a></li>
            </ul>
        </div>
        <div class="main-content">
            <div class="dashboard-section">
                <h2>System Activity Records</h2>
                <?php if (!empty($activity_logs)): ?>
                    <table>
                        <tr>
                            <th>Timestamp</th>
                            <th>User</th>
                            <th>Role</th>
                            <th>Action</th>
                            <th>Description</th>
                            <th>IP Address</th>
                        </tr>
                        <?php foreach ($activity_logs as $log): ?>
                            <tr>
                                <td><?= htmlspecialchars($log['timestamp']) ?></td>
                                <td><?= htmlspecialchars($log['user_name']) ?></td>
                                <td><?= htmlspecialchars($log['role_name']) ?></td>
                                <td><?= htmlspecialchars(get_action_type($log['action_description'])) ?></td>
                                <td><?= htmlspecialchars($log['action_description']) ?></td>
                                <td><?= htmlspecialchars($log['ip_address']) ?></td>
                            </tr>
                        <?php endforeach; ?>
                    </table>
                <?php else: ?>
                    <p>No activity records found.</p>
                <?php endif; ?>
            </div>
        </div>
    </div>
</body>
</html> 