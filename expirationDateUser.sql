DELIMITER //
CREATE TRIGGER after_insert_user_updateExpirationDate
BEFORE INSERT ON Users
FOR EACH ROW
BEGIN
	-- Check if value is entered for expirationDate
    IF NEW.expirationDate IS NULL THEN
		UPDATE Users SET Users.expirationDate =  CONVERT(DATE_ADD(NOW(), INTERVAL 1 YEAR), DATE) WHERE Users.userID = NEW.userID ;
	END IF;
END //


DELIMITER ;