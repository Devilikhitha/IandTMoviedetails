CREATE TABLE Movies(movieId int(10) PRIMARY KEY, title varchar(20), release_year varchar(20), director_Id int(10));
CREATE TABLE directors (director_Id int(10) PRIMARY KEY, director_name varchar(20));
CREATE TABLE genres (genre_Id int(10) PRIMARY KEY, genre_name varchar(20));
CREATE TABLE movie_genres (movie_Id int(10) PRIMARY KEY, genre_Id int(10));

INSERT INTO Movies VALUES (0001, "Radhe Shyam", '2022', 1001);
INSERT INTO Movies VALUES (0002, "Avatar", '2023', 1002);
INSERT INTO Movies VALUES (0003, "Bro", '2023', 1003);
INSERT INTO Movies VALUES (0004, "Adipurush", '2023', 1004);

INSERT INTO directors VALUES (1001, "Rajamouli");
INSERT INTO directors VALUES (1002, "James Cameron");
INSERT INTO directors VALUES (1003, "Christopher Rolan");
INSERT INTO directors VALUES (1005, "Nag Aswin");

INSERT INTO genres VALUES (19991, "Romance");
INSERT INTO genres VALUES (19992, "Fiction");
INSERT INTO genres VALUES (19993, "History adeventures");

INSERT INTO movie_genres VALUES (0001, 19991);
INSERT INTO movie_genres VALUES (0002, 19992);
INSERT INTO movie_genres VALUES (0003, 19993);

-- query 1
select m.title, d.director_name from Movies m, directors d where m.director_Id = d.director_Id;

-- query 2
select m.title, m.release_year, d.director_name from Movies m left join directors d on m.director_Id = d.director_Id;


-- query 3
select  d.director_name, m.title from directors d left join Movies m on m.director_Id = d.director_Id ;


-- query 4
select m.title, m.release_year, d.director_name from Movies m left join directors d on m.director_Id = d.director_Id
union 
select m.title, m.release_year, d.director_name from Movies m right join directors d on m.director_Id = d.director_Id;


-- query 5
select m.title, g.genre_name from Movies m join movie_genres mg on m.movieId = mg.movie_Id join genres g 
on mg.genre_Id = g.genre_Id;
