-- join comments with users table

SELECT contents, username
FROM comments
JOIN users ON users.id = comments.user_id;

-- join comments with photos
SELECT contents, url
FROM comments
JOIN photos ON photos.id = comments.photo_id;
