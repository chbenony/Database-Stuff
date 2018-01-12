SELECT	publishername, count(bookcode) AS num_of_books
FROM	publisher p, book b
WHERE	p.publishercode = b.publishercode AND b.publishercode IN (
	SELECT publishercode
	FROM	book
	GROUP BY publishercode
	HAVING	count(publishercode) >= 2
	)
GROUP BY publishername