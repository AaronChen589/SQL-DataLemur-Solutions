WITH cte AS (
    SELECT  company_id, 
            title, 
            description, 
            COUNT(job_id) AS job_count
    FROM job_listings
    GROUP BY company_id, title, description
    HAVING COUNT(job_id) > 1
)

SELECT COUNT(*) AS duplicate_companies
FROM cte