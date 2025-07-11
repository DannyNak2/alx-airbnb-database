-- Index on user_id in bookings (used in WHERE/JOIN clauses)
CREATE INDEX idx_bookings_user_id ON bookings(user_id);

-- Index on property_id in bookings (for JOIN and ORDER BY)
CREATE INDEX idx_bookings_property_id ON bookings(property_id);

-- Index on created_at in bookings (for date range filtering)
CREATE INDEX idx_bookings_created_at ON bookings(created_at);

-- Index on email in users (for quick user lookup)
CREATE INDEX idx_users_email ON users(email);
