SELECT	COUNT(bookcode) AS books_20_to_25
FROM	copy
WHERE	price > 20.00 AND price < 25.00