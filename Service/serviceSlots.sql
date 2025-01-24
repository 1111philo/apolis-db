SELECT 
    GuestServices.service_id,
    GuestServices.slot_id,
    GuestServices.guest_id
FROM 
    GuestServices
WHERE 
    GuestServices.service_id = @service_id
    AND GuestServices.status = 'Slotted';
