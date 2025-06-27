<?php
session_start();
include '../includes/db.php';

$id = $_GET['id'];
$user = $conn->query("SELECT * FROM users WHERE user_id = $id")->fetch_assoc();
?>

<h2>Edit User</h2>
<form method="post">
    <input name="name" value="<?= $user['name'] ?>" required><br>
    <input name="email" value="<?= $user['email'] ?>" required><br>
    <label>Change Password?</label><br>
    <input name="password" placeholder="Leave blank to keep current"><br>
    <label>Role:</label>
    <select name="role_id">
        <?php
        $roles = $conn->query("SELECT * FROM roles");
        while ($r = $roles->fetch_assoc()) {
            $selected = ($r['role_id'] == $user['role_id']) ? "selected" : "";
            echo "<option value='{$r['role_id']}' $selected>{$r['role_name']}</option>";
        }
        ?>
    </select><br>
    <button name="update">Update</button>
</form>

<?php
if (isset($_POST['update'])) {
    $name = $_POST['name'];
    $email = $_POST['email'];
    $role = $_POST['role_id'];

    if (!empty($_POST['password'])) {
        $pass = password_hash($_POST['password'], PASSWORD_DEFAULT);
        $stmt = $conn->prepare("UPDATE users SET name=?, email=?, password=?, role_id=? WHERE user_id=?");
        $stmt->bind_param("sssii", $name, $email, $pass, $role, $id);
    } else {
        $stmt = $conn->prepare("UPDATE users SET name=?, email=?, role_id=? WHERE user_id=?");
        $stmt->bind_param("ssii", $name, $email, $role, $id);
    }
    $stmt->execute();
    log_activity($conn, $_SESSION['user_id'], $_SESSION['role_id'], 'User ' . $_SESSION['user_name'] . ' updated user: ' . $name . ' (' . $email . ')');
    header("Location: index.php");
}
?>
