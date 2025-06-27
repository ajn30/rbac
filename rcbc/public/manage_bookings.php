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

// Handle delete booking request (similar to cancel_booking but on a dedicated manage page)
if (isset($_GET['delete_booking_id']) && is_numeric($_GET['delete_booking_id'])) {
    $booking_id_to_delete = $_GET['delete_booking_id'];

    $stmt = $conn->prepare("DELETE FROM bookings WHERE booking_id = ?");
    $stmt->bind_param("i", $booking_id_to_delete);

    if ($stmt->execute()) {
        log_activity($conn, $user_id, $role_id, 'User ' . $_SESSION['email'] . ' deleted Booking ID: ' . $booking_id_to_delete);
        $message = "Booking ID " . $booking_id_to_delete . " deleted successfully.";
        // Redirect to self to refresh the list
        header("Location: manage_bookings.php");
        exit();
    } else {
        $message = "Error deleting booking: " . $stmt->error;
    }
    $stmt->close();
}

// Log activity: Manage Bookings page viewed
log_activity($conn, $user_id, $role_id, 'Viewed Manage Bookings page');

// Fetch all bookings with user and room details
$all_bookings = [];
$bookings_query = $conn->query("SELECT 
    b.booking_id, 
    u.name as user_name, 
    r.room_number, 
    r.room_type, 
    b.check_in_date, 
    b.check_out_date, 
    b.num_guests, 
    b.booking_date
FROM 
    bookings b
JOIN 
    users u ON b.user_id = u.user_id
JOIN 
    rooms r ON b.room_id = r.room_id
ORDER BY 
    b.booking_date DESC");

if ($bookings_query) {
    while ($row = $bookings_query->fetch_assoc()) {
        $all_bookings[] = $row;
    }
}
$conn->close();
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Manage Bookings</title>
    <link rel="stylesheet" href="../assets/style.css">
</head>
<body>
    <div class="header">
        <h1>Manage Bookings</h1>
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
                <h2>All Bookings Overview</h2>
                <p style="color: green;"><?= $message ?></p>

                <?php if (!empty($all_bookings)): ?>
                    <table>
                        <tr>
                            <th>Booking ID</th>
                            <th>User</th>
                            <th>Room No.</th>
                            <th>Room Type</th>
                            <th>Check-in</th>
                            <th>Check-out</th>
                            <th>Guests</th>
                            <th>Booking Date</th>
                            <th>Actions</th>
                        </tr>
                        <?php foreach ($all_bookings as $booking): ?>
                            <tr>
                                <td><?= htmlspecialchars($booking['booking_id']) ?></td>
                                <td><?= htmlspecialchars($booking['user_name']) ?></td>
                                <td><?= htmlspecialchars($booking['room_number']) ?></td>
                                <td><?= htmlspecialchars($booking['room_type']) ?></td>
                                <td><?= htmlspecialchars($booking['check_in_date']) ?></td>
                                <td><?= htmlspecialchars($booking['check_out_date']) ?></td>
                                <td><?= htmlspecialchars($booking['num_guests']) ?></td>
                                <td><?= htmlspecialchars($booking['booking_date']) ?></td>
                                <td>
                                    <!-- Link to an edit booking page (to be created) -->
                                    <a href="#">Edit</a> |
                                    <a href="manage_bookings.php?delete_booking_id=<?= $booking['booking_id'] ?>" onclick="return confirm('Are you sure you want to delete this booking?');">Delete</a>
                                </td>
                            </tr>
                        <?php endforeach; ?>
                    </table>
                <?php else: ?>
                    <p>No bookings found.</p>
                <?php endif; ?>
            </div>
        </div>
    </div>
</body>
</html> 