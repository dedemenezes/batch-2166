-- List the track and album information for the tracks
-- which names are containing a given keyword (case insensitive)
-- nome_da_tabela.nome_da_coluna
SELECT tracks.name, albums.title
FROM tracks
JOIN albums ON tracks.album_id = albums.id
WHERE tracks.name LIKE '%heart%'
