# Definition – verify_events

Verification events (email/phone, other checks).

## Columns
| Column | Type | Null | Default | Description | Notes |
|-------:|:-----|:----:|:--------|:------------|:------|
| id | BIGINT UNSIGNED | — | — | Surrogate primary key. |  |
| user_id | BIGINT UNSIGNED | YES | — | Related user (FK users.id), optional. |  |
| type | ENUM('verify_success','verify_failure') | NO | — | Verification type. | enum: verify_success, verify_failure |
| ip_hash | BINARY(32) | YES | — | Hashed IP. | PII: hashed |
| ip_hash_key_version | VARCHAR(64) | YES | — | Key version for ip_hash. |  |
| user_agent | VARCHAR(1024) | YES | — | Client user agent. |  |
| occurred_at | DATETIME(6) | NO | CURRENT_TIMESTAMP(6) | When event occurred (UTC). |  |
| meta | JSON | YES | — | JSON metadata. |  |
