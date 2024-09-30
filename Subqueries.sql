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
