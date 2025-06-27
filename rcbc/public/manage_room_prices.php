<?php
session_start();
include '../includes/db.php';

// Check if user is logged in and has appropriate role (e.g., Admin or Hotel Manager)
if (!isset($_SESSION['user_id'])) {
    header("Location: login.php");
    exit();
}

$message = '';
$user_id = $_SESSION['user_id'];
$role_id = $_SESSION['role_id'];

// Handle price update submission
if (isset($_POST['update_price'])) {
    $room_id = $_POST['room_id'];
    $new_price = $_POST['new_price'];

    // Basic validation
    if (empty($room_id) || !is_numeric($new_price) || $new_price < 0) {
        $message = "Invalid room ID or price.";
    } else {
        $stmt = $conn->prepare("UPDATE rooms SET price = ? WHERE room_id = ?");
        $stmt->bind_param("di", $new_price, $room_id);
        
        if ($stmt->execute()) {
            log_activity($conn, $user_id, $role_id, 'User ' . $_SESSION['email'] . ' updated price for Room ID: ' . $room_id . ' to ' . $new_price);
            $_SESSION['success_message'] = "Room price updated successfully!";
        } else {
            $message = "Error updating price: " . $stmt->error;
        }
        $stmt->close();
    }
}

// Fetch all rooms to display their current prices
$rooms = [];
$rooms_query = $conn->query("SELECT room_id, room_number, room_type, price FROM rooms ORDER BY room_number ASC");
if ($rooms_query) {
    while ($row = $rooms_query->fetch_assoc()) {
        $rooms[] = $row;
    }
}
$conn->close();
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Manage Room Prices</title>
    <link rel="stylesheet" href="../assets/style.css">
</head>
<body>
    <div class="header">
        <h1>Manage Room Prices</h1>
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
                <h2>Update Room Prices</h2>
                <p style="color: green;"><?= $message ?></p>

                <?php if (!empty($rooms)): ?>
                    <table>
                        <tr>
                            <th>Room Number</th>
                            <th>Room Type</th>
                            <th>Current Price</th>
                            <th>New Price</th>
                            <th>Action</th>
                        </tr>
                        <?php foreach ($rooms as $room): ?>
                            <tr>
                                <td><?= htmlspecialchars($room['room_number']) ?></td>
                                <td><?= htmlspecialchars($room['room_type']) ?></td>
                                <td>$<?= htmlspecialchars(number_format($room['price'], 2)) ?></td>
                                <td>
                                    <form method="post" style="display:inline;">
                                        <input type="hidden" name="room_id" value="<?= $room['room_id'] ?>">
                                        <input type="number" name="new_price" step="0.01" min="0" value="<?= htmlspecialchars($room['price']) ?>" required style="width: 100px;">
                                </td>
                                <td>
                                        <button type="submit" name="update_price">Update</button>
                                    </form>
                                </td>
                            </tr>
                        <?php endforeach; ?>
                    </table>
                <?php else: ?>
                    <p>No rooms found to manage prices.</p>
                <?php endif; ?>
            </div>
        </div>
    </div>
</body>
</html> 