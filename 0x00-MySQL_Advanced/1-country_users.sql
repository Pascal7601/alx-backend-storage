-- creates a table called users
-- with columns like name email and id
CREATE TABLE IF NOT EXISTS users
(id INT NOT NULL AUTO_INCREMENT,
email VARCHAR(255) NOT NULL UNIQUE,
name VARCHAR(255), PRIMARY KEY(ID),
country ENUM('US', 'CO', 'TN') NOT NULL DEFAULT 'US');
