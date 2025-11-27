SELECT
  total_of_special_requests,
  COUNT(*) AS total_bookings,
  AVG(adr) AS avg_adr
FROM `majestic-parity-471502-b9.travel_analytics.clean_bookings`
GROUP BY total_of_special_requests
ORDER BY total_of_special_requests;
