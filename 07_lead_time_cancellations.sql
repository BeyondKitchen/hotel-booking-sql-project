SELECT
  CASE
    WHEN lead_time < 30 THEN '0-29 days'
    WHEN lead_time < 90 THEN '30-89 days'
    WHEN lead_time < 180 THEN '90-179 days'
    ELSE '180+ days'
  END AS lead_time_group,
  COUNT(*) AS total_bookings,
  COUNTIF(is_canceled = 1) / COUNT(*) AS cancellation_rate
FROM `majestic-parity-471502-b9.travel_analytics.hotel_bookings`
GROUP BY lead_time_group
ORDER BY lead_time_group;
