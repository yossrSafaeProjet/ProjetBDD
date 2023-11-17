/* Création de la table username_history*/
CREATE TABLE username_history (
    username_history_id SERIAL PRIMARY KEY NOT NULL,
    user_id INT NOT NULL,
    username_new VARCHAR(255) NOT NULL
);  
/* Création de Trigger name*/

CREATE OR REPLACE FUNCTION trigger_update_username()
RETURNS TRIGGER AS $$
BEGIN
    RAISE NOTICE 'Trigger executed';

    IF TG_OP = 'INSERT' THEN
        INSERT INTO username_history (user_id, username_new) VALUES (NEW.user_id, NEW.username);
    ELSIF TG_OP = 'UPDATE' THEN
        IF OLD.username IS DISTINCT FROM NEW.username THEN
            INSERT INTO username_history (user_id, username_new) VALUES (NEW.user_id, NEW.username);
        END IF;
    END IF;
    RETURN NEW;
END;
$$ LANGUAGE plpgsql;  
 CREATE TRIGGER trigger_update_username
AFTER INSERT OR UPDATE ON user_table
FOR EACH ROW EXECUTE FUNCTION trigger_update_username(); 
 

-- 5 INSERT
INSERT INTO user_table (firstname, lastname, email, username, password, created_at)
VALUES ('John', 'Doe', 'johnz.doef@example.com', 'john_doeOOm', 'password123', NOW());

INSERT INTO user_table (firstname, lastname, email, username, password, created_at)
VALUES ('Jane', 'Smith', 'jne.smithf@example.com', 'jane_smithPPm', 'password456', NOW());

INSERT INTO user_table (firstname, lastname, email, username, password, created_at)
VALUES ('Jane', 'Smith', 'jaes.smitfh@example.com', 'jane_smithNLm', 'password456', NOW());


UPDATE user_table SET username = 'new_john_doe' WHERE user_id = 1;
UPDATE user_table SET username = 'new_jane_smith' WHERE user_id = 2;
  

-- SELECT pour vérifier l'historique des usernames
SELECT * FROM username_history;


