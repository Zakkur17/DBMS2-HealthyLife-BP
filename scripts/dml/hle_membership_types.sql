-- Initial data for HLE_MEMBERSHIP_TYPES
INSERT INTO hle_membership_types (id, type_name, description, monthly_rate, benefits, is_available)
VALUES (1, 'Basic', 'Toegang tijdens daluren, standaard faciliteiten.', 30.00, 'Daluren toegang, gebruik cardio & kracht apparatuur.', 1);

INSERT INTO hle_membership_types (id, type_name, description, monthly_rate, benefits, is_available)
VALUES (2, 'Premium', 'Onbeperkt toegang, inclusief groepslessen.', 50.00, 'Onbeperkt toegang, alle lessen, handdoekservice.', 1);

INSERT INTO hle_membership_types (id, type_name, description, monthly_rate, benefits, is_available)
VALUES (3, 'Jaarkaart Korting', 'Vooruitbetaald jaarabonnement premium.', 500.00, 'Hetzelfde als Premium, maar voordeliger per jaar.', 0); -- Vb: Niet direct beschikbaar

COMMIT;