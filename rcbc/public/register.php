<?php
session_start();
include '../includes/db.php';

$message = '';

if (isset($_POST['register'])) {
    $name = $_POST['name'];
    $email = $_POST['email'];
    $password = $_POST['password'];
    $role_id = $_POST['role_id'];

    // Check if email already exists
    $check_email_stmt = $conn->prepare("SELECT user_id FROM users WHERE email = ?");
    $check_email_stmt->bind_param("s", $email);
    $check_email_stmt->execute();
    $check_email_stmt->store_result();

    if ($check_email_stmt->num_rows > 0) {
        $message = "Error: Email already registered.";
    } else {
        // Hash the password
        $hashed_password = password_hash($password, PASSWORD_DEFAULT);

        // Prepare and execute the insert statement
        $stmt = $conn->prepare("INSERT INTO users (name, email, password, role_id) VALUES (?, ?, ?, ?)");
        $stmt->bind_param("sssi", $name, $email, $hashed_password, $role_id);
        
        if ($stmt->execute()) {
            // Log the activity of new user registration
            // Note: For self-registration, user_id and role_id might not be available from session yet
            // We can use the newly inserted user_id, but for simplicity, we'll log as a generic user for now.
            // In a real system, you might have a 'guest' user ID or log after the user logs in.
            log_activity($conn, 0, 0, 'New user registered: ' . $email);
            $message = "Registration successful! Please login.";
            header("Location: login.php");
            exit();
        } else {
            $message = "Error: " . $stmt->error;
        }
        $stmt->close();
    }
    $check_email_stmt->close();
}

// Fetch roles for the dropdown
$roles_query = $conn->query("SELECT * FROM roles");
$conn->close();
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Register</title>
    <link rel="stylesheet" href="../assets/style.css">
</head>
<body class="login-page-body">
    <div class="login-box"> <!-- Reusing login-box for consistent styling -->
        <h2>Register</h2>
        <p style="color: green;"><?= $message ?></p>
        <form method="post">
            <input type="text" name="name" placeholder="Name" required><br>
            <input type="email" name="email" placeholder="Email" required><br>
            <input type="password" name="password" placeholder="Password" required><br>
            <label>Role:</label>
            <select name="role_id" required>
                <?php while ($r = $roles_query->fetch_assoc()): ?>
                    <option value="<?= $r['role_id'] ?>"><?= htmlspecialchars($r['role_name']) ?></option>
                <?php endwhile; ?>
            </select><br>
            <button type="submit" name="register">Register</button>
        </form>
        <p>Already have an account? <a href="login.php">Login here</a></p>
    </div>
</body>
</html> 