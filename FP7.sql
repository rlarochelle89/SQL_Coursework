USE mavenmovies; 

SELECT
	'advisor' AS type,
    advisor.first_name,
    advisor.last_name,
    'Null' AS company_name
FROM advisor

UNION

SELECT
	'investor' AS type,
    investor.first_name,
    investor.last_name,
    investor.company_name
FROM investor