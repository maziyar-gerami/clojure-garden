CREATE TABLE IF NOT EXISTS repository (
    id                      UUID,
    owner                   VARCHAR NOT NULL,
    name                    VARCHAR NOT NULL,
    home_page               TEXT,
    description             TEXT,
    short_description_html  TEXT,
    default_branch          TEXT NOT NULL,
    created_at              TIMESTAMP NOT NULL,
    updated_at              TIMESTAMP,
    fork_count              BIGINT DEFAULT 0,
    stargazer_count         BIGINT DEFAULT 0,
    contributor_count       BIGINT DEFAULT 0,
    total_downloads         BIGINT DEFAULT 0,
    is_mirror               BOOLEAN NOT NULL,
    mirror_url              TEXT,
    is_archived             BOOLEAN NOT NULL,
    is_fork                 BOOLEAN NOT NULL,
    has_wiki_enabled        BOOLEAN NOT NULL,
    is_locked               BOOLEAN NOT NULL,
    lock_reason             TEXT,
    contributing            TEXT,
    readme                  TEXT,
    code_of_conduct         TEXT,
    issue_template          TEXT,
    pull_request_template   TEXT,
    documentation_health    DECIMAL(5,2),
    health_state_updated_at TIMESTAMP,
    license_id              UUID,
    PRIMARY KEY             (id),
    FOREIGN KEY             (license_id) REFERENCES license(id),
    UNIQUE                  (owner, name)
);
