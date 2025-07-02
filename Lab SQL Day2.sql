USE sakila;

show tables; 


-- 2. Retrieve all the data from the tables actor, film and customer.
SELECT * from sakila.actor;
SELECT * from sakila.film;
SELECT * from sakila.customer;

-- 3. Retrieve the following columns from their respective tables:
-- 3.1 Titles of all films from the film table
SELECT title from sakila.film;

-- 3.2 List of languages used in films, with the column aliased as language from the language table
SELECT name as language FROM sakila.language;

-- 3.3 List of first names of all employees from the staff table
SELECT first_name from sakila.staff;

-- 4. Retrieve unique release years.
SELECT distinct release_year from sakila.film;

-- 5. Counting records for database insights:
-- 5.1 Determine the number of stores that the company has.
SELECT COUNT(store_id) as number_of_stores from sakila.store;

-- 5.2 Determine the number of employees that the company has.
SELECT COUNT(staff_id) as number_of_employees from sakila.staff;

-- 5.3 Determine how many films are available for rent and how many have been rented.
SELECT COUNT(inventory_id) from sakila.inventory;
SELECT COUNT(rental_id) from sakila.rental;

-- 5.4 Determine the number of distinct last names of the actors in the database.
select COUNT(distinct(last_name)) from sakila.actor;

-- 6. Retrieve the 10 longest films.
SELECT title, length from sakila.film
order by length desc
limit 10;

-- 7. Use filtering techniques in order to:
-- 7.1 Retrieve all actors with the first name "SCARLETT".
SELECT * FROM sakila.actor
WHERE first_name = 'SCARLETT';

-- BONUS:

-- 7.2 Retrieve all movies that have ARMAGEDDON in their title and have a duration longer than 100 minutes.
SELECT * FROM sakila.film
WHERE title regexp '^ARMAGEDDON+';
