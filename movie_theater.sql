CREATE TABLE customer(
	customer_id SERIAL PRIMARY KEY,
	cust_name VARCHAR(50) NOT NULL
);

CREATE TABLE movie(
	movie_theater SERIAL PRIMARY KEY,
	movie_name VARCHAR(50) NOT NULL 
);

CREATE TABLE ticket(
	ticket_number SERIAL PRIMARY KEY,
	quantity INTEGER NOT NULL,
	price NUMERIC(4,2) NOT NULL
);

CREATE TABLE theater(
	theater_number SERIAL PRIMARY KEY,
	theater_location VARCHAR(100)
);


ALTER TABLE movie 
ADD COLUMN ticket_number INTEGER NOT NULL;

ALTER TABLE movie 
ADD FOREIGN KEY(ticket_number) REFERENCES ticket(ticket_number);

ALTER TABLE ticket 
ADD COLUMN customer_id INTEGER NOT NULL;

ALTER TABLE ticket 
ADD FOREIGN KEY(customer_id) REFERENCES customer(customer_id);

ALTER TABLE theater 
ADD COLUMN movie_theater INTEGER;

ALTER TABLE theater 
ADD FOREIGN KEY(movie_theater) REFERENCES theater(movie_theater);
