SELECT	title, authorfirst, authorlast
FROM	book b, wrote w, author a
WHERE	b.bookcode = w.bookcode AND w.authornum = a.authornum AND b.bookcode IN(
	SELECT	bookcode
	FROM	copy
	WHERE	quality = 'Excellent' AND branchnum IN (
		SELECT	branchnum
		FROM	branch
		WHERE	branchname = 'Henry on the Hill'
		)
	)
ORDER BY	title, sequence