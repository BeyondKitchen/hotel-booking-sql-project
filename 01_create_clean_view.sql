CREATE OR REPLACE VIEW `majestic-parity-471502-b9.travel_analytics.clean_bookings` AS
SELECT *
FROM `majestic-parity-471502-b9.travel_analytics.hotel_bookings`
WHERE is_canceled = 0
  AND adr > 0;
