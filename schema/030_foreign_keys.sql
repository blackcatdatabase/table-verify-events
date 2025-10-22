-- Auto-generated from schema-map.psd1 (map@1e83bb6)
-- table: verify_events
ALTER TABLE verify_events ADD CONSTRAINT fk_verify_user FOREIGN KEY (user_id) REFERENCES users(id) ON DELETE SET NULL;
