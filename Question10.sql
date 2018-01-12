UPDATE	fictioncopies
SET	price = (price + 10/100 * price)
WHERE	quality = 'Excellent'