SELECT cohorts.name AS cohort, COUNT(*) AS total_submissions
FROM assignment_submissions
JOIN students ON assignment_submissions.student_id = students.id
JOIN students.cohort_id = cohorts.id
GROUP BY cohort
ORDER BY total_submissions