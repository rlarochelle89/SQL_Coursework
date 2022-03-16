USE mavenmovies; 

SELECT
	inventory.store_id,
    category.name,
    COUNT(inventory.inventory_id) AS num_films,
    AVG(film.replacement_cost) AS avg_replacement,
    SUM(film.replacement_cost) AS total_replacement
FROM inventory
	INNER JOIN film
		ON inventory.film_id = film.film_id
	INNER JOIN film_category
		ON film.film_id = film_category.film_id
	INNER JOIN category
		ON film_category.category_id = category.category_id
		
GROUP BY
	inventory.store_id,
    category.name
ORDER BY
	inventory.store_id,
    category.name