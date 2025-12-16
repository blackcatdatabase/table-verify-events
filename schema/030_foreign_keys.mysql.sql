-- Auto-generated from schema-map-mysql.yaml (map@sha1:B9D3BE28A74392B9B389FDAFB493BD80FA1F6FA4)
-- engine: mysql
-- table:  verify_events

ALTER TABLE verify_events ADD CONSTRAINT fk_verify_user FOREIGN KEY (user_id) REFERENCES users(id) ON DELETE SET NULL;
