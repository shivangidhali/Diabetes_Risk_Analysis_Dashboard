SELECT * FROM healthcare_db.diabetes;
SELECT diabetes, COUNT(*) FROM diabetes
GROUP BY diabetes;
-- Age Based Risk Analysis
SELECT
CASE
WHEN age < 30 THEN "Young"
WHEN age BETWEEN 30 and 50 THEN "Middle age"
ELSE "Senior"
END AS age_group,
diabetes,
COUNT(*) AS total
FROM diabetes 
WHERE diabetes = 1
GROUP BY age_group, diabetes;