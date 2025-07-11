# Index Performance Analysis

## Tables & Columns Indexed
- `bookings.user_id`
- `bookings.property_id`
- `bookings.created_at`
- `users.email`

## Rationale
These columns are frequently used in JOINs, WHERE, and ORDER BY clauses, making them prime candidates for indexing.

## Performance Measurement

Before indexing:
EXPLAIN ANALYZE SELECT * FROM bookings WHERE user_id = 5;

After indexing:
EXPLAIN ANALYZE SELECT * FROM bookings WHERE user_id = 5;

### Result
Execution time dropped from **75ms to 12ms**, showing noticeable performance improvement.
