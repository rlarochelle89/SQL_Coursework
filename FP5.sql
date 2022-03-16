USE mavenmovies; 

SELECT
	customer.first_name,
    customer.last_name,
    customer.store_id,
    customer.active,
    address.address,
    address.address2,
    city.city,
    country.country
FROM customer
	LEFT JOIN address
		ON customer.address_id = address.address_id
	LEFT JOIN city
		ON address.city_id = city.city_id
	LEFT JOIN country
		ON city.country_id = country.country_id
ORDER BY
	customer.last_name,
    customer.first_name