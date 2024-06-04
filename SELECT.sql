/* Задание номер 2*/

SELECT title, duration
  FROM track
 ORDER BY duration DESC 
 LIMIT 1;

SELECT title
  FROM track
 WHERE duration > 210;

SELECT title
  FROM collection
 WHERE release_year BETWEEN 2018 AND 2020;

SELECT name
  FROM musiciant
 WHERE name NOT LIKE '% %';

SELECT title
  FROM track
 WHERE title LIKE '%my%' 
    OR title LIKE '%мой%';

/* Задание номер 3*/

SELECT title AS genre, COUNT(DISTINCT name)
  FROM genre
       JOIN musiciants_to_genres 
       ON genre.genre_id = musiciants_to_genres.genre_id
       JOIN musiciant 
       ON musiciant.musiciant_id = musiciants_to_genres.musiciant_id
       GROUP BY title;

SELECT release_year, COUNT(track.title)
  FROM track
       JOIN album 
       ON track.album_id = album.album_id
	     GROUP BY release_year 
	     HAVING release_year BETWEEN 2019 AND 2020;

SELECT album.title AS album, ROUND(AVG(duration), 2) AS average
  FROM track
       JOIN album 
       ON track.album_id = album.album_id
	     GROUP BY album.title
	     ORDER BY average;

SELECT DISTINCT name AS musiciant
  FROM album
       JOIN musiciants_to_albums 
       ON album.album_id = musiciants_to_albums.album_id
       JOIN musiciant 
       ON musiciant.musiciant_id = musiciants_to_albums.musiciant_id
	     WHERE release_year <> 2020;

SELECT collection.title
  FROM collection
       JOIN collection_to_track  
       ON  collection.collection_id = collection_to_track.collection_id
       JOIN track 
       ON collection_to_track.track_id = track.track_id
	     JOIN album
       ON album.album_id = track.album_id 
	     JOIN musiciants_to_albums 
       ON musiciants_to_albums.album_id = album.album_id 
	     JOIN musiciant
       ON musiciant.musiciant_id = musiciants_to_albums.musiciant_id
	     WHERE name = 'Scream';

/* Задание номер 4*/

SELECT DISTINCT album.title
  FROM genre
       JOIN musiciants_to_genres 
       ON genre.genre_id = musiciants_to_genres.genre_id
       JOIN musiciant 
       ON musiciant.musiciant_id = musiciants_to_genres.musiciant_id
	     JOIN musiciants_to_albums 
       ON musiciant.musiciant_id = musiciants_to_albums.musiciant_id
	     JOIN album 
       ON album.album_id = musiciants_to_albums.album_id
       GROUP BY musiciant.name, album.title
		   HAVING COUNT(musiciants_to_genres.genre_id) > 1;

SELECT track.title
  FROM collection
       RIGHT JOIN collection_to_track  
       ON  collection.collection_id = collection_to_track.collection_id
       RIGHT JOIN track 
       ON collection_to_track.track_id = track.track_id
       WHERE collection.title IS NULL;

SELECT musiciant.name
  FROM track
		   JOIN album 
       ON album.album_id = track.album_id 
	     JOIN musiciants_to_albums 
       ON musiciants_to_albums.album_id = album.album_id 
	     JOIN musiciant 
       ON musiciant.musiciant_id = musiciants_to_albums.musiciant_id
       WHERE duration = (SELECT MIN(duration) FROM track);

SELECT album.title
  FROM track
       RIGHT JOIN album 
       ON album.album_id = track.album_id
		   GROUP BY album.title
		   HAVING COUNT(track.title) = (SELECT MIN(count) 
              FROM (SELECT COUNT(track2.title) AS count 
              FROM track track2 RIGHT JOIN album album2 
              ON album2.album_id = track2.album_id 
              GROUP BY album2.title)
              );