-- NEED cohort name from cohorts DB
-- use id from cohort DB with cohort_id from students DB
-- NEED student count

-- my answer
SELECT cohorts.name AS cohort_name, COUNT(students.name) AS student_count
FROM cohorts
JOIN students ON students.cohort_id = cohorts.id 
GROUP BY cohorts.name
HAVING COUNT(students.name) >= 18
ORDER BY student_count;

-- compass answer
-- SELECT cohorts.name AS cohort_name, COUNT(students.*) AS student_count
-- FROM cohorts
-- JOIN students ON cohorts.id = cohort_id 
-- GROUP BY cohort_name
-- HAVING COUNT(students.*) >= 18
-- ORDER BY student_count;