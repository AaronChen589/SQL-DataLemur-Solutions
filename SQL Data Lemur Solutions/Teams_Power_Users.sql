SELECT sender_id, COUNT(sender_id) AS message_count
FROM messages
WHERE sent_date BETWEEN '2022-08-01' AND '2022-08-31'
GROUP BY sender_id
ORDER BY COUNT(sender_id) DESC
LIMIT 2;