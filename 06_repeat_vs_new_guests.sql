WITH guest_stats AS (
  SELECT
    is_repeated_guest,
    COUNT(*) AS total_bookings,
    AVG(adr) AS avg_adr,
    AVG(stays_in_weekend_nights + stays_in_week_nights) AS avg_nights,
    COUNTIF(is_canceled = 1) / COUNT(*) AS cancellation_rate
  FROM `majestic-parity-471502-b9.travel_analytics.hotel_bookings`
  GROUP BY is_repeated_guest
)
SELECT
  CASE WHEN is_repeated_guest = 1 THEN 'Repeated Guest'
       ELSE 'New Guest' END AS guest_type,
  total_bookings,
  avg_adr,
  avg_nights,
  cancellation_rate
FROM guest_stats;
