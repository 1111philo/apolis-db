UPDATE Services
SET 
    name = COALESCE(@new_name, name), -- Update service name if provided, otherwise keep current value
    quota = COALESCE(@new_quota, quota), -- Update quota if provided, otherwise keep current value
    updated_at = CURRENT_TIMESTAMP -- Always update the timestamp
WHERE 
    service_id = @service_id;