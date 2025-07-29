-- Create table: Influencer
CREATE TABLE Influencer (
    influencer_id SERIAL PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    category VARCHAR(100),
    audience_country VARCHAR(100)
);

-- Create table: Platform
CREATE TABLE Platform (
    platform_id SERIAL PRIMARY KEY,
    name VARCHAR(100) NOT NULL
);

-- Create table: Metrics
CREATE TABLE Metrics (
    metric_id SERIAL PRIMARY KEY,
    m_influencer_id INTEGER NOT NULL,
    m_platform_id INTEGER NOT NULL,
    followers_count BIGINT,
    average_views FLOAT,
    average_likes FLOAT,
    average_comments FLOAT,
    engagement_avg FLOAT,
    shares_avg FLOAT,

    -- Foreign key constraints
    FOREIGN KEY (m_influencer_id) REFERENCES Influencer(influencer_id),
    FOREIGN KEY (m_platform_id) REFERENCES Platform(platform_id)
);
