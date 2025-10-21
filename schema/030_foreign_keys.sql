-- Auto-generated from schema-map.psd1 on 2025-10-21T02:32:05
-- table: verify_events
ALTER TABLE verify_events ADD CONSTRAINT fk_verify_user FOREIGN KEY (user_id) REFERENCES users(id) ON DELETE SET NULL;
