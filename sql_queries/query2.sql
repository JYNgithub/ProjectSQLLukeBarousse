-- What are the top-paying jobs available for Data Engineers?
-- Objective: Highlight the best job opportunities for Data Engineers
-- 1) Identify the top 10 highest paying Data 
-- 2) Identify whether a requirement for a degree is specified

SELECT 
    jp.job_title,
    jp.salary_hour_avg,
    jp.job_posted_date,
    jp.job_country,
    cd.name company_name,
    jp.job_no_degree_mention
FROM 
    job_postings_fact jp
LEFT JOIN
    company_dim cd
ON 
    jp.company_id = cd.company_id
WHERE
    job_title = 'Data Engineer'
    AND salary_hour_avg IS NOT NULL
ORDER BY
    salary_hour_avg DESC
LIMIT 10;






