SELECT cohorts.name, sum(assistance_requests.completed_at - assistance_requests.started_at) AS total_duration
From assistance_requests
JOIN students ON students.id = student_id
JOIN cohorts ON cohorts.id = cohort_id
GROUP BY cohorts.name
ORDER BY total_duration