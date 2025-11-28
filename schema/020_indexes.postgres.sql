-- Auto-generated from schema-map-postgres.psd1 (map@mtime:2025-11-21T00:25:46Z)
-- engine: postgres
-- table:  verify_events

CREATE INDEX IF NOT EXISTS idx_ver_user ON verify_events (user_id);

CREATE INDEX IF NOT EXISTS idx_ver_time ON verify_events (occurred_at);

CREATE INDEX IF NOT EXISTS idx_ver_type_time ON verify_events (type, occurred_at);

CREATE INDEX IF NOT EXISTS idx_ver_ip ON verify_events (ip_hash);
