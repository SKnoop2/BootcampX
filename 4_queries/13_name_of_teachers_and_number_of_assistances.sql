-- Perform the same query as before, but include the number of assistances as well.


SELECT DISTINCT teachers.name as teacher, cohorts.name AS cohort, COUNT(assistance_requests.*) AS total_assistances
FROM teachers
JOIN assistance_requests ON assistance_requests.teacher_id = teachers.id
JOIN students ON student_id = students.id
JOIN cohorts ON cohort_id = cohorts.id
WHERE cohorts.name = 'JUL02'
GROUP BY teachers.name, cohorts.name
ORDER BY teachers.name;