/* CREATION TABLE USER */
 create table user_table( user_id Serial PRIMARY KEY NOT NULL,firstname varchar(255) NOT NULL,
lastname varchar(255) NOT NULL, email varchar(255) NOT NULL, username VARCHAR(255),password varchar(255) NOT NULL,
 created_at TIMESTAMP WITH TIME ZONE);  

 
/* CREATION TABLE user_email_verification_table */
   CREATE TABLE user_email_verification_table (
    uev_id SERIAL PRIMARY KEY NOT NULL,
    user_id INT REFERENCES user_table(user_id) NOT NULL,
    verified_at TIMESTAMP WITH TIME ZONE
);   
/* Creation table session  */
 CREATE TABLE session_table (
    session_id SERIAL PRIMARY KEY NOT NULL,
    user_id INT REFERENCES user_table(user_id) NOT NULL,
    connected_at TIMESTAMP WITH TIME ZONE NOT NULL
); 
  
  -- Ajouter la contrainte UNIQUE et la contrainte CHECK à la colonne username
ALTER TABLE user_table
ADD CONSTRAINT unique_username UNIQUE (username),
ADD CONSTRAINT check_username_length CHECK (LENGTH(username) > 8);

-- Ajouter la contrainte UNIQUE à la colonne email
ALTER TABLE user_table
ADD CONSTRAINT unique_email UNIQUE (email);

-- Ajouter la contrainte CHECK à la colonne password
ALTER TABLE user_table
ADD CONSTRAINT check_password_length CHECK (LENGTH(password) > 8);








