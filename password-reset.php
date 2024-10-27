<?php
require_once('wp-config.php');
require_once('wp-includes/pluggable.php');

global $wpdb;
$new_password = 'NEW_PASSWORD'; // Replace with the desired password
$hashed_password = wp_hash_password($new_password);
$wpdb->update(
    $wpdb->users,
    array('user_pass' => $hashed_password),
    array('user_login' => 'admin') // Replace 'admin' with your actual username if different
);

echo "Password reset successfully!";
?>
