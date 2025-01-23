UPDATE GuestServices
SET 
    status = @new_status, -- Update the status to the new value
    queued_at = CASE WHEN @new_status = 'Queued' THEN CURRENT_TIMESTAMP ELSE queued_at END,
    slotted_at = CASE WHEN @new_status = 'Slotted' THEN CURRENT_TIMESTAMP ELSE slotted_at END,
    completed_at = CASE WHEN @new_status = 'Completed' THEN CURRENT_TIMESTAMP ELSE completed_at END
WHERE 
    guest_id = @guest_id
    AND service_id = @service_id;