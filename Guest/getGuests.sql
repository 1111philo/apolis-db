SELECT 
    guest_id,
    first_name,
    last_name,
    dob,
    case_manager,
    created_at,
    updated_at
FROM 
    Guests
WHERE 
    (@first_name IS NULL OR first_name = @first_name)
    AND (@last_name IS NULL OR last_name = @last_name)
    AND (@guest_id IS NULL OR guest_id = @guest_id)
    AND (@dob IS NULL OR dob = @dob);
