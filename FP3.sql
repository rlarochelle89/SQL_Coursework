USE mavenmovies; 

SELECT
	inventory.store_id, 
    film.rating,
    COUNT(inventory.inventory_id) AS num_inventory
FROM inventory
	INNER JOIN film
		ON inventory.film_id = film.film_id
GROUP BY
    inventory.store_id,
    film.rating
ORDER BY
	inventory.store_id,
    film.rating