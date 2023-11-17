CREATE TABLE session_count (
    session_count_id SERIAL PRIMARY KEY,
    user_id INTEGER REFERENCES user_for_comparison(user_id),
    session_count_value INTEGER
);
 
CREATE OR REPLACE FUNCTION update_session_count()
RETURNS TRIGGER AS
$$
BEGIN
    IF (TG_OP = 'INSERT' OR TG_OP = 'UPDATE' OR TG_OP = 'DELETE') THEN
        UPDATE session_count SET session_count_value = (
            SELECT COUNT() FROM session_table WHERE user_id = NEW.user_id
        )
        WHERE user_id = NEW.user_id;

        IF NOT FOUND THEN
            INSERT INTO session_count (user_id, session_count_value)
            VALUES (NEW.user_id, (
                SELECT COUNT() FROM session_table WHERE user_id = NEW.user_id
            ));
        END IF;
    END IF;

    RETURN NEW;
END;
$$
LANGUAGE plpgsql; 


CREATE TRIGGER trigger_update_session_count
AFTER INSERT OR UPDATE OR DELETE ON session_table
FOR EACH ROW EXECUTE FUNCTION update_session_count(); 

