# WordPress Password Reset Utility

This repository provides two methods for resetting a WordPress user’s password: an SQL script and a PHP script. These methods are intended for **local development environments or emergency recovery** purposes only.

⚠️ **Warning:** Use these scripts with caution. They bypass WordPress security mechanisms, so they’re recommended for local or development environments only.

## Method 1: SQL Script

1. **Connect to MySQL**: Access your WordPress database using a tool like phpMyAdmin or via command line.
2. **Run the Script**: Copy and paste the SQL code below into your SQL command interface, replacing `<your_database_name>`, `<new_hashed_password>`, and `<username>` with the appropriate values.
   - You can generate a new password hash using WordPress’s built-in hashing functions or an online generator.

### SQL Script

```sql
USE `<your_database_name>`;

UPDATE `wp_users`
SET `user_pass` = '<new_hashed_password>'
WHERE `user_login` = '<username>';

```
