SELECT 
    (SELECT COUNT(*) FROM Guests) AS total_guests,
    Guests.guest_id,
    Guests.first_name,
    Guests.last_name,
    Guests.dob,
    Guests.case_manager,
    JSON_ARRAYAGG(
        JSON_OBJECT(
            'notification_id', GuestNotifications.notification_id,
            'message', GuestNotifications.message,
            'status', GuestNotifications.status,
            'created_at', GuestNotifications.created_at
        )
    ) AS notifications,
    JSON_ARRAYAGG(
        JSON_OBJECT(
            'guest_service_id', GuestServices.guest_service_id,
            'service_id', GuestServices.service_id,
            'status', GuestServices.status,
            'queued_at', GuestServices.queued_at,
            'slotted_at', GuestServices.slotted_at,
            'completed_at', GuestServices.completed_at
        )
    ) AS services
FROM 
    Guests
LEFT JOIN 
    GuestNotifications ON Guests.guest_id = GuestNotifications.guest_id
LEFT JOIN 
    GuestServices ON Guests.guest_id = GuestServices.guest_id
-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- 
-- conditions to limit with search
-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- 
-- WHERE 
--     (@first_name IS NULL OR Guests.first_name = @first_name)
--     AND (@last_name IS NULL OR Guests.last_name = @last_name)
--     AND (@guest_uid IS NULL OR Guests.guest_id = @guest_uid)
--     AND (@guest_dob IS NULL OR Guests.dob = @guest_dob)
-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- 
-- conditions to limit with search
-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- 
-- WHERE Guests.first_name = @first_name
--   AND Guests.last_name = @last_name
--   AND Guests.guest_id = @guest_uid
--   AND Guests.dob = @guest_dob
GROUP BY 
    Guests.guest_id
-- conditions to limit with pagination
-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- 
-- LIMIT 10 OFFSET 0;
