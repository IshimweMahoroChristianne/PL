-- Example of adding a column to a table (ALTER TABLE)
ALTER TABLE Users ADD last_login DATE;

-- Inserting a record
INSERT INTO Users (username, email, password_hash) VALUES ('alex_smith', 'alex@example.com', 'hashed_pw');

-- Updating a record
UPDATE Users SET password_hash = 'new_hashed_pw' WHERE username = 'john_doe';

-- Deleting a record
DELETE FROM Users WHERE user_id = 3;

-- Grant a user SELECT permission on a table
GRANT SELECT ON Users TO some_user;

-- Revoke permission
REVOKE SELECT ON Users FROM some_user;

-- Start a transaction, insert data, and then commit it
BEGIN
    INSERT INTO Users (username, email, password_hash) VALUES ('mark_twain', 'mark@example.com', 'hashed_pw');
    COMMIT;
END;

-- Insert data and rollback the transaction
BEGIN
    INSERT INTO Users (username, email, password_hash) VALUES ('samuel_clemens', 'sam@example.com', 'hashed_pw');
    ROLLBACK; -- This will undo the insertion
END;
