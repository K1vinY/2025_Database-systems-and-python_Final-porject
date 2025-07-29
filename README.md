# 2025_Database-systems-and-python_Final-porject
# 📊 Social Media Influencer
**A relational database schema for analyzing cross-platform influencer performance**

This project models and organizes influencer performance data from Instagram, TikTok, and YouTube. The system uses an Entity-Relationship (ER) model to define key entities, their relationships, and performance metrics, with the goal of helping brands, marketers, and analysts gain data-driven insights into influencer impact.

---

## 📌 Overview

In the modern digital era, social media influencers significantly shape consumer behavior and brand strategy. This project:

- Structures influencer data from **Instagram**, **TikTok**, and **YouTube**
- Supports performance comparison across platforms
- Enables audience demographic analysis and campaign optimization
- Uses a relational database schema to facilitate future SQL-based analysis

📁 **Dataset:** Sourced from Kaggle – *Social Media Influencers in 2022*

---

## 🛠️ Features

- ER modeling of influencers, platforms, and performance metrics
- Normalized schema supporting many-to-many relationships
- Cleaned and unified influencer datasets (CSV)
- SQL-ready schema creation script (`schema.sql`)
- Optional: query examples for future analysis

---

## 📂 Project Structure

```text
.
├── data/
│   ├── raw/
│   │   ├── instagram_raw.csv
│   │   ├── tiktok_raw.csv
│   │   └── youtube_raw.csv
│   └── cleaned/
│       ├── instagram_clean.csv
│       ├── tiktok_clean.csv
│       └── youtube_clean.csv
├── schema.sql                # SQL schema creation script
├── sample_queries.sql        # Optional: sample SQL analysis queries
├── data_dictionary.md        # Description of fields and relationships
├── er_diagram.png            # ER diagram image (many-to-many structure)
├── report/
│   └── KevinYu_Project_Phase3.pdf  # Original project report (optional)
└── README.md
```

---

## 🧱 Database Schema

The schema is based on the following relational model:

### 📁 Table: Influencer
| Column             | Type         | Description                              |
|--------------------|--------------|------------------------------------------|
| influencer_id      | INTEGER      | Unique ID (Primary Key)                  |
| name               | VARCHAR      | Influencer name                          |
| category           | VARCHAR      | Content category (e.g., fitness, music)  |
| audience_country   | VARCHAR      | Primary audience country                 |

### 📁 Table: Platform
| Column             | Type         | Description              |
|--------------------|--------------|--------------------------|
| platform_id        | INTEGER      | Platform ID (Primary Key)|
| name               | VARCHAR      | Platform name            |

### 📁 Table: Metrics
| Column             | Type         | Description                                |
|--------------------|--------------|--------------------------------------------|
| metric_id          | INTEGER      | Unique record ID (Primary Key)             |
| m_influencer_id    | INTEGER      | Foreign key → Influencer.influencer_id     |
| m_platform_id      | INTEGER      | Foreign key → Platform.platform_id         |
| followers_count    | BIGINT       | Total followers                            |
| average_views      | FLOAT        | Avg views per post                         |
| average_likes      | FLOAT        | Avg likes per post                         |
| average_comments   | FLOAT        | Avg comments per post                      |
| engagement_avg     | FLOAT        | Engagement rate (e.g., likes/views ratio)  |
| shares_avg         | FLOAT        | Avg shares per post                        |

---

## 🔗 Entity Relationships

- An **influencer** can be active on **multiple platforms**
- A **platform** can host **multiple influencers**
- The **Metrics** table serves as a bridge (many-to-many), holding performance records

---

## 🚀 How to Use

1. Clone the repository
2. Load the schema into your MySQL or PostgreSQL database using `schema.sql`
3. Import the cleaned datasets from `/data/cleaned/`
4. (Optional) Run the example queries in `sample_queries.sql`

---

## 📚 References

- Kaggle Dataset: [Social Media Influencers 2022](https://www.kaggle.com/datasets/ramjasmaurya/top-1000-social-media-channels?select=social+media+influencers+-+Tiktok+sep+2022.csv)
- Project ER model and schema by Kevin Yu, 2025
- See full data definitions in [`data_dictionary.md`](./data_dictionary.md)
