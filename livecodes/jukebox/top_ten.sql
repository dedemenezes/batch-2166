-- List the first ten albums of the Jukebox DB, sorted alphabetically
SELECT albums.title
FROM albums
ORDER BY albums.title ASC
limit 10
