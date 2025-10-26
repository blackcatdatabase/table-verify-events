-- Auto-generated from schema-views-mysql.psd1 (map@38d5403)
-- engine: mysql
-- table:  verify_events
-- Contract view for [verify_events]
CREATE OR REPLACE SQL SECURITY INVOKER VIEW vw_verify_events AS
SELECT
  id,
  user_id,
  type,
  ip_hash,
  HEX(ip_hash) AS ip_hash_hex,
  ip_hash_key_version,
  user_agent,
  occurred_at,
  meta
FROM verify_events;
