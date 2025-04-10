-- Initial data for HLE_EQUIPMENT
INSERT INTO hle_equipment (id, equipment_type_id, identifier, location_id, status, purchase_date)
VALUES (1, 1, 'LB-001', 1, 'Operational', TO_DATE('2023-01-15', 'YYYY-MM-DD')); -- Loopband 1 op Fitness Vloer
INSERT INTO hle_equipment (id, equipment_type_id, identifier, location_id, status, purchase_date)
VALUES (2, 1, 'LB-002', 1, 'Operational', TO_DATE('2023-01-15', 'YYYY-MM-DD')); -- Loopband 2 op Fitness Vloer
INSERT INTO hle_equipment (id, equipment_type_id, identifier, location_id, status, purchase_date)
VALUES (3, 3, 'LP-001', 1, 'Needs Maintenance', TO_DATE('2022-11-01', 'YYYY-MM-DD')); -- Leg Press op Fitness Vloer
INSERT INTO hle_equipment (id, equipment_type_id, identifier, location_id, status, purchase_date)
VALUES (4, 4, 'DBSET-01', 1, 'Operational', TO_DATE('2022-10-01', 'YYYY-MM-DD')); -- Dumbbell set op Fitness Vloer
COMMIT;