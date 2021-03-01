-- SELECT name, id, cohort_id
-- FROM students
-- WHERE phone=NULL OR email=NULL

SELECT name, id, cohort_id
FROM students
WHERE phone IS NULL 
OR email IS NULL