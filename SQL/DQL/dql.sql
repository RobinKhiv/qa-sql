use DATABASE sakila;

-- 1) Find the surname of the actor with the forename 'John'.
SELECT first_name, last_name FROM actor where first_name = "John";

-- 2) Find all actors with surname 'Neeson'.
select * FROM actor WHERE last_name = "Neeson";

-- 3) Find all actors with ID numbers divisible by 10.
SELECT * FROM actor WHERE actor_id % 10 = 0;

-- 4) What is the description of the movie with an ID of 100?
SELECT description FROM film WHERE film_id = 100;

-- 5) Find every R-rated movie.
SELECT * FROM film WHERE rating = "R";

-- 6) Find every non-R-rated movie.
SELECT * FROM film WHERE rating != "R";

-- 7) Find the ten shortest movies.
SELECT * FROM film ORDER BY length ASC LIMIT 10;

-- 8) Find all movies that have deleted scenes.
SELECT title, special_features FROM film WHERE special_features = "Deleted Scenes";

-- 9) Find the titles of all the horror movies.
SELECT f.title, c.name FROM film_category fc JOIN category c ON fc.category_id = c.category_id JOIN film f ON f.film_id = fc.film_id WHERE fc.category_id = 11;
