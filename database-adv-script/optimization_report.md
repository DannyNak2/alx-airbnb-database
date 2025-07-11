# Query Optimization Report

## Initial Query
The initial query joined 4 tables without filtering, causing full table scans and high memory use.

## Optimization Techniques Applied
1. Added indexes to:
   - `bookings.user_id`
   - `bookings.property_id`
   - `payments.booking_id`
2. Used only needed columns:
```sql
SELECT b.id, u.name, p.name AS property_name, pay.amount
FROM bookings b
JOIN users u ON b.user_id = u.id
JOIN properties p ON b.property_id = p.id
JOIN payments pay ON b.id = pay.booking_id;
