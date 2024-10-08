-- create a procedure that adds a bonus
-- in the corrections table and creates a new project when
-- the project does not exist for update
DELIMITER $$
CREATE PROCEDURE AddBonus(user_id INT, project_name VARCHAR(100), score INT)
BEGIN
	DECLARE project_id INT;
    SELECT id INTO project_id
    FROM projects
    WHERE name = project_name;
	IF project_id IS NULL THEN
		INSERT INTO projects(name) VALUES (project_name);
        SET project_id = LAST_INSERT_ID();
	END IF;
	INSERT INTO corrections(user_id, project_id, score)
    VALUES (user_id, project_id, score);
END $$
