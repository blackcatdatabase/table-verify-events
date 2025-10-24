-- Auto-generated from schema-map-postgres.psd1 (map@mtime:2025-10-24T09:46:38Z)
-- engine: postgres
-- table:  verify_events
CREATE INDEX idx_ver_user ON verify_events (user_id);

CREATE INDEX idx_ver_time ON verify_events (occurred_at);

CREATE INDEX idx_ver_type_time ON verify_events (type, occurred_at);

CREATE INDEX idx_ver_ip ON verify_events (ip_hash);
