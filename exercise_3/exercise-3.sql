-- find all film titles with the category Action
-- use a LEFT JOIN FROM film onto film_category
-- use LEFT JOIN FROM film_categor onto category
SELECT
	title
FROM 
	category
LEFT JOIN
	film_category
ON 
	category.category_id = film_category.category_id
LEFT JOIN
	film
ON film_category.film_id = film.film_id
WHERE 
	category.name = 'Action';
