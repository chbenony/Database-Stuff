SELECT	title
FROM	book
WHERE	type = 'FIC' AND bookcode IN (
	SELECT	bookcode
	FROM	wrote
	WHERE	authornum IN (
		SELECT	authornum
		FROM	author
		WHERE	authorlast = 'Steinbeck' AND authorfirst = 'John'
		)
	)
	