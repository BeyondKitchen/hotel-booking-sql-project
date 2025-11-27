SELECT
  market_segment,
  COUNT(*) AS total_bookings,
  SUM(adr * (stays_in_weekend_nights + stays_in_week_nights)) AS total_revenue,
  AVG(adr) AS avg_adr
FROM `majestic-parity-471502-b9.travel_analytics.clean_bookings`
GROUP BY market_segment
ORDER BY total_revenue DESC;
