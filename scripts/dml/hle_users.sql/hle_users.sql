-- Initial data for HLE_USERS
-- !!! GEBRUIK NOOIT PLATTE TEKST WACHTWOORDEN IN PRODUCTIE - HASH ZE !!!
-- Super Admin (Role ID 1 assumed)
INSERT INTO hle_users (id, role_id, username, password_hash, full_name, email, phone_number, is_active, registration_approved, approved_by_user_id, created_at)
VALUES (1, 1, 'superadmin', 'plain_password123', 'Admin', 'admin@healthylife.com', '0611111111', 1, 1, 1, SYSTIMESTAMP);

-- Medewerker 1 (Role ID 2 assumed)
INSERT INTO hle_users (id, role_id, username, password_hash, full_name, email, phone_number, is_active, registration_approved, approved_by_user_id, created_at)
VALUES (2, 2, 'medewerker1', 'plain_password123', 'Jan Jansen', 'jan@healthylife.com', '0622222222', 1, 1, 1, SYSTIMESTAMP);

-- Medewerker 2 (Role ID 2 assumed)
INSERT INTO hle_users (id, role_id, username, password_hash, full_name, email, phone_number, is_active, registration_approved, approved_by_user_id, created_at)
VALUES (3, 2, 'medewerker2', 'plain_password123', 'Fatima Yilmaz', 'fatima@healthylife.com', '0633333333', 1, 1, 1, SYSTIMESTAMP);

-- Lid 1 (Role ID 3 assumed) - Approved
INSERT INTO hle_users (id, role_id, username, password_hash, full_name, email, phone_number, is_active, registration_approved, approved_by_user_id, created_at)
VALUES (4, 3, 'lid1', 'plain_password123', 'Piet Pietersen', 'piet@email.com', '0644444444', 1, 1, 2, SYSTIMESTAMP); -- Approved by Medewerker 1 (ID 2)

-- Lid 2 (Role ID 3 assumed) - Pending approval
INSERT INTO hle_users (id, role_id, username, password_hash, full_name, email, phone_number, is_active, registration_approved, approved_by_user_id, created_at)
VALUES (5, 3, 'lid2', 'plain_password123', 'Chen Li', 'chen@email.com', '0655555555', 1, 0, NULL, SYSTIMESTAMP);

COMMIT;
-- Ook hier: ID's expliciet gezet voor duidelijkheid.