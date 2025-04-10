-- Initial data for HLE_ROLES
INSERT INTO hle_roles (id, role_name) VALUES (1, 'Super Admin');
INSERT INTO hle_roles (id, role_name) VALUES (2, 'Medewerker');
INSERT INTO hle_roles (id, role_name) VALUES (3, 'Lid');
COMMIT;
-- LET OP: Omdat ID een identity column is, hoeven we die normaal niet op te geven.
-- Maar om zeker te zijn van de ID's (1=Admin, 2=Medewerker, 3=Lid),
-- is het soms handiger sequences te gebruiken of dit eenmalig zo te forceren.
-- Alternatief (beter): Laat ID weg en onthoud de volgorde of query de ID's later.
-- Voorbeeld zonder ID specificatie (vereist aanpassing identity column):
-- INSERT INTO hle_roles (role_name) VALUES ('Super Admin'); -- Krijgt ID 1
-- INSERT INTO hle_roles (role_name) VALUES ('Medewerker');  -- Krijgt ID 2
-- INSERT INTO hle_roles (role_name) VALUES ('Lid');         -- Krijgt ID 3
-- KIES EEN VAN DE METHODES! Ik laat nu de expliciete ID's staan voor duidelijkheid.