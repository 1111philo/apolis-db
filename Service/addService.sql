INSERT INTO Services (name, quota, created_at, updated_at)
VALUES (@service_name, @quota, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);