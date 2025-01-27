SELECT 
    service_id,
    name,
    quota,
    created_at,
    updated_at
FROM 
    Services
-- conditions to limit with search
-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- --
-- WHERE 
--     (@service_name IS NULL OR name = @service_name) 
--     AND (@service_id IS NULL OR service_id = @service_id)
-- conditions to limit with pagination
-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- 
-- LIMIT 10 OFFSET 0;
