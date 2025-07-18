<?php
session_start();
include '../includes/db.php';

// Check if user is logged in
if (!isset($_SESSION['user_id'])) {
    header("Location: login.php");
    exit();
}

$message = '';
$user_id = $_SESSION['user_id'];
$role_id = $_SESSION['role_id'];

// Handle check-out submission
if (isset($_POST['check_out'])) {
    $booking_id = $_POST['booking_id'];
    $room_id = $_POST['room_id'];

    // Update room status to 'available' or 'cleaned'
    // For simplicity, we'll update the room status to 'available'
    $conn->begin_transaction();
    try {
        $stmt = $conn->prepare("UPDATE rooms SET status = 'available' WHERE room_id = ?");
        $stmt->bind_param("i", $room_id);
        $stmt->execute();

        // Optionally, update a status in the bookings table (e.g., 'checked_out')
        // Example: $stmt_booking = $conn->prepare("UPDATE bookings SET status = 'checked_out' WHERE booking_id = ?");
        // $stmt_booking->bind_param("i", $booking_id);
        // $stmt_booking->execute();

        log_activity($conn, $user_id, $role_id, 'User ' . $_SESSION['email'] . ' checked out Guest for Booking ID: ' . $booking_id . ' (Room ID: ' . $room_id . ')');
        $message = "Guest checked out successfully for Booking ID: " . $booking_id;
        $conn->commit();
    } catch (mysqli_sql_exception $e) {
        $conn->rollback();
        $message = "Error checking out guest: " . $e->getMessage();
    }
    $stmt->close();
}

// Log activity: Check Out Guest page viewed
log_activity($conn, $user_id, $role_id, 'Viewed Check Out Guest page');

// Fetch currently occupied rooms for check-out
$occupied_rooms = [];
$rooms_query = $conn->query("SELECT 
    b.booking_id, 
    u.name as user_name, 
    r.room_id, 
    r.room_number, 
    r.room_type, 
    b.check_in_date, 
    b.check_out_date
FROM 
    bookings b
JOIN 
    users u ON b.user_id = u.user_id
JOIN 
    rooms r ON b.room_id = r.room_id
WHERE 
    r.status = 'occupied' AND b.check_out_date <= CURDATE()
ORDER BY 
    b.check_out_date ASC");

if ($rooms_query) {
    while ($row = $rooms_query->fetch_assoc()) {
        $occupied_rooms[] = $row;
    }
}
$conn->close();
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Check Out Guest</title>
    <link rel="stylesheet" href="../assets/style.css">
</head>
<body>
    <div class="header">
        <h1>Check Out Guest</h1>
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
                <h2>Select Booking to Check Out</h2>
                <p style="color: green;"><?= $message ?></p>

                <?php if (!empty($occupied_rooms)): ?>
                    <table>
                        <tr>
                            <th>Booking ID</th>
                            <th>User</th>
                            <th>Room Number</th>
                            <th>Room Type</th>
                            <th>Check-in Date</th>
                            <th>Check-out Date</th>
                            <th>Action</th>
                        </tr>
                        <?php foreach ($occupied_rooms as $booking): ?>
                            <tr>
                                <td><?= htmlspecialchars($booking['booking_id']) ?></td>
                                <td><?= htmlspecialchars($booking['user_name']) ?></td>
                                <td><?= htmlspecialchars($booking['room_number']) ?></td>
                                <td><?= htmlspecialchars($booking['room_type']) ?></td>
                                <td><?= htmlspecialchars($booking['check_in_date']) ?></td>
                                <td><?= htmlspecialchars($booking['check_out_date']) ?></td>
                                <td>
                                    <form method="post" style="display:inline;">
                                        <input type="hidden" name="booking_id" value="<?= $booking['booking_id'] ?>">
                                        <input type="hidden" name="room_id" value="<?= $booking['room_id'] ?>">
                                        <button type="submit" name="check_out" onclick="return confirm('Are you sure you want to check out this guest?');">Check Out</button>
                                    </form>
                                </td>
                            </tr>
                        <?php endforeach; ?>
                    </table>
                <?php else: ?>
                    <p>No occupied rooms to check out or check-out date is in the future.</p>
                <?php endif; ?>
            </div>
        </div>
    </div>
</body>
</html> 