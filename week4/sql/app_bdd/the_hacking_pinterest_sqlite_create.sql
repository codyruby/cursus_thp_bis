CREATE TABLE users (
	id integer PRIMARY KEY AUTOINCREMENT,
	name text PRIMARY KEY AUTOINCREMENT
);

CREATE TABLE pins (
	id integer PRIMARY KEY AUTOINCREMENT,
	url text,
	comment text,
	user_id integer
);

