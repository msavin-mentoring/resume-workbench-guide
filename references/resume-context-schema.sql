PRAGMA application_id = 1381192788;
PRAGMA user_version = 2;
PRAGMA foreign_keys = ON;

CREATE TABLE manifest (
    key TEXT PRIMARY KEY,
    value TEXT NOT NULL
) WITHOUT ROWID;

CREATE TABLE resumes (
    id INTEGER PRIMARY KEY,
    owner_pseudonym TEXT NOT NULL,
    source_checksum_sha256 TEXT NOT NULL,
    parse_status TEXT NOT NULL CHECK (parse_status IN ('pending', 'processing', 'ready', 'needs_ocr', 'failed')),
    format TEXT CHECK (format IS NULL OR format IN ('hh', 'generic')),
    artifact_schema_version TEXT,
    parser_revision TEXT
);

CREATE TABLE employments (
    id INTEGER PRIMARY KEY,
    resume_id INTEGER NOT NULL REFERENCES resumes(id),
    source_order INTEGER NOT NULL,
    company TEXT,
    role TEXT,
    period_start TEXT,
    period_end TEXT,
    period_raw TEXT,
    is_current INTEGER NOT NULL CHECK (is_current IN (0, 1)),
    source_line_start INTEGER NOT NULL,
    source_line_end INTEGER NOT NULL,
    UNIQUE (resume_id, source_order)
);

CREATE INDEX idx_employments_resume ON employments (resume_id, source_order);
CREATE INDEX idx_employments_company ON employments (company);
CREATE INDEX idx_employments_period ON employments (period_start, period_end);

CREATE TABLE resume_items (
    id INTEGER PRIMARY KEY,
    resume_id INTEGER NOT NULL REFERENCES resumes(id),
    employment_id INTEGER NOT NULL REFERENCES employments(id),
    item_type TEXT NOT NULL CHECK (item_type IN ('project', 'achievement')),
    name TEXT,
    text TEXT NOT NULL,
    source_line_start INTEGER NOT NULL,
    source_line_end INTEGER NOT NULL
);

CREATE INDEX idx_resume_items_type ON resume_items (item_type);
CREATE INDEX idx_resume_items_resume ON resume_items (resume_id, source_line_start);
CREATE INDEX idx_resume_items_employment ON resume_items (employment_id, item_type, source_line_start);

CREATE TABLE technologies (
    id INTEGER PRIMARY KEY,
    normalized_name TEXT NOT NULL UNIQUE,
    display_name TEXT NOT NULL
);

CREATE TABLE resume_technologies (
    resume_id INTEGER NOT NULL REFERENCES resumes(id),
    technology_id INTEGER NOT NULL REFERENCES technologies(id),
    PRIMARY KEY (resume_id, technology_id)
) WITHOUT ROWID;

CREATE TABLE employment_technologies (
    employment_id INTEGER NOT NULL REFERENCES employments(id),
    technology_id INTEGER NOT NULL REFERENCES technologies(id),
    PRIMARY KEY (employment_id, technology_id)
) WITHOUT ROWID;

CREATE VIRTUAL TABLE resume_items_fts USING fts5(
    name,
    text,
    company,
    role,
    technologies,
    tokenize='unicode61 remove_diacritics 2'
);

CREATE VIEW searchable_resume_items AS
SELECT
    item.id,
    item.resume_id AS source_resume_id,
    item.employment_id,
    resume.owner_pseudonym,
    item.item_type,
    item.name,
    item.text,
    employment.company,
    employment.role,
    employment.period_start,
    employment.period_end,
    item.source_line_start,
    item.source_line_end
FROM resume_items item
JOIN resumes resume ON resume.id = item.resume_id
LEFT JOIN employments employment ON employment.id = item.employment_id;
