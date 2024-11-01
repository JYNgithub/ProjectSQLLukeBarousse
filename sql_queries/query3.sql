-- What are the skills required for the top-paying Data Engineer roles?
-- Objective: Guides candidates to build the skills demanded for the top-paying roles
-- 1) Use the top 10 highest pay jobs data from the first query
-- 2) Identify the specific skills required for those jobs

WITH top_10_pay AS (
    SELECT 
        jp.job_id,
        jp.job_title,
        jp.salary_hour_avg,
        cd.name company_name
    FROM 
        job_postings_fact jp
    LEFT JOIN
        company_dim cd
    ON 
        jp.company_id = cd.company_id
    WHERE
        jp.job_title = 'Data Engineer'
        AND jp.salary_hour_avg IS NOT NULL
    ORDER BY
        jp.salary_hour_avg DESC
    LIMIT 10
)

SELECT 
    sd.skills,
    count(tp.job_id) demand_for_skill
FROM 
    top_10_pay tp
INNER JOIN
    skills_job_dim sj ON tp.job_id = sj.job_id
INNER JOIN
    skills_dim sd ON sj.skill_id = sd.skill_id
GROUP BY
    sd.skills
ORDER BY
    demand_for_skill DESC
LIMIT 20;





