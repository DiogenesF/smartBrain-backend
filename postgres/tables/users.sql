BEGIN TRANSACTION;

CREATE TABLE users
(
    id serial PRIMARY KEY,
    name VARCHAR(100),
    email text UNIQUE NOT NULL,
    age BIGINT default 0,
    userimage VARCHAR(200),
    entries BIGINT DEFAULT 0,
    joined TIMESTAMP NOT NULL
);

COMMIT;