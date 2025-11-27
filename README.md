# Hotel Booking Analysis with BigQuery (SQL)

## Overview

This project analyzes a hotel booking dataset using BigQuery and SQL to explore:
- Revenue performance
- Cancellation behavior
- Seasonality trends
- Customer segments and booking patterns

The goal of this project is to demonstrate practical, business-focused SQL analysis using a real-world hospitality dataset.

---

## Tech Stack

- Google BigQuery (SQL)
- Google Cloud Platform
- Dataset: Hotel Booking Demand (Kaggle)

---

## Dataset

Table:
- `majestic-parity-471502-b9.travel_analytics.hotel_bookings`

Clean View:
- `majestic-parity-471502-b9.travel_analytics.clean_bookings`

Key Columns:
- hotel (City / Resort)
- is_canceled
- lead_time
- arrival_date_year, arrival_date_month, arrival_date_week_number
- stays_in_weekend_nights, stays_in_week_nights
- adults, children, babies
- country
- market_segment
- distribution_channel
- is_repeated_guest
- customer_type
- adr (average daily room rate)
- total_of_special_requests
---

## Key Business Questions

1. Which hotel type generates more revenue?
2. What is the overall cancellation rate and how does it differ by hotel type?
3. What are the monthly and weekly peak booking seasons?
4. Which countries bring the most bookings and revenue?
5. How do repeated guests differ from new guests?
6. How does lead time affect cancellation behavior?
7. Which market segments are the most profitable?
8. What is the average length of stay by hotel type and customer type?
9. Which customer groups show higher ADR?
10. Do special requests correlate with higher room prices?

---

## Data Cleaning Approach

A clean analytical view was created to exclude:
- Cancelled bookings
- Invalid or zero ADR values

```sql
CREATE OR REPLACE VIEW `majestic-parity-471502-b9.travel_analytics.clean_bookings` AS
SELECT *
FROM `majestic-parity-471502-b9.travel_analytics.hotel_bookings`
WHERE is_canceled = 0
  AND adr > 0;

```
---

## SQL Analysis Files

| File Name | Description |
|-----------|-------------|
| 01_create_clean_view.sql | Clean data view creation |
| 02_revenue_by_hotel.sql | Revenue comparison by hotel type |
| 03_cancellation_rates.sql | Overall and hotel-type cancellation rates |
| 04_monthly_trends.sql | Monthly revenue and booking trends |
| 05_top_countries.sql | Top countries by revenue |
| 06_repeat_vs_new_guests.sql | Repeated vs new guest behavior |
| 07_lead_time_cancellations.sql | Lead time vs cancellations |
| 08_market_segment_revenue.sql | Revenue by market segment |
| 09_length_of_stay.sql | Average length of stay |
| 10_special_requests_adr.sql | Special requests vs ADR |

---

## Key Insights (Summary)

- City and Resort hotels show different revenue and booking behavior patterns.
- Cancellation rates increase significantly for long lead-time bookings.
- Summer months represent the strongest seasonal demand.
- A small number of countries account for a large share of total revenue.
- Repeated guests tend to show more stable booking behavior.
- Certain market segments consistently outperform others in ADR and total revenue.

---

## How to Reproduce This Analysis

1. Upload `hotel_bookings.csv` to BigQuery as  
   `travel_analytics.hotel_bookings`
2. Run `01_create_clean_view.sql`
3. Execute each SQL file in order to reproduce the analysis

---

## Project Purpose

This project is part of my SQL portfolio to demonstrate:

- Practical SQL for business analysis  
- Data cleaning using SQL  
- Aggregations, CASE logic, CTEs, and KPI-based analysis  
- BigQuery workflow for large datasets  
