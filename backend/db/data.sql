

CREATE TABLE users (
  id SERIAL PRIMARY KEY,
  name VARCHAR NOT NULL,
  email VARCHAR UNIQUE NOT NULL,
  password_digest VARCHAR NOT NULL,
  balance INT NOT NULL
);

CREATE TABLE portfolio (
  id SERIAL PRIMARY KEY,
  user_id INT REFERENCES users(id),
  data jsonb,
  total_value INT
);

CREATE TABLE transactions (
  id SERIAL PRIMARY KEY,
  user_id INT REFERENCES users(id),
  ticker VARCHAR NOT NULL,
  price INT NOT NULL,
  amount INT NOT NULL,
  time_stamp TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

COMMIT;
