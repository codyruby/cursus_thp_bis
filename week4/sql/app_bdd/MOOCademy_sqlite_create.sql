CREATE TABLE cours (
	Id integer PRIMARY KEY AUTOINCREMENT,
	title text,
	describe text
);

CREATE TABLE lessons (
	Id integer PRIMARY KEY AUTOINCREMENT,
	title text,
	boby text,
	coursId text
);

