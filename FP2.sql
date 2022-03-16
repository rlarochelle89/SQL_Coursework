USE mavenmovies; 

SELECT
	inventory.store_id, 
    inventory.inventory_id, 
    film.title, 
    film.rating,
    film.rental_rate, 
    film.replacement_cost
FROM inventory
	INNER JOIN film
		ON inventory.film_id = film.film_id
        
ORDER BY
	inventory.store_id,
    inventory.inventory_id