-- Master script to insert initial data for HealthyLife
-- File: 04_insert_data.sql

-- Initial data for HLE_ROLES
INSERT INTO hle_roles (role_name) VALUES ('Super Admin');
INSERT INTO hle_roles (role_name) VALUES ('Medewerker');
INSERT INTO hle_roles (role_name) VALUES ('Lid');
COMMIT;
/

-- Initial data for HLE_USERS
-- !!! GEBRUIK NOOIT PLATTE TEKST WACHTWOORDEN IN PRODUCTIE - HASH ZE !!!
INSERT INTO hle_users (role_id, username, password_hash, full_name, email, phone_number, is_active, registration_approved, approved_by_user_id, created_at)
VALUES (1, 'superadmin', 'plain_password123', 'Admin', 'admin@healthylife.com', '0611111111', 1, 1, 1, SYSTIMESTAMP);
INSERT INTO hle_users (role_id, username, password_hash, full_name, email, phone_number, is_active, registration_approved, approved_by_user_id, created_at)
VALUES (2, 'medewerker1', 'plain_password123', 'Jan Jansen', 'jan@healthylife.com', '0622222222', 1, 1, 1, SYSTIMESTAMP);
INSERT INTO hle_users (role_id, username, password_hash, full_name, email, phone_number, is_active, registration_approved, approved_by_user_id, created_at)
VALUES (2, 'medewerker2', 'plain_password123', 'Fatima Yilmaz', 'fatima@healthylife.com', '0633333333', 1, 1, 1, SYSTIMESTAMP);
INSERT INTO hle_users (role_id, username, password_hash, full_name, email, phone_number, is_active, registration_approved, approved_by_user_id, created_at)
VALUES (3, 'lid1', 'plain_password123', 'Piet Pietersen', 'piet@email.com', '0644444444', 1, 1, 2, SYSTIMESTAMP);
INSERT INTO hle_users (role_id, username, password_hash, full_name, email, phone_number, is_active, registration_approved, approved_by_user_id, created_at)
VALUES (3, 'lid2', 'plain_password123', 'Chen Li', 'chen@email.com', '0655555555', 1, 0, NULL, SYSTIMESTAMP);
COMMIT;
/

-- Initial data for HLE_MEMBERSHIP_TYPES
INSERT INTO hle_membership_types (type_name, description, monthly_rate, benefits, is_available)
VALUES ('Basic', 'Toegang tijdens daluren, standaard faciliteiten.', 30.00, 'Daluren toegang, gebruik cardio & kracht apparatuur.', 1);
INSERT INTO hle_membership_types (type_name, description, monthly_rate, benefits, is_available)
VALUES ('Premium', 'Onbeperkt toegang, inclusief groepslessen.', 50.00, 'Onbeperkt toegang, alle lessen, handdoekservice.', 1);
INSERT INTO hle_membership_types (type_name, description, monthly_rate, benefits, is_available)
VALUES ('Jaarkaart Korting', 'Vooruitbetaald jaarabonnement premium.', 500.00, 'Hetzelfde als Premium, maar voordeliger per jaar.', 0);
COMMIT;
/

-- Initial data for HLE_LOCATIONS
INSERT INTO hle_locations (location_name, capacity, description) VALUES ('Fitness Vloer', 50, 'Hoofdruimte met kracht- en cardioapparatuur');
INSERT INTO hle_locations (location_name, capacity, description) VALUES ('Studio 1', 25, 'Groepslessen zoals Yoga, Zumba');
INSERT INTO hle_locations (location_name, capacity, description) VALUES ('Spinning Room', 20, 'Ruimte voor spinning lessen');
COMMIT;
/

-- Initial data for HLE_CLASSES
INSERT INTO hle_classes (class_name, description, default_duration_minutes, category)
VALUES ('Yoga Basics', 'Introductie tot yoga poses en ademhaling.', 60, 'Flexibility');
INSERT INTO hle_classes (class_name, description, default_duration_minutes, category)
VALUES ('Spinning Power Hour', 'Intensieve spinning les op muziek.', 55, 'Cardio');
INSERT INTO hle_classes (class_name, description, default_duration_minutes, category)
VALUES ('Full Body Workout', 'Combinatie van kracht en cardio oefeningen.', 60, 'Strength/Cardio');
COMMIT;
/

-- Initial data for HLE_EQUIPMENT_TYPES
INSERT INTO hle_equipment_types (type_name, category) VALUES ('Loopband', 'Cardio');
INSERT INTO hle_equipment_types (type_name, category) VALUES ('Crosstrainer', 'Cardio');
INSERT INTO hle_equipment_types (type_name, category) VALUES ('Leg Press Machine', 'Strength');
INSERT INTO hle_equipment_types (type_name, category) VALUES ('Dumbbell Set (5-25kg)', 'Free Weights');
COMMIT;
/

-- Initial data for HLE_EQUIPMENT (Assuming Location and Type IDs)
INSERT INTO hle_equipment (equipment_type_id, identifier, location_id, status, purchase_date)
VALUES (1, 'LB-001', 1, 'Operational', TO_DATE('2023-01-15', 'YYYY-MM-DD'));
INSERT INTO hle_equipment (equipment_type_id, identifier, location_id, status, purchase_date)
VALUES (1, 'LB-002', 1, 'Operational', TO_DATE('2023-01-15', 'YYYY-MM-DD'));
INSERT INTO hle_equipment (equipment_type_id, identifier, location_id, status, purchase_date)
VALUES (3, 'LP-001', 1, 'Needs Maintenance', TO_DATE('2022-11-01', 'YYYY-MM-DD'));
INSERT INTO hle_equipment (equipment_type_id, identifier, location_id, status, purchase_date)
VALUES (4, 'DBSET-01', 1, 'Operational', TO_DATE('2022-10-01', 'YYYY-MM-DD'));
COMMIT;
/

-- End of initial data script