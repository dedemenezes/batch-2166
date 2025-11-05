-- List the top 5 Rock artists with the most tracks

SELECT artists.name, COUNT(*) AS track_count
FROM artists
JOIN genres ON tracks.genre_id = genres.id
JOIN tracks ON tracks.album_id = albums.id
JOIN albums ON albums.artist_id = artists.id
WHERE genres.name = 'Rock'
GROUP BY artists.name
ORDER BY track_count DESC
LIMIT 5
