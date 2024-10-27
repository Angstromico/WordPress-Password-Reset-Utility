# WordPress Password Reset Utility

This repository provides a method for resetting a WordPress user’s password using a PHP script. This method is intended for **local development environments or emergency recovery** purposes only.

⚠️ **Warning:** Use this script with caution. It bypasses WordPress security mechanisms, so it’s recommended for local or development environments only.

## Method: PHP Script

This method allows you to reset the password directly using a PHP script, which will automatically generate a password hash compatible with WordPress.

### Steps to Use the PHP Script:

1. **Create the PHP File**: Create a new PHP file in the root of your WordPress installation. You can name it `reset_password.php`.

2. **Add the Code**: Copy and paste the following code into your `reset_password.php` file. Replace `NEW_PASSWORD` with the new password you’d like to use, and make sure to update `'admin'` to your actual username if it’s different:

   ```php
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
   ```

3. **Run the Script**: Access the script by navigating to `http://localhost/wp-themes/reset_password.php` in your browser. If successful, you should see a message that says "Password reset successfully!"

4. **Delete the Script**: For security reasons, delete the `reset_password.php` file immediately after running it. This prevents unauthorized access to your WordPress installation.

### Example of Usage

- **New Password**: When updating the script, you might set the new password as follows:

  ```php
  $new_password = 'my_new_password';
  ```

- **Output**: After executing the script, you should see a confirmation message indicating that the password has been reset.
