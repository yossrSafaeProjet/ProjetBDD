CREATE TABLE username_history_from_app (
    username_history_id SERIAL PRIMARY KEY,
    user_id INTEGER NOT NULL,
    username_new VARCHAR(255) NOT NULL,
    timestamp TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);