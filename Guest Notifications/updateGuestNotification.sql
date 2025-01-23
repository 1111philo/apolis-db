UPDATE GuestNotifications
SET 
    status = COALESCE(@new_status, status), -- Update status if provided, otherwise keep current value
    message = COALESCE(@new_message, message), -- Update message if provided, otherwise keep current value
    updated_at = CURRENT_TIMESTAMP -- Always update the timestamp
WHERE 
    notification_id = @notification_id;