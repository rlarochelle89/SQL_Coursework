USE mavenmovies;

SELECT
	customer.first_name,
    customer.last_name,
    COUNT(rental.rental_id) as total_rentals,
    SUM(payment.amount) as total_paid
FROM customer
	LEFT JOIN rental
		ON customer.customer_id = rental.customer_id
	LEFT JOIN payment
		ON customer.customer_id = payment.customer_id

GROUP BY
	customer.first_name,
    customer.last_name
ORDER BY
	SUM(payment.amount) DESC