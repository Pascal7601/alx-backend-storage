-- create a trigger to reset valid_email
-- everytime a user changes his email
DELIMITER $$
CREATE TRIGGER email_update
BEFORE UPDATE ON users
FOR EACH ROW
BEGIN 
	IF OLD.email != NEW.email THEN
		SET NEW.valid_email = 0;
	END IF;
END$$
