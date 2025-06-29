-- Insert Users
INSERT INTO User (user_id, first_name, last_name, email, password_hash, phone_number, role)
VALUES
  ('a1b2c3d4-e1f2-1234-5678-abcdef000001', 'Alice', 'Johnson', 'alice@example.com', 'hash_pw_1', '1234567890', 'host'),
  ('a1b2c3d4-e1f2-1234-5678-abcdef000002', 'Bob', 'Smith', 'bob@example.com', 'hash_pw_2', '1234567891', 'guest'),
  ('a1b2c3d4-e1f2-1234-5678-abcdef000003', 'Clara', 'Lee', 'clara@example.com', 'hash_pw_3', NULL, 'host'),
  ('a1b2c3d4-e1f2-1234-5678-abcdef000004', 'David', 'Brown', 'david@example.com', 'hash_pw_4', '1234567893', 'guest');

-- Insert Properties
INSERT INTO Property (property_id, host_id, name, description, location, pricepernight)
VALUES
  ('p1p2p3p4-e1f2-9876-5432-abcdef111111', 'a1b2c3d4-e1f2-1234-5678-abcdef000001', 'Sunny Apartment', 'Cozy place near the beach', 'Los Angeles, CA', 120.00),
  ('p1p2p3p4-e1f2-9876-5432-abcdef222222', 'a1b2c3d4-e1f2-1234-5678-abcdef000003', 'Mountain Retreat', 'Cabin in the woods with fireplace', 'Aspen, CO', 250.00);

-- Insert Bookings
INSERT INTO Booking (booking_id, property_id, user_id, start_date, end_date, total_price, status)
VALUES
  ('b1111111-e1f2-4444-5555-abcdefaaaaaa', 'p1p2p3p4-e1f2-9876-5432-abcdef111111', 'a1b2c3d4-e1f2-1234-5678-abcdef000002', '2025-07-10', '2025-07-15', 600.00, 'confirmed'),
  ('b2222222-e1f2-4444-5555-abcdefbbbbbb', 'p1p2p3p4-e1f2-9876-5432-abcdef222222', 'a1b2c3d4-e1f2-1234-5678-abcdef000004', '2025-08-01', '2025-08-05', 1000.00, 'pending');

-- Insert Payments
INSERT INTO Payment (payment_id, booking_id, amount, payment_method)
VALUES
  ('pay11111-e1f2-aaaa-bbbb-cccccccc0001', 'b1111111-e1f2-4444-5555-abcdefaaaaaa', 600.00, 'credit_card');

-- Insert Reviews
INSERT INTO Review (review_id, property_id, user_id, rating, comment)
VALUES
  ('rev11111-e1f2-dddd-eeee-aaaa11112222', 'p1p2p3p4-e1f2-9876-5432-abcdef111111', 'a1b2c3d4-e1f2-1234-5678-abcdef000002', 5, 'Great stay! Very clean and close to the beach.'),
  ('rev22222-e1f2-dddd-eeee-bbbb22223333', 'p1p2p3p4-e1f2-9876-5432-abcdef222222', 'a1b2c3d4-e1f2-1234-5678-abcdef000004', 4, 'Peaceful and beautiful location.');

-- Insert Messages
INSERT INTO Message (message_id, sender_id, recipient_id, message_body)
VALUES
  ('msg11111-e1f2-cccc-dddd-eeeeeeee4444', 'a1b2c3d4-e1f2-1234-5678-abcdef000002', 'a1b2c3d4-e1f2-1234-5678-abcdef000001', 'Hi Alice, is your apartment available in July?'),
  ('msg22222-e1f2-cccc-dddd-eeeeeeee5555', 'a1b2c3d4-e1f2-1234-5678-abcdef000001', 'a1b2c3d4-e1f2-1234-5678-abcdef000002', 'Yes! It’s available from the 10th to the 15th.');
