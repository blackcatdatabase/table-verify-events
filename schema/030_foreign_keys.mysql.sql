-- Auto-generated from schema-map-mysql.psd1 (map@db2f8b8)
-- engine: mysql
-- table:  verify_events
ALTER TABLE verify_events ADD CONSTRAINT fk_verify_user FOREIGN KEY (user_id) REFERENCES users(id) ON DELETE SET NULL;
