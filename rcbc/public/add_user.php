<?php
session_start();
include '../includes/db.php'; ?>
<link rel="stylesheet" href="../assets/style.css">

<?php
// Add 10 roles
$default_roles = [
    "Admin",
    "HR Manager",
    "Front Desk Staff",
    "Housekeeping Staff",
    "Customer/Guest",
    "Accountant",
    "Maintenance Staff",
    "Marketing Manager",
    "Security Officer",
    "Receptionist"
];

foreach ($default_roles as $role_name) {
    $stmt = $conn->prepare("SELECT role_id FROM roles WHERE role_name = ?");
    $stmt->bind_param("s", $role_name);
    $stmt->execute();
    $stmt->store_result();
    if ($stmt->num_rows == 0) {
        $insert = $conn->prepare("INSERT INTO roles (role_name) VALUES (?)");
        $insert->bind_param("s", $role_name);
        $insert->execute();
    }
}
?>

<div class="container">
    <h2>Add User</h2>
    <form method="post">
        <input name="name" placeholder="Name" required><br>
        <input name="email" type="email" placeholder="Email" required><br>
        <input name="password" type="password" placeholder="Password" required><br>
        <label>Role:</label>
        <select name="role_id" required>
            <?php
            $roles = $conn->query("SELECT * FROM roles");
            while ($r = $roles->fetch_assoc()) {
                echo "<option value='{$r['role_id']}'>{$r['role_name']}</option>";
            }
            ?>
        </select><br>
        <button name="save">Save</button>
    </form>
</div>

<?php
if (isset($_POST['save'])) {
    $name = $_POST['name'];
    $email = $_POST['email'];
    $pass = password_hash($_POST['password'], PASSWORD_DEFAULT);
    $role = $_POST['role_id'];

    $stmt = $conn->prepare("INSERT INTO users (name, email, password, role_id) VALUES (?, ?, ?, ?)");
    $stmt->bind_param("sssi", $name, $email, $pass, $role);
    $stmt->execute();
    log_activity($conn, $_SESSION['user_id'], $_SESSION['role_id'], 'User ' . $_SESSION['user_name'] . ' added new user: ' . $name . ' (' . $email . ')');
    header("Location: index.php");
}
?>
