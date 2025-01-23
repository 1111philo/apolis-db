SELECT 
    notification_id,
    guest_id,
    message,
    status,
    created_at,
    updated_at
FROM 
    GuestNotifications
-- Conditions to limit results by search criteria
-- Uncomment and replace variables to apply filters
-- WHERE 
--     (@guest_id IS NULL OR guest_id = @guest_id)
--     AND (@notification_id IS NULL OR notification_id = @notification_id)

-- Conditions to limit results with pagination
-- Uncomment and replace values for pagination
-- LIMIT 10 OFFSET 0;