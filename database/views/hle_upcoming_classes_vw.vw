-- View: hle_upcoming_classes_vw
-- Purpose: Shows details of scheduled classes for the next 7 days.
CREATE OR REPLACE VIEW hle_upcoming_classes_vw AS
SELECT
    sc.id               AS scheduled_class_id,
    c.class_name,
    c.category,
    sc.start_time,
    sc.end_time,
    l.location_name,
    u.full_name         AS instructor_name,
    sc.max_attendees,
    sc.current_attendees,
    (sc.max_attendees - sc.current_attendees) AS spots_available,
    sc.status           AS schedule_status
FROM
    hle_scheduled_classes sc
    INNER JOIN hle_classes c ON sc.class_id = c.id
    INNER JOIN hle_locations l ON sc.location_id = l.id
    INNER JOIN hle_users u ON sc.instructor_user_id = u.id -- Join to get instructor name
WHERE
    sc.start_time >= SYSTIMESTAMP  -- Starttijd is nu of in de toekomst
    AND sc.start_time < SYSTIMESTAMP + 7 -- Starttijd is binnen 7 dagen
    AND sc.status = 'Scheduled' -- Alleen geplande lessen (niet cancelled/full/completed)
;