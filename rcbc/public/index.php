<?php
include '../includes/db.php'; ?>
<link rel="stylesheet" href="../assets/style.css">
<h2>User Management - Admin</h2>
<a href="add_user.php">Add New User</a>
<table>
    <tr>
        <th>ID</th><th>Name</th><th>Email</th><th>Role</th><th>Actions</th>
    </tr>
    <?php
    $result = $conn->query("SELECT users.*, roles.role_name FROM users JOIN roles ON users.role_id = roles.role_id");

    while ($row = $result->fetch_assoc()) {
        $user_id = $row['user_id'];
        $role_id = $row['role_id'];

        // Fetch permissions assigned to this role
        $perms = [];
        $perm_stmt = $conn->prepare("
            SELECT permission_name 
            FROM role_permissions 
            JOIN permissions ON role_permissions.permission_id = permissions.permission_id 
            WHERE role_permissions.role_id = ?
        ");
        $perm_stmt->bind_param("i", $role_id);
        $perm_stmt->execute();
        $perm_result = $perm_stmt->get_result();
        while ($perm = $perm_result->fetch_assoc()) {
            $perms[] = $perm['permission_name'];
        }
        $permissions = implode(", ", $perms);

        echo "<tr>
            <td>{$row['user_id']}</td>
            <td>{$row['name']}</td>
            <td>{$row['email']}</td>
            <td>{$row['role_name']}</td>
            <td>
                <a href='edit_user.php?id={$row['user_id']}'>Edit</a> |
                <a href='delete_user.php?id={$row['user_id']}' onclick='return confirm(\"Delete this user?\")'>Delete</a>
            </td>
        </tr>";
    }
    ?>
</table>