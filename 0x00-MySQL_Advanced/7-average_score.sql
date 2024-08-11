-- create a procedure that adds a bonus
-- in the corrections table and creates a new project when
-- the project does not exist for update
DELIMITER $$
CREATE PROCEDURE ComputeAverageScoreForUser(user_id INT)
BEGIN
	DECLARE avg_score DECIMAL(10, 2);
    SELECT AVG(score) INTO avg_score
	FROM corrections
    WHERE user_id = user_id;
    
    UPDATE users
    SET average_score = avg_score
    WHERE id = user_id;
END $$
