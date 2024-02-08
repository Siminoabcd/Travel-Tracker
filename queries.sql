CREATE TABLE countries(
  id SERIAL PRIMARY KEY,
  country_code TEXT,
  country_name VARCHAR(45)
);

/* Import countries.csv into countries */

CREATE TABLE users(
id SERIAL PRIMARY KEY,
name VARCHAR(15) UNIQUE NOT NULL,
color VARCHAR(15)
);

CREATE TABLE visited_countries(
id SERIAL PRIMARY KEY,
country_code CHAR(2) NOT NULL,
user_id INTEGER REFERENCES users(id)
);

INSERT INTO users (name, color)
VALUES ('Simon', 'teal'), ('Emma', 'powderblue');

INSERT INTO visited_countries (country_code, user_id)
VALUES ('SK', 1), ('BG', 1), ('TD', 2), ('BV', 2 );

SELECT *
FROM visited_countries
JOIN users
ON users.id = user_id;