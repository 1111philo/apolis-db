SELECT 
    Guests.guest_id,
    Guests.first_name,
    Guests.last_name,
    Guests.dob,
    Guests.case_manager,
    GuestServices.service_id,
    GuestServices.status,
    GuestServices.queued_at
FROM 
    Guests
INNER JOIN 
    GuestServices ON Guests.guest_id = GuestServices.guest_id
WHERE 
    GuestServices.status = 'Completed'
-- conditions to limit with search
-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- --
    -- AND (
    --     (@service_id IS NOT NULL AND GuestServices.service_id = @service_id) 
    --     AND (@guest_id IS NOT NULL AND Guests.guest_id = @guest_id)
    -- );