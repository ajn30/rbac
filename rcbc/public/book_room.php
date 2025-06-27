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

// Handle booking submission
if (isset($_POST['book_room'])) {
    $room_id = $_POST['room_id'];
    $check_in_date = $_POST['check_in_date'];
    $check_out_date = $_POST['check_out_date'];
    $num_guests = $_POST['num_guests'];

    // Basic validation
    if (empty($room_id) || empty($check_in_date) || empty($check_out_date) || empty($num_guests)) {
        $message = "Please fill all required fields.";
    } elseif ($check_in_date >= $check_out_date) {
        $message = "Check-out date must be after check-in date.";
    } else {
        // For simplicity, we are not checking for overlapping bookings here.
        // In a real application, a complex check for date range availability would be needed.

        $stmt = $conn->prepare("INSERT INTO bookings (user_id, room_id, check_in_date, check_out_date, num_guests) VALUES (?, ?, ?, ?, ?)");
        $stmt->bind_param("iissi", $user_id, $room_id, $check_in_date, $check_out_date, $num_guests);
        
        if ($stmt->execute()) {
            log_activity($conn, $user_id, $role_id, 'User ' . $_SESSION['email'] . ' booked Room ID: ' . $room_id . ' from ' . $check_in_date . ' to ' . $check_out_date);
            $_SESSION['success_message'] = "Room booked successfully!";
        } else {
            $message = "Error booking room: " . $stmt->error;
        }
        $stmt->close();
    }
}

// Fetch available rooms for the dropdown
$available_rooms = [];
$rooms_query = $conn->query("SELECT room_id, room_number, room_type, price FROM rooms WHERE status = 'available'");
if ($rooms_query) {
    while ($row = $rooms_query->fetch_assoc()) {
        $available_rooms[] = $row;
    }
}
$conn->close();
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Book Room</title>
    <link rel="stylesheet" href="../assets/style.css">
</head>
<body>
    <div class="header">
        <h1>Book a Room</h1>
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
                <h2>Book Your Stay</h2>
                <p style="color: green;"><?= $message ?></p>
                <form method="post">
                    <label for="room_id">Select Room:</label>
                    <select name="room_id" id="room_id" required>
                        <?php if (!empty($available_rooms)): ?>
                            <?php foreach ($available_rooms as $room): ?>
                                <option value="<?= $room['room_id'] ?>">
                                    Room <?= htmlspecialchars($room['room_number']) ?> (<?= htmlspecialchars($room['room_type']) ?> - $<?= htmlspecialchars($room['price']) ?>)
                                </option>
                            <?php endforeach; ?>
                        <?php else: ?>
                            <option value="">No available rooms</option>
                        <?php endif; ?>
                    </select><br>

                    <label for="check_in_date">Check-in Date:</label>
                    <input type="date" name="check_in_date" id="check_in_date" required><br>

                    <label for="check_out_date">Check-out Date:</label>
                    <input type="date" name="check_out_date" id="check_out_date" required><br>

                    <label for="num_guests">Number of Guests:</label>
                    <input type="number" name="num_guests" id="num_guests" min="1" required><br>

                    <button type="submit" name="book_room">Book Room</button>
                </form>
            </div>
        </div>
    </div>
</body>
</html> 