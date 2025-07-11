-- Initial unoptimized query
SELECT b.*, u.name, p.name AS property_name, pay.amount
FROM bookings b
JOIN users u ON b.user_id = u.id
JOIN properties p ON b.property_id = p.id
JOIN payments pay ON b.id = pay.booking_id;
