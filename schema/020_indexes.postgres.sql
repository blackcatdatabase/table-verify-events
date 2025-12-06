-- Auto-generated from schema-map-postgres.yaml (map@sha1:F0EE237771FBA8DD7C4E886FF276F91A862C3718)
-- engine: postgres
-- table:  verify_events

CREATE INDEX IF NOT EXISTS idx_ver_user ON verify_events (user_id);

CREATE INDEX IF NOT EXISTS idx_ver_time ON verify_events (occurred_at);

CREATE INDEX IF NOT EXISTS idx_ver_type_time ON verify_events (type, occurred_at);

CREATE INDEX IF NOT EXISTS idx_ver_ip ON verify_events (ip_hash);
