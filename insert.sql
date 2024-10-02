-- Insert into Users
INSERT INTO Users (username, email, password_hash) VALUES ('john_doe', 'john@example.com', 'hashed_pw');
INSERT INTO Users (username, email, password_hash) VALUES ('jane_doe', 'jane@example.com', 'washed_pw');

-- Insert into Roles
INSERT INTO Roles (role_name) VALUES ('Admin');
INSERT INTO Roles (role_name) VALUES ('User');

-- Insert into Permissions
INSERT INTO Permissions (permission_name, description) VALUES ('Read', 'Can read data');
INSERT INTO Permissions (permission_name, description) VALUES ('Write', 'Can write data');

-- Assign Roles to Users (inserting into User_Roles)
INSERT INTO User_Roles (user_id, role_id) VALUES (1, 1); -- John is Admin
INSERT INTO User_Roles (user_id, role_id) VALUES (2, 2); -- Jane is User

-- Assign Permissions to Roles (inserting into Role_Permissions)
INSERT INTO Role_Permissions (role_id, permission_id) VALUES (1, 1); -- Admin can read
INSERT INTO Role_Permissions (role_id, permission_id) VALUES (1, 2); -- Admin can write
INSERT INTO Role_Permissions (role_id, permission_id) VALUES (2, 1); -- User can read

-- Log User Activity
INSERT INTO System_Log (user_id, activity) VALUES (1, 'Logged in');
INSERT INTO System_Log (user_id, activity) VALUES (2, 'Viewed Dashboard');
