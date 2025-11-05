-- Count the number of tracks that are shorter than 2 minutes
SELECT COUNT(*) FROM tracks
WHERE tracks.milliseconds < 2 * 60000
