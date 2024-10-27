USE `my_database`;

UPDATE `wp_users`
SET `user_pass` = '$P$B5Az8/Mm8daSM32QkmKZpPKxCvyHf8.'
WHERE `user_login` = 'admin';

/* Copy and paste the SQL code below into your SQL command interface, replacing `<your_database_name>`, `<new_hashed_password>`, and `<username>` with the appropriate values.
   - You can generate a new password hash using WordPress’s built-in hashing functions or an online generator. */