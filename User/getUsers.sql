SELECT 
    user_id,
    email,
    role,
    created_at,
    updated_at
FROM 
    Users
-- Optional filtering by email and role
-- Uncomment and replace placeholders to apply filters
-- WHERE 
--     (@user_email IS NULL OR email = @user_email)
--     AND (@user_role IS NULL OR role = @user_role)

-- Optional conditions for pagination
-- Uncomment and replace values for limit and offset
-- LIMIT 10 OFFSET 0;
