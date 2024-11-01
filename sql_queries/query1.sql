-- What is the typical hourly pay rate for a Data Engineer?
-- Objective: Present the distibution of hourly pay rate of Data Engineers
-- 1) Identify the hourly salary of Data Engineers
-- 2) Identify the distribution and average hourly pay rate of Data Engineers

SELECT 
    cd.name company_name,
    jp.salary_hour_avg
FROM
    job_postings_fact jp
LEFT JOIN
    company_dim cd ON jp.company_id = cd.company_id
WHERE
    job_title = 'Data Engineer'
    AND salary_hour_avg IS NOT NULL



