-- Get currently enrolled students' average assignment completion time.
-- Select the students name and average time from assignment submissions.
-- Order the results from greatest duration to least greatest duration.
-- A student will have a null end_date if they are currently enrolled

-- my answer
SELECT students.name AS student, AVG(assignment_submissions.duration) as average_assignment_duration 
FROM students
JOIN assignment_submissions ON students.id = assignment_submissions.student_id --first list column in assign_subs, then list the table & column it links to
WHERE students.end_date IS NULL -- FROM is students, therefor don't need to add students in front of end_date
GROUP BY students.name --list new column name
ORDER BY average_assignment_duration DESC;

-- compass answer
-- SELECT students.name as student, avg(assignment_submissions.duration) as average_assignment_duration
-- FROM students
-- JOIN assignment_submissions ON student_id = students.id
-- WHERE end_date IS NULL
-- GROUP BY student
-- ORDER BY average_assignment_duration DESC;