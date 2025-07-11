-- Analyze performance of the query retrieving all bookings with user, property, and payment details

EXPLAIN ANALYZE
SELECT b.id AS booking_id, b.created_at, u.name AS user_name, p.name AS property_name, pay.amount
FROM bookings b
JOIN users u ON b.user_id = u.id
JOIN properties p ON b.property_id = p.id
JOIN payments pay ON b.id = pay.booking_id
WHERE b.created_at IS NOT NULL
AND pay.amount IS NOT NULL;
