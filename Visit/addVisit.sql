-- Step 1: Insert a new visit into the Visits table
INSERT INTO Visits (guest_id, service_ids, created_at, updated_at)
VALUES (@guest_id, @service_ids, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);

-- Step 2: Update the GuestServices table with each service
INSERT INTO GuestServices (guest_id, service_id, status, queued_at)
VALUES (@guest_id, @service_id, 'Queued', CURRENT_TIMESTAMP);