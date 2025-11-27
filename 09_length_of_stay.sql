SELECT
  hotel,
  customer_type,
  AVG(stays_in_weekend_nights + stays_in_week_nights) AS avg_nights
FROM `majestic-parity-471502-b9.travel_analytics.clean_bookings`
GROUP BY hotel, customer_type
ORDER BY avg_nights DESC;
