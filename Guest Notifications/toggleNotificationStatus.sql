UPDATE GuestNotifications
SET status = CASE 
    WHEN status = 'Active' THEN 'Archived'
    WHEN status = 'Archived' THEN 'Active'
    ELSE status -- Preserve the status if it's neither 'Active' nor 'Archived'
END
WHERE notification_id = @notification_id;