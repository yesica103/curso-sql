SELECT
  t.name AS teacher,
  SUM(c.n_reviews) AS total_reviews
FROM courses c
JOIN teachers t ON c.teacher_id = t.id
WHERE c.n_reviews > 0
GROUP BY t.name
ORDER BY total_reviews DESC;
