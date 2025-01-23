SELECT 
    visit_id,
    guest_id,
    service_ids,
    created_at,
    updated_at
FROM 
    Visits
-- Optional conditions for filtering by date range
-- Uncomment the following line to filter by created_at between two dates
-- WHERE 
--     created_at BETWEEN '2025-01-01' AND '2025-01-31'

-- Optional conditions for pagination
-- Uncomment the following line to limit the number of results and specify the starting point
-- LIMIT 10 OFFSET 0;