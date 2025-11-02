-- Auto-generated from schema-views-mysql.psd1 (map@db2f8b8)
-- engine: mysql
-- table:  verify_events
-- Contract view for [verify_events]
CREATE OR REPLACE ALGORITHM=MERGE SQL SECURITY INVOKER VIEW vw_verify_events AS
SELECT
  id,
  user_id,
  `type`,
  ip_hash,
  CAST(LPAD(HEX(ip_hash), 64, '0')  AS CHAR(64)) AS ip_hash_hex,
  ip_hash_key_version,
  user_agent,
  occurred_at,
  meta
FROM verify_events;
