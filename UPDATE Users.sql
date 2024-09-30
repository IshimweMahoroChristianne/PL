
SELECT u.username, r.role_name
FROM Users u
JOIN User_Roles ur ON u.user_id = ur.user_id
JOIN Roles r ON ur.role_id = r.role_id;

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

SELECT * FROM Users;
SELECT username, email, created_at FROM Users;
SELECT COUNT(*) FROM Users;
SELECT username
FROM Users
WHERE user_id IN (
    SELECT user_id
    FROM User_Roles
    WHERE role_id = (SELECT role_id FROM Roles WHERE role_name = 'Admin')
);

SELECT username
FROM Users
WHERE user_id NOT IN (SELECT user_id FROM User_Roles);

