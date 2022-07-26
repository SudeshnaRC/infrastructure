CREATE DATABASE market_rearch_typeform;
\c market_rearch_typeform;
CREATE TABLE IF NOT EXISTS form_questions (
    form_id TEXT NOT NULL,
    question_id TEXT NOT NULL,
    question_title TEXT NOT NULL,
    question_type TEXT NOT NULL,
    PRIMARY KEY (form_id, question_id)
);