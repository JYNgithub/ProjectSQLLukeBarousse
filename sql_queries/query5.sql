-- What are the most high-demand and high-paying skills in the field of Data Engineering?
-- Objective: Identify skills that guarantee job security and favorable compensation
-- Identify the most high-demand and high-paying skills for all roles related to 'Data Engineer'

WITH skills_demand AS (
    SELECT
        sd.skill_id,
        sd.skills,
        COUNT(jp.job_id) demand_for_skill
    FROM    
        job_postings_fact jp
    INNER JOIN
        skills_job_dim sj ON jp.job_id = sj.job_id
    INNER JOIN
        skills_dim sd ON sj.skill_id = sd.skill_id
    WHERE 
        jp.job_title LIKE '%Data Engineer%'
        AND jp.salary_hour_avg IS NOT NULL
    GROUP BY
        sd.skill_id, sd.skills
),
skills_pay AS (
    SELECT
        sd.skill_id,
        sd.skills,
        ROUND(AVG(jp.salary_hour_avg), 2) average_hourly_salary
    FROM    
        job_postings_fact jp
    INNER JOIN
        skills_job_dim sj ON jp.job_id = sj.job_id
    INNER JOIN
        skills_dim sd ON sj.skill_id = sd.skill_id
    WHERE 
        jp.job_title LIKE '%Data Engineer%'
        AND jp.salary_hour_avg IS NOT NULL
    GROUP BY
        sd.skill_id, sd.skills
)

SELECT
    skills_demand.skill_id,
    skills_demand.skills,
    skills_demand.demand_for_skill,
    skills_pay.average_hourly_salary
FROM
    skills_demand
INNER JOIN
    skills_pay ON skills_demand.skill_id = skills_pay.skill_id
ORDER BY
    skills_demand.demand_for_skill DESC,
    skills_pay.average_hourly_salary DESC
LIMIT 10;



