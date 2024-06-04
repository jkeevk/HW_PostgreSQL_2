/* Задание номер 1*/
INSERT INTO genre(genre_id, title)
VALUES
       (1, 'Rock'), 
       (2, 'Rap'), 
       (3, 'Blues'), 
       (4, 'Alternative');

INSERT INTO musiciant(musiciant_id, name)
VALUES
       (1, 'Starlight Shines'), 
       (2, 'Cosmic'), 
       (3, 'Milky Way'), 
       (4, 'Linkin Spark'), 
       (5, 'Melodies of the Universe'),
       (6, 'Shrine'),
       (7, 'Swisted Minds'),
       (8, 'Scream'),
       (9, 'Unbreakable');

INSERT INTO album(album_id, title, release_year)
VALUES
       (1, 'Meteora',               2003),
       (2, 'Shape of you',          1999), 
       (3, 'Give me back my',       2007), 
       (4, 'The Path of Dreams',    1998),
       (5, 'Waves of Time',         2020),
       (6, 'Light in the Darkness', 2019);

INSERT INTO track(track_id, title, duration, album_id)
VALUES
       (1, 'Meteora',                  187, 1),
       (2, 'Serenity',                 162, 2), 
       (3, 'Exquisite',                294, 2), 
       (4, 'Mesmerize',                246, 6),
       (5, 'Tranquility of Time',      222, 5),
       (6, 'A Journey to the Stars',   189, 3),
       (7, 'The Sound of Silence',     210, 3),
       (8, 'Light in the Fog',         189, 1),
       (9, 'Door',                     178, 4),
       (10, 'You and me',              225, 2),
       (11, 'After you',               260, 6),
       (12, 'Dance with the dead',     178, 4),
       (13, 'Just a sand in my heart', 190, 3),
       (14, 'Snape',                   209, 4);

INSERT INTO musiciants_to_genres(musiciant_id, genre_id)
VALUES
       (1, 1),
       (1, 2),
       (2, 2),
       (3, 1),
       (4, 4),
       (5, 1),
       (5, 3),
       (6, 3),
       (7, 1),
       (8, 3),
       (9, 1);

INSERT INTO musiciants_to_albums(musiciant_id, album_id)
VALUES 
       (1, 1),
       (2, 2),
       (3, 1),
       (4, 3),
       (5, 1),
       (6, 4),
       (7, 5),
       (8, 6),
       (9, 1);

INSERT INTO collection(collection_id, title, release_year)
VALUES 
       (1, 'Best hits',                2014),
       (2, 'Favourite Tracks',         2018), 
       (3, 'Mood Music',               2018), 
       (4, 'Hits of Different Genres', 2019),
       (5, 'Emotional Journey',        2021),
       (6, 'Music for All Seasons',    2023);

INSERT INTO collection_to_track(track_id, collection_id)
VALUES 
       (1, 2),
       (2, 4),
       (3, 4),
       (4, 1),
       (8, 1),
       (13, 1);