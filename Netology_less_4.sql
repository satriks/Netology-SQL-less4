/* --------------------------------------------------------------------------------------------------*/
/* Создание таблиц  УРОК 2 */
/* --------------------------------------------------------------------------------------------------*/
 
CREATE TABLE IF NOT EXISTS genre (
	   genre_ID SERIAL PRIMARY KEY,
	   name_genre VARCHAR(50) UNIQUE NOT NULL);
	
CREATE TABLE IF NOT EXISTS singer (
	   singer_ID SERIAL PRIMARY KEY,
	   name_art VARCHAR(50) UNIQUE NOT NULL);

CREATE TABLE IF NOT EXISTS singer_genre (
	   genre_ID INTEGER REFERENCES genre(genre_ID),
	   singer_ID INTEGER REFERENCES singer(singer_ID),
	   CONSTRAINT sg PRIMARY KEY (genre_ID, singer_ID));

CREATE TABLE IF NOT EXISTS album (
	   album_ID SERIAL PRIMARY KEY,
	   name_album VARCHAR(50) NOT NULL,
	   year_album INT NOT NULL CHECK ( year_album > 2015));

CREATE TABLE IF NOT EXISTS album_singer (
	   album_ID INTEGER REFERENCES album(album_ID),
	   singer_ID INTEGER REFERENCES singer(singer_ID),
	   CONSTRAINT sa PRIMARY KEY (album_ID, singer_ID));

CREATE TABLE IF NOT EXISTS track (
	   track_ID SERIAL PRIMARY KEY,
	   name_track VARCHAR(50) NOT NULL,
	   time_track TIME NOT NULL,
	   album_ID INTEGER REFERENCES album(album_ID));

CREATE TABLE IF NOT EXISTS collection (
	   collection_ID SERIAL PRIMARY KEY,
	   name_collection VARCHAR(50) NOT NULL,
	   year_collection INT NOT NULL CHECK ( year_collection > 2015));

CREATE TABLE IF NOT EXISTS track_in_colection (
	   track_ID INTEGER REFERENCES track(track_ID),
	   collection_ID INTEGER REFERENCES collection(collection_ID),
	   CONSTRAINT tc PRIMARY KEY (track_ID, collection_ID));

	  
	  	  
 /* --------------------------------------------------------------------------------------------------*/	  
 /*  Задание № 1  УРОК 3 */
 /* --------------------------------------------------------------------------------------------------*/
 
 INSERT INTO genre(name_genre)
 VALUES ('Pop Music'),
 		('Electronic'),
 		('Trance'),
 		('Rock'),
 		('Heavy metal'),
 		('Rap'),
 		('R&B'),
 		('Folk Rock'),
 		('Dance-Pop');
 	
 INSERT INTO singer (name_art)
 VALUES ('Katy Perry'),
 		('Kesha'),
 		('Selena Gomez'),
 		('Major Lazer'),
 		('Gustavo Bravetti'),
 		('Infected Mushroom'),
 		('ATB'),
 		('Imagine Dragons'),
 		('Coldplay'),
 		('Orden Ogan'),
 		('Darksun'),
 		('Drake'),
 		('Kanye West'),
 		('Masego'),
 		('Black Eyed Peas'),
 		('Blackmors''s Night'),
 		('Мельница');
 	
 INSERT INTO album (name_album, year_album)
 VALUES ('Smile', 2020),
 		('Rainbow ', 2017),
 		('Rare Deluxe', 2020),
 		('Major Lazer Essentials', 2018),
 		('Babel', 2021),
 		('Return to the Sauce', 2017),
 		('THE DJ EP', 2021),
 		('Mercury - Act 1', 2021),
 		('Music Of The Spheres', 2021),
 		('Final Days', 2022),
 		('Chronicles of Aravan', 2016),
 		('Care Package', 2019),
 		('ye', 2018),
 		('Loose Thoughts', 2016),
 		('MASTERS OF THE SUN VOL', 2018),
 		('Here We Come A-Caroling', 2020),
 		('Химера', 2016);
 
  INSERT INTO collection (name_collection, year_collection)
 VALUES ('Smile fish', 2016),
 		('Rainbow to the sky ', 2017),
 		('Rare Deluxe Edition', 2020),
 		('Essent', 2018),
 		('Babe Colection', 2021),
 		('Return to the Snake', 2017),
 		('THE DJ EP FOR DJ', 2021),
 		('Mercury - Act 11', 2019),
 		('Music Of The Earth', 2021),
 		('Final Days in London', 2022),
 		('Chronicles of Time', 2016),
 		('Luggage', 2020),
 		('yes yes yes', 2018),
 		('Loose Myself', 2016);

 INSERT INTO track (name_track, time_track, album_id)
 VALUES ('Never Really Over', '0:03:43', 1),
 		('Cry About It Later', '0:03:09', 1),
 		('Teary Eyes', '0:03:02', 1),
 		('Bastards', '0:03:51', 2),
 		('Let ''Em Talk', '0:03:05', 2),
 		('Hymn', '0:03:25', 2),
 		('Boyfriend ', '0:02:41', 3),
 		('My Rare', '0:03:40', 3),
 		('Lose You To Love Me', '0:03:26', 3),
 		('Lean On', '0:02:56', 4),
 		('Cold Water', '0:03:05', 4),
 		('Ligth it UP', '0:02:46', 4),
 		('Babel', '0:02:52', 5),
 		('Manos', '0:07:01', 5),
 		('Black Heat', '0:06:48', 5),
 		('Flamingo ', '0:08:44', 6),
 		('Groove Attack', '0:06:48', 6),
 		('Gravity Waves', '0:08:36', 6),
 		('Your Love (9PM)', '0:03:02', 7),
 		('Starfire', '0:04:49', 7),
 		('Forward Ever', '0:06:38', 7),
 		('Enemy', '0:02:53', 8),
 		('Lonely', '0:02:39', 8),
 		('Monday', '0:03:07', 8),
 		('Higher Power', '0:03:26', 9),
 		('Humankind', '0:04:26', 9),
 		('Let Somebody  Go', '0:04:01', 9),
 		('December', '0:05:06', 10),
 		('Heart of the Android', '0:04:32', 10),
 		('Inferno', '0:04:37', 10),
 		('The Battle', '0:05:30', 11),
 		('Dragon Heart', '0:04:27', 11),
 		('See the Light', '0:05:22', 11),
 		('Dreams Money Can Buy', '0:04:13', 12),
 		('Draft my Day', '0:04:26', 12),
 		('5 Am in Toronto', '0:03:25', 12),
 		('I Thought About Killing You', '0:04:34', 13),
 		('Yikes ', '0:03:08', 13),
 		('All Mine', '0:02:25', 13),
 		('YOU GON'' LEARN SOME JAZZ TODAY', '0:01:33', 14),
 		('Too Much', '0:05:33', 14),
 		('Small Talk (TrapScat T0 Cali)', '0:05:41', 14),
 		('GET READY OF MY ...', '0:04:10', 15),
 		('4EVER', '0:03:48', 15),
 		('DOPENESS', '0:04:38', 15),
 		('Here We Come A-Caroling', '0:02:20', 16),
 		('It Came Upon a Midnight Clear', '0:01:57', 16),
 		('Silent Night', '0:02:38', 16),
 		('Изольда', '0:03:14', 17),
 		('Чёрный мой дрозд', '0:04:11', 17),
 		('Волчья луна', '0:03:50', 17);
 	
 	
