UPDATE Users
SET 
    email = COALESCE(@new_email, email),
    password = COALESCE(@new_password, password),
    role = COALESCE(@new_role, role),
    updated_at = CURRENT_TIMESTAMP
WHERE 
    user_id = @user_id;