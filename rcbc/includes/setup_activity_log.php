<?php
include 'db.php';

$tableName = "activity_log";

// SQL to create activity_log table
$sql = "
CREATE TABLE IF NOT EXISTS $tableName (
    log_id INT(11) AUTO_INCREMENT PRIMARY KEY,
    user_id INT(11),
    role_id INT(11),
    action_description VARCHAR(255) NOT NULL,
    timestamp DATETIME DEFAULT CURRENT_TIMESTAMP
);";

if ($conn->query($sql) === TRUE) {
    echo "Table $tableName created successfully or already exists.";
} else {
    echo "Error creating table $tableName: " . $conn->error;
}

$conn->close();
?> 