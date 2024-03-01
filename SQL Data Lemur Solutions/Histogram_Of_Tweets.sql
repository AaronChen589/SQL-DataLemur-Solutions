SELECT tweets_per_user AS tweet_bucket, COUNT(user_id) AS users_num
FROM 
  (SELECT user_id, COUNT(msg) AS tweets_per_user
    FROM tweets
    WHERE tweet_date BETWEEN '2022-01-01' AND '2022-12-31'
    GROUP BY user_id
  ) AS subquery
GROUP BY tweet_bucket