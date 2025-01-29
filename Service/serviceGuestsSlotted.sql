SELECT 
    Guests.guest_id,
    Guests.first_name,
    Guests.last_name,
    Guests.dob,
    Guests.case_manager,
    GuestServices.service_id,
    GuestServices.slot_id,
    GuestServices.status,
    GuestServices.queued_at
FROM 
    Guests
INNER JOIN 
    GuestServices ON Guests.guest_id = GuestServices.guest_id
WHERE 
    GuestServices.status = 'Slotted'
-- Optional conditions to limit search
-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- --
    -- AND (
    --     (@service_id IS NULL OR GuestServices.service_id = @service_id) 
    --     AND (@guest_id IS NULL OR Guests.guest_id = @guest_id)
    -- );