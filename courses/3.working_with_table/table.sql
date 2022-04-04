-- create users table
CREATE TABLE users (
    id SERIAL PRIMARY KEY,
    username VARCHAR(50)
);

-- insert into users
INSERT INTO users (username)
VALUES
    ('zekeYeager03'),
    ('ErenYeager'),
    ('Armin'),
    ('Mikasa');

-- select users
SELECT * FROM users;

-- create table photos
CREATE TABLE photos (
    id SERIAL PRIMARY KEY,
    url VARCHAR(200),
    user_id INT REFERENCES users(id)
);

-- insert to photos
INSERT INTO photos (url, user_id)
VALUES
    ('http://one.png', 4),
    ('http://two.png', 1),
    ('http://three.png', 1),
    ('http://four.png', 1),
    ('http://five.png', 2),
    ('http://six.png', 3),
    ('http://seven.png', 3);

-- select photos
SELECT * FROM photos;

-- select all photo created by user
SELECT * FROM photos WHERE user_id = 4;

-- select with join
SELECT url, username FROM photos JOIN users ON users.id = photos.user_id;
