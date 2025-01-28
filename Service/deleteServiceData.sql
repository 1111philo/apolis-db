-- Step 1: Delete Service from Services Table
DELETE FROM Services
WHERE service_id = @service_id;

-- Step 2: Clean Up Visits JSON Field (if necessary)
UPDATE Visits
SET service_ids = JSON_REMOVE(
    service_ids, 
    JSON_UNQUOTE(JSON_SEARCH(service_ids, 'one', CAST(@service_id AS CHAR)))
)
WHERE JSON_SEARCH(service_ids, 'one', CAST(@service_id AS CHAR)) IS NOT NULL;