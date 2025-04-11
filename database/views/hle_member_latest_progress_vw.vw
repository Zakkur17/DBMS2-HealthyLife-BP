-- View: hle_member_latest_progress_vw
-- Purpose: Shows the most recent progress measurement for each member.
CREATE OR REPLACE VIEW hle_member_latest_progress_vw AS
SELECT
    u.id AS user_id,
    u.full_name AS member_name,
    pm.measurement_date,
    pm.weight_kg,
    pm.height_cm,
    pm.bmi,
    pm.body_fat_percentage,
    pm.notes,
    rec_user.full_name AS recorded_by
FROM
    hle_users u
    LEFT JOIN hle_progress_measurements pm ON u.id = pm.user_id
    LEFT JOIN hle_users rec_user ON pm.recorded_by_user_id = rec_user.id
WHERE
    u.role_id = 3 -- Only select members (assuming role_id 3 is 'Lid')
    AND (pm.id IS NULL OR pm.measurement_date = (
            SELECT MAX(pm_inner.measurement_date)
            FROM hle_progress_measurements pm_inner
            WHERE pm_inner.user_id = u.id
        )
    );