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
    ) AS guest_notifications,
    JSON_ARRAYAGG(
        JSON_OBJECT(
            'guest_service_id', GuestServices.guest_service_id,
            'service_id', GuestServices.service_id,
            'status', GuestServices.status,
            'queued_at', GuestServices.queued_at,
            'slotted_at', GuestServices.slotted_at,
            'completed_at', GuestServices.completed_at
        )
    ) AS guest_services
FROM 
    Guests
LEFT JOIN 
    GuestNotifications ON Guests.guest_id = GuestNotifications.guest_id
LEFT JOIN 
    GuestServices ON Guests.guest_id = GuestServices.guest_id
WHERE 
    @guest_id IS Guests.guest_id = @guest_id
GROUP BY 
    Guests.guest_id
