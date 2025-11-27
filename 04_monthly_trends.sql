SELECT
  arrival_date_year AS year,
  arrival_date_month AS month,
  COUNT(*) AS total_bookings,
  SUM(adr * (stays_in_weekend_nights + stays_in_week_nights)) AS total_revenue
FROM `majestic-parity-471502-b9.travel_analytics.clean_bookings`
GROUP BY year, month
ORDER BY
  year,
  CASE month
    WHEN 'January' THEN 1
    WHEN 'February' THEN 2
    WHEN 'March' THEN 3
    WHEN 'April' THEN 4
    WHEN 'May' THEN 5
    WHEN 'June' THEN 6
    WHEN 'July' THEN 7
    WHEN 'August' THEN 8
    WHEN 'September' THEN 9
    WHEN 'October' THEN 10
    WHEN 'November' THEN 11
    WHEN 'December' THEN 12
  END;
