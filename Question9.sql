/* Question 9A */
DROP TABLE IF EXISTS fictioncopies;

CREATE TABLE public.fictioncopies (
	bookcode	character(4) NOT NULL,
	title		character(40),
	branchnum	numeric(2,0) NOT NULL,
	copynum		numeric(2,0) NOT NULL,
	quality		character(20),
	price		numeric(8,2),
	CONSTRAINT	fictioncopies_pkey PRIMARY KEY (bookcode, branchnum, copynum)
	)
WITH (
  OIDS=FALSE
);
ALTER TABLE public.fictioncopies
  OWNER TO sum17_cbeno005;

/* Question 9B */
INSERT INTO fictioncopies(
	SELECT	b.bookcode, title, branchnum, copynum, quality, price
	FROM	book b, copy c
	WHERE	type = 'FIC' AND b.bookcode = c.bookcode
)