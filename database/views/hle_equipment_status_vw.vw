-- View: hle_equipment_status_vw
-- Purpose: Overview of all equipment with type, location, and status.
CREATE OR REPLACE VIEW hle_equipment_status_vw AS
SELECT
    e.id AS equipment_id,
    e.identifier,
    et.type_name AS equipment_type,
    et.category,
    l.location_name,
    e.status,
    e.purchase_date,
    e.last_maintenance_date
FROM
    hle_equipment e
    INNER JOIN hle_equipment_types et ON e.equipment_type_id = et.id
    LEFT JOIN hle_locations l ON e.location_id = l.id -- Left join in case location is optional
;