-- Write query to find the number of grade A's given by the teacher who has graded the most assignments
SELECT
    COUNT(*)
FROM
    ASSIGNMENTS
WHERE
    GRADE = 'A'
    AND TEACHER_ID = (
        SELECT
            TEACHER_ID
        FROM
            ASSIGNMENTS
        GROUP BY
            TEACHER_ID
        ORDER BY
            COUNT(*) DESC LIMIT 1
    );