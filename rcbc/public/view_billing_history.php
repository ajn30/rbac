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

// Fetch billing history for the logged-in user
// Assuming a 'billing' or 'payments' table exists with relevant fields
$billing_history = [];
$billing_query = $conn->query("SELECT 
    b.booking_id, 
    u.name as user_name, 
    r.room_number, 
    r.room_type, 
    b.check_in_date, 
    b.check_out_date, 
    r.price, 
    DATEDIFF(b.check_out_date, b.check_in_date) AS num_nights, 
    (DATEDIFF(b.check_out_date, b.check_in_date) * r.price) AS total_bill
FROM 
    bookings b
JOIN 
    users u ON b.user_id = u.user_id
JOIN 
    rooms r ON b.room_id = r.room_id
ORDER BY 
    b.booking_date DESC");

if ($billing_query) {
    while ($row = $billing_query->fetch_assoc()) {
        $billing_history[] = $row;
    }
}
$conn->close();
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>View Billing History</title>
    <link rel="stylesheet" href="../assets/style.css">
</head>
<body>
    <div class="header">
        <h1>View Billing History</h1>
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
                <h2>Billing Records</h2>
                <?php if (!empty($billing_history)): ?>
                    <table>
                        <tr>
                            <th>Booking ID</th>
                            <th>User</th>
                            <th>Room No.</th>
                            <th>Room Type</th>
                            <th>Check-in</th>
                            <th>Check-out</th>
                            <th>Nights</th>
                            <th>Price/Night</th>
                            <th>Total Bill</th>
                        </tr>
                        <?php foreach ($billing_history as $bill): ?>
                            <tr>
                                <td><?= htmlspecialchars($bill['booking_id']) ?></td>
                                <td><?= htmlspecialchars($bill['user_name']) ?></td>
                                <td><?= htmlspecialchars($bill['room_number']) ?></td>
                                <td><?= htmlspecialchars($bill['room_type']) ?></td>
                                <td><?= htmlspecialchars($bill['check_in_date']) ?></td>
                                <td><?= htmlspecialchars($bill['check_out_date']) ?></td>
                                <td><?= htmlspecialchars($bill['num_nights']) ?></td>
                                <td>$<?= htmlspecialchars(number_format($bill['price'], 2)) ?></td>
                                <td>$<?= htmlspecialchars(number_format($bill['total_bill'], 2)) ?></td>
                            </tr>
                        <?php endforeach; ?>
                    </table>
                <?php else: ?>
                    <p>No billing records found.</p>
                <?php endif; ?>
            </div>
        </div>
    </div>
</body>
</html> 