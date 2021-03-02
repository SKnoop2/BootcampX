-- Cohort With Longest Assistances
-- Get the cohort with the longest average duration of assistance requests.

-- The same requirements as the previous query, but only return the single row with the longest average.
-- Expected Result:

--  name  | average_assistance_time 
-- -------+-------------------------
--  MAR12 | 00:15:44.556041
-- (1 row)

SELECT cohorts.name, AVG(completed_at - started_at) AS average_assistance_time
FROM assistance_requests
JOIN students ON students.id = student_id
JOIN cohorts ON cohorts.id = cohort_id
GROUP BY cohorts.name
ORDER BY average_assistance_time DESC
LIMIT 1;