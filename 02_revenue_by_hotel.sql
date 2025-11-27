SELECT
  hotel,
  SUM(adr * (stays_in_weekend_nights + stays_in_week_nights)) AS total_revenue
FROM `majestic-parity-471502-b9.travel_analytics.clean_bookings`
GROUP BY hotel
ORDER BY total_revenue DESC;
