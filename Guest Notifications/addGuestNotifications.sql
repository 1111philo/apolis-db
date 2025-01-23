INSERT INTO GuestNotifications (guest_id, message, status, created_at, updated_at)
VALUES (@guest_id, @message, @status, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);