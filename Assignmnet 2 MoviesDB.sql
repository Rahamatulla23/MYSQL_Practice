-- Drop database if it already exists
DROP DATABASE IF EXISTS MoviesDB;

-- Create Database
CREATE DATABASE MoviesDB;
USE MoviesDB;

-- Table: Genres
CREATE TABLE Genres (
    genre_id INT PRIMARY KEY AUTO_INCREMENT,
    genre_name VARCHAR(50) NOT NULL
);

-- Table: Directors
CREATE TABLE Directors (
    director_id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(100) NOT NULL,
    country VARCHAR(50)
);

-- Table: Movies
CREATE TABLE Movies (
    movie_id INT PRIMARY KEY AUTO_INCREMENT,
    title VARCHAR(150) NOT NULL,
    release_year INT,
    genre_id INT,
    director_id INT,
    FOREIGN KEY (genre_id) REFERENCES Genres(genre_id),
    FOREIGN KEY (director_id) REFERENCES Directors(director_id)
);

-- Table: Actors
CREATE TABLE Actors (
    actor_id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(100) NOT NULL,
    gender CHAR(1)
);

-- Table: Movie_Actors (Many-to-Many)
CREATE TABLE Movie_Actors (
    movie_id INT,
    actor_id INT,
    role_name VARCHAR(100),
    PRIMARY KEY (movie_id, actor_id),
    FOREIGN KEY (movie_id) REFERENCES Movies(movie_id),
    FOREIGN KEY (actor_id) REFERENCES Actors(actor_id)
);

-- Insert into Genres
INSERT INTO Genres (genre_name) VALUES
('Action'),
('Comedy'),
('Drama');

-- Insert into Directors
INSERT INTO Directors (name, country) VALUES
('Christopher Nolan', 'UK'),
('Quentin Tarantino', 'USA'),
('Rajkumar Hirani', 'India');

-- Insert into Movies
INSERT INTO Movies (title, release_year, genre_id, director_id) VALUES
('Inception', 2010, 1, 1),
('Interstellar', 2014, 3, 1),
('Pulp Fiction', 1994, 3, 2),
('3 Idiots', 2009, 2, 3),
('The Dark Knight', 2008, 1, 1);

-- Insert into Actors
INSERT INTO Actors (name, gender) VALUES
('Leonardo DiCaprio', 'M'),
('Matthew McConaughey', 'M'),
('Aamir Khan', 'M'),
('Kareena Kapoor', 'F'),
('Morgan Freeman', 'M');

-- Insert into Movie_Actors
INSERT INTO Movie_Actors (movie_id, actor_id, role_name) VALUES
(1, 1, 'Dom Cobb'),
(2, 2, 'Cooper'),
(2, 5, 'Professor Brand'),
(3, 1, 'Pumpkin'),
(4, 3, 'Rancho'),
(4, 4, 'Pia'),
(5, 1, 'Bruce Wayne');
