-- Overall cancellation rate
SELECT
  COUNTIF(is_canceled = 1) / COUNT(*) AS cancellation_rate
FROM `majestic-parity-471502-b9.travel_analytics.hotel_bookings`;

-- Cancellation rate by hotel type
SELECT
  hotel,
  COUNTIF(is_canceled = 1) / COUNT(*) AS cancellation_rate
FROM `majestic-parity-471502-b9.travel_analytics.hotel_bookings`
GROUP BY hotel
ORDER BY cancellation_rate DESC;
