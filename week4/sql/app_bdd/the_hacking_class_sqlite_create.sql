CREATE TABLE Students (
	id integer PRIMARY KEY AUTOINCREMENT,
	name text,
	cours_id text
);

CREATE TABLE Cours (
	title text,
	cours_id text PRIMARY KEY AUTOINCREMENT,
	id text PRIMARY KEY AUTOINCREMENT
);

