<?php
session_start();
include '../includes/db.php';

// Check if user is logged in
if (!isset($_SESSION['user_id'])) {
    header("Location: login.php");
    exit();
}

// Log activity: Dashboard viewed
log_activity($conn, $_SESSION['user_id'], $_SESSION['role_id'], 'Dashboard viewed');

?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Admin Dashboard</title>
    <link rel="stylesheet" href="../assets/style.css">
</head>
<body>
    <div class="header">
        <h1>HBMS Dashboard <span class="results-count"></span></h1>
        <div class="top-nav-filters">
            <div class="search-bar">
                <input type="text" placeholder="Search for rooms, bookings, guests...">
                <button class="search-icon">&#128269;</button>
            </div>
        
            <div class="date-guests-selectors">
                <select>
                    
                </select>
                <select>
                    <option>24 - 28 July</option>
                </select>
                <select>
                    <option>5 Guests</option>
                </select>
            </div>
        </div>
    </div>
    <div class="dashboard-layout">
        <div class="sidebar">
            <h2>ADMIN</h2>
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
            <div class="welcome-banner">
                <h2>Welcome to Your Hotel Management Dashboard!</h2>
                <p>Manage your rooms, bookings, staff, and more efficiently.</p>
            </div>
        </div>
    </div>
</body>
</html>
<?php $conn->close(); ?> 