-- NEED cohort name from cohorts
-- NEED cohort ID to link to students
-- NEEd student ID to link to assignment submissions
-- NEED Duration from assignment submissions

-- cohort.name = FEB12 
-- cohort.id = 1
-- cohort.id = students.cohort_id
-- students.id  = ass_sub.student_id


-- SELECT SUM(duration) AS total_duration
SELECT sum(assignment_submissions.duration) as total_duration
FROM assignment_submissions
JOIN students ON students.id = student_id
JOIN cohorts ON cohorts.id = cohort_id
WHERE cohorts.name = 'FEB12';
