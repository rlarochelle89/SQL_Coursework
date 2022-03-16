USE mavenmovies;

SELECT
	staff.first_name,
    staff.last_name,
    address.address,
    address.address2,
	address.district,
    city.city,
    country.country,
	address.postal_code
FROM staff
	INNER JOIN store
		ON staff.store_id = store.store_id
	INNER JOIN address
		ON store.address_id = address.address_id
	INNER JOIN city
		ON address.city_id = city.city_id
	INNER JOIN country
		ON city.country_id = country.country_id