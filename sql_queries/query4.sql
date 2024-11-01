--  What are the most in-demand skills for Data Engineers?
-- Objective: Identify the top 10 skills needed to get a job as a Data Engineer, regardless of salary 
-- 1) Focus on all job postings for Data Engineers
-- 2) Identify the top 10 most demanded skills 

SELECT
    sd.skills,
    COUNT(jp.job_id) demand_for_skill
FROM    
    job_postings_fact jp
INNER JOIN
    skills_job_dim sj ON jp.job_id = sj.job_id
INNER JOIN
    skills_dim sd ON sj.skill_id = sd.skill_id
WHERE 
    jp.job_title = 'Data Engineer'
GROUP BY
    sd.skills
ORDER BY
    demand_for_skill DESC
LIMIT 10;



