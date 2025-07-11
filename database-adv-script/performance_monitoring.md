# Task 6: Monitor and Refine Database Performance

## 📊 Objective
To monitor SQL query performance using tools like `EXPLAIN ANALYZE` and `SHOW PROFILE`, identify performance bottlenecks, apply optimizations (e.g., indexes), and document observed improvements.

---

## 🔍 Tools Used
- `EXPLAIN ANALYZE` (PostgreSQL)
- `SHOW PROFILE` (MySQL alternative – not used directly in this project)

---

## 🧪 Monitored Queries and Analysis

### 1. Query: Bookings by User
```sql
EXPLAIN ANALYZE
SELECT * FROM bookings WHERE user_id = 42;
Initial Issue: Full table scan due to lack of index on user_id.

Fix:

CREATE INDEX idx_bookings_user_id ON bookings(user_id);
Result:

Before Index: ~85ms

After Index: ~14ms
