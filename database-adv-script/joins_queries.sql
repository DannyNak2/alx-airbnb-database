-- INNER JOIN: Bookings and the Users who made them
SELECT b.*, u.name
FROM bookings b
INNER JOIN users u ON b.user_id = u.id;

-- LEFT JOIN: Properties and their Reviews (include properties with no reviews)
SELECT p.*, r.review_text
FROM properties p
LEFT JOIN reviews r ON p.id = r.property_id;

-- FULL OUTER JOIN: All users and all bookings
SELECT u.id AS user_id, u.name, b.id AS booking_id, b.property_id
FROM users u
FULL OUTER JOIN bookings b ON u.id = b.user_id;
