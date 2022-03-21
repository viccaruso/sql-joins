-- find all film titles rented out by customers with the first_name Roberta
-- Similar to exercise 5
SELECT
	title
FROM
	customer
LEFT JOIN
	rental
ON 
	customer.customer_id = rental.customer_id
LEFT JOIN
	inventory
ON
	inventory.inventory_id = rental.inventory_id
LEFT JOIN
	film
ON 
	film.film_id = inventory.film_id
WHERE
	customer.first_name = 'Roberta';