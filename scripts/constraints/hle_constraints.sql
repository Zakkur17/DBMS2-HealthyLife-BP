-- Foreign Keys voor hle_users
ALTER TABLE hle_users ADD CONSTRAINT hle_users_role_fk FOREIGN KEY (role_id) REFERENCES hle_roles (id);
ALTER TABLE hle_users ADD CONSTRAINT hle_users_approved_by_fk FOREIGN KEY (approved_by_user_id) REFERENCES hle_users (id);

-- Foreign Keys voor hle_memberships
ALTER TABLE hle_memberships ADD CONSTRAINT hle_mbrships_user_fk FOREIGN KEY (user_id) REFERENCES hle_users (id);
ALTER TABLE hle_memberships ADD CONSTRAINT hle_mbrships_type_fk FOREIGN KEY (membership_type_id) REFERENCES hle_membership_types (id);

-- Foreign Keys voor hle_scheduled_classes
ALTER TABLE hle_scheduled_classes ADD CONSTRAINT hle_sched_class_fk FOREIGN KEY (class_id) REFERENCES hle_classes (id);
ALTER TABLE hle_scheduled_classes ADD CONSTRAINT hle_sched_instr_fk FOREIGN KEY (instructor_user_id) REFERENCES hle_users (id);
ALTER TABLE hle_scheduled_classes ADD CONSTRAINT hle_sched_loc_fk FOREIGN KEY (location_id) REFERENCES hle_locations (id);

-- Foreign Keys voor hle_class_signups
ALTER TABLE hle_class_signups ADD CONSTRAINT hle_signups_user_fk FOREIGN KEY (user_id) REFERENCES hle_users (id);
ALTER TABLE hle_class_signups ADD CONSTRAINT hle_signups_sched_class_fk FOREIGN KEY (scheduled_class_id) REFERENCES hle_scheduled_classes (id);

-- Foreign Keys voor hle_progress_measurements
ALTER TABLE hle_progress_measurements ADD CONSTRAINT hle_progress_user_fk FOREIGN KEY (user_id) REFERENCES hle_users (id);
ALTER TABLE hle_progress_measurements ADD CONSTRAINT hle_progress_rec_by_fk FOREIGN KEY (recorded_by_user_id) REFERENCES hle_users (id);

-- Foreign Keys voor hle_fitness_goals
ALTER TABLE hle_fitness_goals ADD CONSTRAINT hle_goals_user_fk FOREIGN KEY (user_id) REFERENCES hle_users (id);

-- Foreign Keys voor hle_equipment
ALTER TABLE hle_equipment ADD CONSTRAINT hle_equip_type_fk FOREIGN KEY (equipment_type_id) REFERENCES hle_equipment_types (id);
ALTER TABLE hle_equipment ADD CONSTRAINT hle_equip_loc_fk FOREIGN KEY (location_id) REFERENCES hle_locations (id);

-- Foreign Keys voor hle_maintenance_logs
ALTER TABLE hle_maintenance_logs ADD CONSTRAINT hle_maint_equip_fk FOREIGN KEY (equipment_id) REFERENCES hle_equipment (id);
ALTER TABLE hle_maintenance_logs ADD CONSTRAINT hle_maint_perf_by_fk FOREIGN KEY (performed_by_user_id) REFERENCES hle_users (id);