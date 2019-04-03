CREATE TABLE Users (
	Id integer PRIMARY KEY AUTOINCREMENT,
	name text
);

CREATE TABLE Articles (
	Id integer,
	content text,
	userId integer
);

CREATE TABLE Catégories (
	Id integer,
	title text,
	articleId integer
);

CREATE TABLE Tags (
	Id integer,
	title text,
	color text,
	catégoryId text
);

