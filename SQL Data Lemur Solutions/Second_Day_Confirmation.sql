WITH second_day_cte AS (
    SELECT emails.user_id, DATE_PART('day',(action_date - signup_date)) AS a
    FROM emails
    INNER JOIN texts
    ON emails.email_id = texts.email_id 
)

SELECT user_id
FROM second_day_cte
WHERE a = 1

