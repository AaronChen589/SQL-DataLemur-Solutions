SELECT pages.page_id
FROM pages
LEFT JOIN page_likes 
ON pages.page_id = page_likes.page_id
WHERE liked_date IS NULL
GROUP BY pages.page_id 
ORDER BY pages.page_id ASC;
