UPDATE Guests
SET 
    first_name = COALESCE(@new_first_name, first_name),
    last_name = COALESCE(@new_last_name, last_name),
    dob = COALESCE(@new_dob, dob),
    case_manager = COALESCE(@new_case_manager, case_manager),
    updated_at = CURRENT_TIMESTAMP 
WHERE 
    guest_id = @guest_id;