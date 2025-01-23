INSERT INTO Users (email, password, role, created_at, updated_at)
VALUES (@email, SHA2(@password, 256), @role, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);