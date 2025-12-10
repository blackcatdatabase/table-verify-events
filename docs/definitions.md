# verify_events

Verification events (email/phone, other checks).

## Columns
| Column | Type | Null | Default | Description |
| --- | --- | --- | --- | --- |
| user_agent | VARCHAR(1024) | YES |  | Client user agent. |
| ip_hash_key_version | VARCHAR(64) | YES |  | Key version for ip_hash. |
| type | mysql: ENUM('verify_success','verify_failure') / postgres: TEXT | NO |  | Verification type. (enum: verify_success, verify_failure) |
| occurred_at | mysql: DATETIME(6) / postgres: TIMESTAMPTZ(6) | NO | CURRENT_TIMESTAMP(6) | When event occurred (UTC). |
| ip_hash | mysql: BINARY(32) / postgres: BYTEA | YES |  | Hashed IP. |
| id | BIGINT | NO |  | Surrogate primary key. |
| meta | mysql: JSON / postgres: JSONB | YES |  | JSON metadata. |
| user_id | BIGINT | YES |  | Related user (FK users.id), optional. |

## Engine Details

### mysql

Indexes:
| Name | Columns | SQL |
| --- | --- | --- |
| idx_ver_ip | ip_hash | INDEX idx_ver_ip (ip_hash) |
| idx_ver_time | occurred_at | INDEX idx_ver_time (occurred_at) |
| idx_ver_type_time | type,occurred_at | INDEX idx_ver_type_time (`type`, occurred_at) |
| idx_ver_user | user_id | INDEX idx_ver_user (user_id) |

Foreign keys:
| Name | Columns | References | Actions |
| --- | --- | --- | --- |
| fk_verify_user | user_id | users(id) | ON DELETE SET |

### postgres

Indexes:
| Name | Columns | SQL |
| --- | --- | --- |
| idx_ver_ip | ip_hash | CREATE INDEX IF NOT EXISTS idx_ver_ip ON verify_events (ip_hash) |
| idx_ver_time | occurred_at | CREATE INDEX IF NOT EXISTS idx_ver_time ON verify_events (occurred_at) |
| idx_ver_type_time | type,occurred_at | CREATE INDEX IF NOT EXISTS idx_ver_type_time ON verify_events (type, occurred_at) |
| idx_ver_user | user_id | CREATE INDEX IF NOT EXISTS idx_ver_user ON verify_events (user_id) |

Foreign keys:
| Name | Columns | References | Actions |
| --- | --- | --- | --- |
| fk_verify_user | user_id | users(id) | ON DELETE SET |

## Engine differences

## Views
| View | Engine | Flags | File |
| --- | --- | --- | --- |
| vw_verify_events | mysql | algorithm=MERGE, security=INVOKER | [../schema/040_views.mysql.sql](../schema/040_views.mysql.sql) |
| vw_verify_events | postgres |  | [../schema/040_views.postgres.sql](../schema/040_views.postgres.sql) |
