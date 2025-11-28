-- Auto-generated from schema-map-mysql.psd1 (map@mtime:2025-11-27T15:13:14Z)
-- engine: mysql
-- table:  verify_events

ALTER TABLE verify_events ADD CONSTRAINT fk_verify_user FOREIGN KEY (user_id) REFERENCES users(id) ON DELETE SET NULL;
