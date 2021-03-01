SELECT name, id, email, cohort_id
FROM students
WHERE name NOT LIKE '%gmail.com' 
AND phone IS NULL;