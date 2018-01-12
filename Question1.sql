SELECT title
FROM book
WHERE publishercode IN (SELECT publisherCode
			FROM publisher
			WHERE publishername = 'Penguin USA'
			)