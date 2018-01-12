SELECT	title, publishercode, type, authorfirst, authorlast
FROM	book b, author a, wrote w
WHERE	b.bookcode = w.bookcode AND a.authornum = w.authornum AND sequence IN (
	SELECT	sequence
	FROM	wrote
	ORDER BY sequence
	)
ORDER BY title 