-- Create Users Table
CREATE TABLE users (
	user_id INT AUTO_INCREMENT PRIMARY KEY, -- Auto-incremented primary key
    username VARCHAR(50) NOT NULL,
    email VARCHAR(100) NOT NULL UNIQUE,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP -- Automatically set timestamp
);

-- Create Movies table
CREATE TABLE movies (
	movie_id INT AUTO_INCREMENT PRIMARY KEY,
    title VARCHAR(255) NOT NULL,
    summary TEXT,
    release_year INT NOT NULL
);

-- Create Ratings table
CREATE TABLE ratings (
	rating_id INT AUTO_INCREMENT PRIMARY KEY, 									-- Auto-incremented primary key
    user_id INT NOT NULL,													-- Foreign key to Users table
    movie_id INT NOT NULL,													-- Foreign key Movies table
    rating INT NOT NULL CHECK(rating >=1 AND rating <= 10), 				-- Rating from 1 to 10 integers
	review TEXT, 															-- Written reviews are optional
    rated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP, 							-- Automatically set timestamp
    FOREIGN KEY (user_id) REFERENCES users(user_id) ON DELETE CASCADE,
    FOREIGN KEY (movie_id) REFERENCES movies(movie_id) ON DELETE CASCADE	
);



-- Users table, user insertion example
INSERT INTO users(username, email)
VALUES('maliketh', 'blade@azula.com');

-- Movies table, movie insertion example
INSERT INTO movies(title, summary, release_year)
VALUES('Dune: Part Two', 'Paul Atreides unites with Chani and the Fremen while seeking revenge against the conspirators who destroyed his family.', 2024);

-- Ratings table, review insertion example
INSERT INTO ratings(user_id, movie_id, rating, review)
VALUES(1, 2, 8, 'Another great movie!');


SELECT * FROM users;
SELECT * FROM movies;
SELECT * FROM ratings;




INSERT INTO movies(title, summary, release_year)
VALUES("2001: A Space Odyssey", "After uncovering a mysterious artifact buried beneath the Lunar surface, a spacecraft is sent to Jupiter to find its origins: a spacecraft manned by two men and the supercomputer HAL 9000.", 1968);

