CREATE DATABASE My_database_name;

-- Switch to the new database
USE My_database_name;

-- Create a table to store user information
CREATE TABLE user_info (
    user_id INT AUTO_INCREMENT PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    birthdate DATE,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- Insert sample data into the table
INSERT INTO user_info (first_name, last_name, birthdate)
VALUES
    ('Tom', 'Mboya', '1990-05-15'),
    ('Murangiri', 'Maron', '1985-08-21'),
    ('Sandra', 'makena', '2000-02-10');

-- 1. Explanation of SQL Functions
-- SELECT query to apply various SQL functions
SELECT
    CONCAT(first_name, ' ', last_name) AS full_name,
    LOWER(first_name) AS lower_first_name,
    UPPER(last_name) AS upper_last_name,
    TRIM(first_name) AS trimmed_first_name,
    LENGTH(last_name) AS last_name_length,
    SUBSTRING(first_name, 1, 3) AS substringed_first_name,
    ROUND(198.765, 2) AS rounded_number,
    DATE_ADD(birthdate, INTERVAL 7 DAY) AS birthdate_plus_7_days,
    DATE_SUB(birthdate, INTERVAL 2 MONTH) AS birthdate_minus_2_months,
    DATE_FORMAT(created_at, '%Y-%m-%d %H:%i:%s') AS formatted_created_at
FROM user_info;

-- 2. Select your birthday with DATE_ADD
-- Select your birthday by adding 7 days and setting the time to midnight
SELECT DATE_ADD(DATE_ADD(birthdate, INTERVAL 7 DAY), INTERVAL 0 SECOND) AS BIRTHDAY_DATE
FROM user_info;