INSERT  INTO singer_genre( genre_ID, singer_ID)
VALUES (1,1),
	   (9,1),
	   (1,2),
	   (4,2),  
	   (1,3),
	   (2,4),
	   (2,5),
	   (1,5),
	   (3,6),
	   (2,6),
	   (2,7),
	   (1,8),
	   (4,8),
	   (4,9),
	   (1,9),
	   (5,10),
	   (5,11),
	   (6,12),
	   (1,12),
	   (6,13),
	   (7,14),
	   (1,14),
	   (1,15),
	   (6,15),
	   (7,15),
	   (8,16),
	   (8,17);

INSERT  INTO album_singer(album_ID, singer_ID)
VALUES (1,1),	 
	   (2,2),
	   (1,2),
	   (3,3),
	   (4,4),
	   (5,5),
	   (6,6),
	   (7,7),
	   (6,7),
	   (8,8),
	   (9,9),
	   (10,10),
	   (11,11),
	   (12,12),
	   (13,13),
	   (14,14),
	   (15,15),
	   (16,16),
	   (17,17),
	   (16,17),
	   (10,3);

INSERT  INTO track_in_colection(track_ID, collection_ID)
VALUES 	(1, 1),		  
		(2, 2),
		(1, 2),
		(3, 3),
		(4, 4),
		(5, 5),
		(6, 6),
		(7, 7),
		(6, 7),
		(8, 8),
		(12, 1),
		(45, 13),
		(23, 10),
		(36, 1),
		(19, 12),
		(24, 8),
		(49, 10),
		(15, 8),
		(40, 7),
		(18, 7),
		(23, 3),
		(22, 13),
		(36, 12),
		(4, 11),
		(51, 6),
		(17, 14),
		(19, 11),
		(50, 14),
		(33, 7),
		(44, 7),
		(24, 4),
		(35, 4),
		(48, 4),
		(44, 13),
		(26, 13),
		(49, 6),
		(15, 10),
		(20, 9),
		(14, 14),
		(9, 9),
		(28, 13),
		(33, 3),
		(1, 4),
		(24, 3),
		(25, 11),
		(15, 12),
		(40, 11);
	
  /* --------------------------------------------------------------------------------------------------*/	
	 /*  Задание № 2   УРОК 3 */
  /* --------------------------------------------------------------------------------------------------*/
  
