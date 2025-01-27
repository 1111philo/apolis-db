SELECT 
    service_id,
    name,
    quota,
    created_at,
    updated_at
FROM 
    Services
WHERE 
    service_id = @service_id;
