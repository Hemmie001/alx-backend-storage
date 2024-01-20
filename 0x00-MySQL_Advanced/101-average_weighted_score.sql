-- Assuming a table named 'students' with columns 'student_id',
-- 'score', and 'weight'

-- Create the 'alfa' stored procedure
DELIMITER //

CREATE PROCEDURE ComputeAverageWeightedScoreForUsers()
BEGIN
    -- Create a temporary table to store weighted scores
    CREATE TEMPORARY TABLE temp_weighted_scores AS
        SELECT
            student_id,
            SUM(score * weight) / SUM(weight) AS weighted_average
        FROM
            students
        GROUP BY
            student_id;

    -- Update the main table with the computed weighted averages
    UPDATE students
    SET students.weighted_average = temp_weighted_scores.weighted_average
    FROM temp_weighted_scores
    WHERE students.student_id = temp_weighted_scores.student_id;

    -- Drop the temporary table
    DROP TEMPORARY TABLE IF EXISTS temp_weighted_scores;
END //

DELIMITER ;
