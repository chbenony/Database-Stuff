SELECT	title
FROM	book
WHERE	type = 'CMP' OR title IN (
	SELECT	title
	FROM	book
	WHERE	type = 'HIS' OR title IN (
		SELECT	title
		FROM	book
		WHERE	type = 'SCI'
		)
	)