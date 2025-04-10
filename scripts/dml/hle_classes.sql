-- Initial data for HLE_CLASSES
INSERT INTO hle_classes (id, class_name, description, default_duration_minutes, category)
VALUES (1, 'Yoga Basics', 'Introductie tot yoga poses en ademhaling.', 60, 'Flexibility');
INSERT INTO hle_classes (id, class_name, description, default_duration_minutes, category)
VALUES (2, 'Spinning Power Hour', 'Intensieve spinning les op muziek.', 55, 'Cardio');
INSERT INTO hle_classes (id, class_name, description, default_duration_minutes, category)
VALUES (3, 'Full Body Workout', 'Combinatie van kracht en cardio oefeningen.', 60, 'Strength/Cardio');
COMMIT;