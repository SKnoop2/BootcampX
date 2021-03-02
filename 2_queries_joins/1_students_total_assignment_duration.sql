-- SELECT COUNT(duration)
-- FROM assignment_submissions
-- JOIN students ON students.id = assignment_submissions.student_id
-- WHERE student.name = 'Ibrahim Schimmel';



SELECT SUM(assignment_submissions.duration) AS total_duration
FROM assignment_submissions
JOIN students ON students.id = student_id
WHERE students.name = 'Ibrahim Schimmel';