SELECT name_album, year_album
  FROM album
 WHERE  year_album = 2018;
 
SELECT name_track, time_track
  FROM track
  WHERE time_track = (SELECT MAX(time_track)
  						FROM track);
SELECT name_track
  FROM track
 WHERE time_track >= '00:03:30';
 
SELECT name_collection
  FROM collection
 WHERE year_collection BETWEEN 2018 AND 2020; 
 
SELECT name_art 
  FROM singer
 WHERE name_art NOT LIKE '% %';
 
SELECT name_track
  FROM track
 WHERE name_track ILIKE  '% мой %'
 	   OR name_track ILIKE  'мой %'
 	   OR name_track ILIKE  '% мой'
 	   OR name_track ILIKE '% my %'
 	   OR name_track ILIKE  'my %'
 	   OR name_track ILIKE '% my';
 	   
 	  
 	  
 /* --------------------------------------------------------------------------------------------------*/	  
 	  /* «Продвинутая выборка данных»   УРОК 4*/
 /* --------------------------------------------------------------------------------------------------*/
  
  
  
/*  количество исполнителей в каждом жанре */

 SELECT	name_genre, COUNT(singer_id)
   FROM genre JOIN singer_genre sg USING(genre_id)
  GROUP BY name_genre;

 /*количество треков, вошедших в альбомы 2019-2020 годов;*/
 
SELECT COUNT(*) 
  FROM track t JOIN album a USING(album_id)
 WHERE a.year_album = 2019 OR a.year_album = 2020
 
 /*средняя продолжительность треков по каждому альбому;*/
 
 SELECT a.name_album , AVG(time_track)
   FROM track t JOIN album a USING(album_id)
  GROUP BY a.name_album ;
  
 /* все исполнители, которые не выпустили альбомы в 2020 году; */
 
 SELECT name_art
   FROM singer s 
  WHERE s.singer_id  NOT IN (SELECT singer_id 
  								FROM album a2 
  									 JOIN album_singer as3 
  									 ON a2.album_id = as3.album_id 
  								WHERE year_album = 2020);
  							
/*названия сборников, в которых присутствует конкретный исполнитель (выберите сами)*/
  								
  SELECT c.name_collection 
    FROM album_singer as2 
    	 JOIN album USING(album_id)
    	 JOIN track USING(album_id)
    	 JOIN track_in_colection USING(track_id)
    	 JOIN collection c USING(collection_id) 
   WHERE as2.singer_id = 17
   
   
   
 /*название альбомов, в которых присутствуют исполнители более 1 жанра;*/
 
  SELECT a.name_album 
    FROM album_singer as2 
         JOIN album a ON as2.album_id = a.album_id 
   WHERE as2 .singer_id IN (SELECT sg.singer_id
     						  FROM singer_genre sg 
						     GROUP BY sg.singer_id 
						    HAVING COUNT(sg.genre_id) > 1
						     ORDER BY COUNT(sg.genre_id) DESC);
						    
/* наименование треков, которые не входят в сборники */

   SELECT name_track
     FROM track t 
    WHERE track_id NOT IN (SELECT track_id FROM track_in_colection tic)
    
/*исполнителя(-ей), написавшего самый короткий по продолжительности трек 
 (теоретически таких треков может быть несколько); */
    
 SELECT name_art
   FROM singer s
        JOIN album_singer as2 USING(singer_id)
        JOIN album a USING(album_id)
        JOIN track t USING(album_id)
  WHERE t.time_track = (SELECT MIN(time_track) FROM track); 
  /* если сделать MAX запрос выведет 2 исполнителя с одинаковой макс. длинной треков */
  
  
 /* название альбомов, содержащих наименьшее количество треков. */ 
   
 /* Упс ... кгда заполнял базу данных делал во всех альомах по 3 трека.
  * Для выпонения задания добавлю трек в альбом и выведу все остальные с 3 треками.
  * Ну и на всякий случай выведу альбом с наибольшим количеством треков 
  * Надеюсь подойдет как решение*/ 
  
 INSERT INTO track (name_track, time_track, album_id)
 VALUES ('Какая то песяня', '0:04:13', 17);

/* альбомы с наименьшим количеством треков*/

SELECT name_album
  FROM album a 
 WHERE a.album_id IN (SELECT album_id
					    FROM track
					   GROUP BY album_id
					  HAVING COUNT(track_id) = (SELECT COUNT(track_id)
												  FROM track
											     GROUP BY album_id
											     LIMIT 1));

/* альбом с наибольшим количеством треков*/

SELECT name_album
  FROM album a 
 WHERE a.album_id NOT IN (SELECT album_id
					    FROM track
					   GROUP BY album_id
					  HAVING COUNT(track_id) = (SELECT COUNT(track_id)
												  FROM track
											     GROUP BY album_id
											     LIMIT 1));



 

		 
		 


   
