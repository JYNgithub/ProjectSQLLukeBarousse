-- What are the top-paying jobs for Data Engineers?
-- 1) Identify the top 10 highest paying Data 
-- 2) Focus on jobs with specified salaries
-- 3) Objective: Highlight the best job opportunities for Data Engineers

SELECT 
    jp.job_id,
    jp.job_title,
    jp.jOb_location,
    jp.salary_hour_avg,
    jp.job_posted_date,
    cd.name company_name
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
LIMIT 10


