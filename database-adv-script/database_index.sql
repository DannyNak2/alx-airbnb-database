-- Performance before indexing
EXPLAIN ANALYZE SELECT * FROM bookings WHERE user_id = 5;

-- Create index to improve performance
CREATE INDEX idx_bookings_user_id ON bookings(user_id);

-- Performance after indexing
EXPLAIN ANALYZE SELECT * FROM bookings WHERE user_id = 5;



-- Performance before indexing
EXPLAIN ANALYZE SELECT * FROM bookings WHERE property_id = 10;

-- Create index to improve performance
CREATE INDEX idx_bookings_property_id ON bookings(property_id);

-- Performance after indexing
EXPLAIN ANALYZE SELECT * FROM bookings WHERE property_id = 10;



-- Performance before indexing
EXPLAIN ANALYZE SELECT * FROM bookings WHERE created_at > NOW() - INTERVAL '30 days';

-- Create index to improve performance
CREATE INDEX idx_bookings_created_at ON bookings(created_at);

-- Performance after indexing
EXPLAIN ANALYZE SELECT * FROM bookings WHERE created_at > NOW() - INTERVAL '30 days';



-- Performance before indexing
EXPLAIN ANALYZE SELECT * FROM users WHERE email = 'sample@example.com';

-- Create index to improve performance
CREATE INDEX idx_users_email ON users(email);

-- Performance after indexing
EXPLAIN ANALYZE SELECT * FROM users WHERE email = 'sample@example.com';
