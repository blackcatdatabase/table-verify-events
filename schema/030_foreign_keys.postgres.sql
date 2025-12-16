-- Auto-generated from schema-map-postgres.yaml (map@sha1:FAEA49A5D5F8FAAD9F850D0F430ED451C5C1D707)
-- engine: postgres
-- table:  verify_events

ALTER TABLE verify_events ADD CONSTRAINT fk_verify_user FOREIGN KEY (user_id) REFERENCES users(id) ON DELETE SET NULL;
