SELECT u.username, r.role_name
FROM Users u
JOIN User_Roles ur ON u.user_id = ur.user_id
JOIN Roles r ON ur.role_id = r.role_id;

SELECT r.role_name, p.permission_name
FROM Roles r
JOIN Role_Permissions rp ON r.role_id = rp.role_id
JOIN Permissions p ON rp.permission_id = p.permission_id
WHERE r.role_name = 'Admin';

SELECT u.username, sl.activity, sl.log_time
FROM Users u
JOIN System_Log sl ON u.user_id = sl.user_id
WHERE u.username = 'john_doe';
