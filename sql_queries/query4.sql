-- What are the top skill types based on salary for Data Engineers?
-- Objective: Identify the most financially rewarding skill types to acquire or improve
-- 1) Identify the average salary associated with each skill type
-- 2) Identify the top 10 most financially rewarding skill types

SELECT
    sd.type,
    ROUND(AVG(jp.salary_hour_avg), 2) average_hourly_salary
FROM    
    job_postings_fact jp
INNER JOIN
    skills_job_dim sj ON jp.job_id = sj.job_id
INNER JOIN
    skills_dim sd ON sj.skill_id = sd.skill_id
WHERE 
    jp.job_title = 'Data Engineer'
    AND jp.salary_hour_avg IS NOT NULL
GROUP BY
    sd.type
ORDER BY
    average_hourly_salary DESC
LIMIT 10;
