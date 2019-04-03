CREATE TABLE Users (
	id integer PRIMARY KEY AUTOINCREMENT,
	name text,
	comment_id text,
	sub_comment_id text
);

CREATE TABLE Posts (
	id integer PRIMARY KEY AUTOINCREMENT,
	link text,
	user_id text
);

CREATE TABLE Comments (
	id integer PRIMARY KEY AUTOINCREMENT,
	content text,
	post_id text
);

CREATE TABLE Sub_comments (
	id integer PRIMARY KEY AUTOINCREMENT,
	content integer,
	comment_id integer
);

