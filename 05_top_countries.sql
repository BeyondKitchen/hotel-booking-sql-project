SELECT
  country,
  COUNT(*) AS total_bookings,
  SUM(adr * (stays_in_weekend_nights + stays_in_week_nights)) AS total_revenue
FROM `majestic-parity-471502-b9.travel_analytics.clean_bookings`
GROUP BY country
HAVING total_bookings > 50
ORDER BY total_revenue DESC
LIMIT 10;
