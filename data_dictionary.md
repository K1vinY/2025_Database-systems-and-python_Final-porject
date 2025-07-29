# 📘 Data Dictionary

This document provides detailed descriptions of the tables and fields used in the **Social Media Influencer Performance Database**, including data types, relationships, and notes.

---

## 📁 Table: Influencer

| Column Name      | Data Type     | Description                                          | Notes           |
|------------------|---------------|------------------------------------------------------|-----------------|
| influencer_id     | INTEGER       | Unique ID for each influencer                        | Primary Key     |
| name              | VARCHAR(255)  | Influencer's name                                    |                 |
| category          | VARCHAR(100)  | Content category (e.g., fashion, gaming, fitness)    |                 |
| audience_country  | VARCHAR(100)  | Country of the influencer's primary audience         | ISO country name |

---

## 📁 Table: Platform

| Column Name      | Data Type     | Description                              | Notes         |
|------------------|---------------|------------------------------------------|---------------|
| platform_id       | INTEGER       | Unique ID for each platform              | Primary Key   |
| name              | VARCHAR(100)  | Platform name (e.g., Instagram, TikTok)  |               |

---

## 📁 Table: Metrics

| Column Name        | Data Type     | Description                                              | Notes                     |
|--------------------|---------------|----------------------------------------------------------|---------------------------|
| metric_id           | INTEGER       | Unique ID for each metrics record                        | Primary Key               |
| m_influencer_id     | INTEGER       | Foreign key linking to `Influencer`                      | Foreign Key               |
| m_platform_id       | INTEGER       | Foreign key linking to `Platform`                        | Foreign Key               |
| followers_count     | BIGINT        | Total followers on the platform                          | May exceed 1 million      |
| average_views       | FLOAT         | Average number of views per post                         |                          |
| average_likes       | FLOAT         | Average number of likes per post                         |                          |
| average_comments    | FLOAT         | Average number of comments per post                      |                          |
| engagement_avg      | FLOAT         | Engagement rate (e.g., likes/comments/views)             | Ratio or %                |
| shares_avg          | FLOAT         | Average number of shares per post                        | Relevant to TikTok/YouTube |

---

## 🔗 Relationships

- `Influencer` ↔ `Platform` is many-to-many via `Metrics`
- `m_influencer_id` in `Metrics` references `Influencer.influencer_id`
- `m_platform_id` in `Metrics` references `Platform.platform_id`

---

## 📝 Notes

- Data was sourced from **Kaggle: Social Media Influencers in 2022**
- All fields are case-insensitive text except IDs and metrics
- Engagement is platform-specific and can be calculated differently depending on data
