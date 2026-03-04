CREATE TABLE user_sessions (
session_id SERIAL PRIMARY KEY,
customer_id INTEGER REFERENCES customers(customer_id),
session_date DATE NOT NULL,
pages_viewed INTEGER NOT NULL DEFAULT 1,
duration_mins DECIMAL(6,2) NOT NULL,
device VARCHAR(20) NOT NULL,
converted BOOLEAN NOT NULL DEFAULT FALSE
);
