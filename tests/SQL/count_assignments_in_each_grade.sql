-- Write query to get count of assignments in each grade
SELECT
    GRADE,
    COUNT(*)
FROM
    ASSIGNMENTS
GROUP BY
    GRADE;