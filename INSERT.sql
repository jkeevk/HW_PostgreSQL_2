/* Задание номер 1*/
INSERT INTO genre(title)
VALUES
       ('Rock'), 
       ('Rap'), 
       ('Blues'), 
       ('Alternative');

INSERT INTO musiciant(name)
VALUES
       ('Starlight Shines'), 
       ('Cosmic'), 
       ('Milky Way'), 
       ('Linkin Spark'), 
       ('Melodies of the Universe'),
       ('Shrine'),
       ('Swisted Minds'),
       ('Scream'),
       ('Unbreakable');

INSERT INTO album(title, release_year)
VALUES
       ('Meteora',               2003),
       ('Shape of you',          1999), 
       ('Give me back my',       2007), 
       ('The Path of Dreams',    1998),
       ('Waves of Time',         2020),
       ('Light in the Darkness', 2019);

INSERT INTO track(title, duration, album_id)
VALUES
       ('Meteora',                 187, 1),
       ('Serenity',                162, 2), 
       ('Exquisite',               294, 2), 
       ('Mesmerize',               246, 6),
       ('Tranquility of Time',     222, 5),
       ('A Journey to the Stars',  189, 3),
       ('The Sound of Silence',    210, 3),
       ('Light in the Fog',        189, 1),
       ('Door',                    178, 4),
       ('You and me',              225, 2),
       ('After you',               260, 6),
       ('Dance with the dead',     178, 4),
       ('Just a sand in my heart', 190, 3),
       ('Snape',                   209, 4);

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

INSERT INTO collection(title, release_year)
VALUES 
       ('Best hits',                2014),
       ('Favourite Tracks',         2018), 
       ('Mood Music',               2018), 
       ('Hits of Different Genres', 2019),
       ('Emotional Journey',        2021),
       ('Music for All Seasons',    2023);

INSERT INTO collection_to_track(track_id, collection_id)
VALUES 
       (1, 2),
       (2, 4),
       (3, 4),
       (4, 1),
       (8, 1),
       (13, 1);