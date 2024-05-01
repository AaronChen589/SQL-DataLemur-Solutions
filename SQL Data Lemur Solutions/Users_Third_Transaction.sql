WITH row_num_cte AS (
SELECT 
    user_id, 
    spend, 
    transaction_date, 
    ROW_NUMBER() OVER (PARTITION BY user_id ORDER BY transaction_date ASC) AS row_num
  FROM transactions AS trans_num 
 )
 
SELECT user_id, spend, transaction_date
FROM row_num_cte
WHERE row_num = 3;