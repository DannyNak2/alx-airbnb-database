# Partitioning Performance Report

## Partitioning Strategy
We partitioned the `bookings` table by `start_date` using PostgreSQL's native `RANGE` partitioning. Partitions were created by year (2023, 2024, 2025).

## Query Example Tested
```sql
EXPLAIN ANALYZE
SELECT * FROM bookings
WHERE start_date BETWEEN '2024-01-01' AND '2024-12-31';
