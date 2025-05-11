-- Sample Users (mix of guests, hosts, and admins)
INSERT INTO USER (user_id, first_name, last_name, email, password_hash, phone_number, role)
VALUES
-- Admins
('a1b2c3d4-e5f6-7a8b-9c0d-123456789012', 'Admin', 'User', 'admin@airbnb-clone.com', '$2a$12$1234567890abcdefghijkl', '+15551234567', 'admin'),
-- Hosts
('b2c3d4e5-f6a7-8b9c-0d1e-234567890123', 'Sarah', 'Johnson', 'sarah.j@example.com', '$2a$12$abcdefghijk1234567890l', '+15552345678', 'host'),
('c3d4e5f6-a7b8-9c0d-1e2f-345678901234', 'Michael', 'Brown', 'michael.b@example.com', '$2a$12$lmnopqrstuv1234567890a', '+15553456789', 'host'),
('d4e5f6a7-b8c9-0d1e-2f3a-456789012345', 'Emma', 'Davis', 'emma.d@example.com', '$2a$12$bcdefghijkl1234567890m', '+15554567890', 'host'),
-- Guests
('e5f6a7b8-c9d0-1e2f-3a4b-567890123456', 'James', 'Wilson', 'james.w@example.com', '$2a$12$nopqrstuvwx1234567890b', '+15555678901', 'guest'),
('f6a7b8c9-d0e1-2f3a-4b5c-678901234567', 'Olivia', 'Taylor', 'olivia.t@example.com', '$2a$12$yzabcdefghi1234567890j', '+15556789012', 'guest'),
('a7b8c9d0-e1f2-3a4b-5c6d-789012345678', 'William', 'Anderson', 'william.a@example.com', '$2a$12$jklmnopqrst1234567890u', '+15557890123', 'guest'),
('b8c9d0e1-f2a3-4b5c-6d7e-890123456789', 'Sophia', 'Martinez', 'sophia.m@example.com', '$2a$12$tuvwxyzabcd1234567890e', '+15558901234', 'guest'),
('c9d0e1f2-a3b4-5c6d-7e8f-901234567890', 'Benjamin', 'Garcia', 'benjamin.g@example.com', '$2a$12$fghijklmnop1234567890q', '+15559012345', 'guest');

-- Properties
INSERT INTO PROPERTY (property_id, host_id, name, description, location, price_per_night)
VALUES
('d0e1f2a3-b4c5-6d7e-8f9a-012345678901', 'b2c3d4e5-f6a7-8b9c-0d1e-234567890123', 'Beachfront Villa', 'Luxurious villa with private beach access and stunning ocean views', 'Malibu, CA', 450.00),
('e1f2a3b4-c5d6-7e8f-9a0b-123456789012', 'b2c3d4e5-f6a7-8b9c-0d1e-234567890123', 'Downtown Loft', 'Modern loft in the heart of the city with skyline views', 'New York, NY', 250.00),
('f2a3b4c5-d6e7-8f9a-0b1c-234567890123', 'c3d4e5f6-a7b8-9c0d-1e2f-345678901234', 'Mountain Cabin', 'Cozy cabin with fireplace and hiking trails nearby', 'Aspen, CO', 195.00),
('a3b4c5d6-e7f8-9a0b-1c2d-345678901234', 'c3d4e5f6-a7b8-9c0d-1e2f-345678901234', 'Historic Townhouse', 'Charming townhouse in historic district with original features', 'Charleston, SC', 175.00),
('b4c5d6e7-f8a9-0b1c-2d3e-456789012345', 'd4e5f6a7-b8c9-0d1e-2f3a-456789012345', 'Lakefront Cottage', 'Peaceful cottage with private dock and kayaks included', 'Lake Tahoe, CA', 220.00),
('c5d6e7f8-a9b0-1c2d-3e4f-567890123456', 'd4e5f6a7-b8c9-0d1e-2f3a-456789012345', 'Desert Oasis', 'Modern home with pool and desert views, perfect for stargazing', 'Sedona, AZ', 280.00);

-- Bookings
INSERT INTO BOOKING (booking_id, property_id, user_id, start_date, end_date, total_price, status)
VALUES
-- Confirmed bookings
('d6e7f8a9-b0c1-2d3e-4f5a-678901234567', 'd0e1f2a3-b4c5-6d7e-8f9a-012345678901', 'e5f6a7b8-c9d0-1e2f-3a4b-567890123456', '2025-06-15', '2025-06-20', 2250.00, 'confirmed'),
('e7f8a9b0-c1d2-3e4f-5a6b-789012345678', 'e1f2a3b4-c5d6-7e8f-9a0b-123456789012', 'f6a7b8c9-d0e1-2f3a-4b5c-678901234567', '2025-05-10', '2025-05-15', 1250.00, 'confirmed'),
('f8a9b0c1-d2e3-4f5a-6b7c-890123456789', 'f2a3b4c5-d6e7-8f9a-0b1c-234567890123', 'a7b8c9d0-e1f2-3a4b-5c6d-789012345678', '2025-07-01', '2025-07-07', 1365.00, 'confirmed'),
-- Pending bookings
('a9b0c1d2-e3f4-5a6b-7c8d-901234567890', 'a3b4c5d6-e7f8-9a0b-1c2d-345678901234', 'b8c9d0e1-f2a3-4b5c-6d7e-890123456789', '2025-08-20', '2025-08-25', 875.00, 'pending'),
-- Cancelled bookings
('b0c1d2e3-f4a5-6b7c-8d9e-012345678901', 'b4c5d6e7-f8a9-0b1c-2d3e-456789012345', 'c9d0e1f2-a3b4-5c6d-7e8f-901234567890', '2025-06-05', '2025-06-10', 1100.00, 'cancelled');

-- Payments (only for confirmed bookings)
INSERT INTO PAYMENT (payment_id, booking_id, amount, payment_date, payment_method)
VALUES
('c1d2e3f4-a5b6-7c8d-9e0f-123456789012', 'd6e7f8a9-b0c1-2d3e-4f5a-678901234567', 2250.00, '2025-04-20 14:30:45', 'credit_card'),
('d2e3f4a5-b6c7-8d9e-0f1a-234567890123', 'e7f8a9b0-c1d2-3e4f-5a6b-789012345678', 1250.00, '2025-04-15 09:12:33', 'paypal'),
('e3f4a5b6-c7d8-9e0f-1a2b-345678901234', 'f8a9b0c1-d2e3-4f5a-6b7c-890123456789', 1365.00, '2025-05-01 16:45:22', 'stripe');

-- Reviews (for past stays)
INSERT INTO REVIEW (review_id, property_id, user_id, rating, comment)
VALUES
('f4a5b6c7-d8e9-0f1a-2b3c-456789012345', 'd0e1f2a3-b4c5-6d7e-8f9a-012345678901', 'e5f6a7b8-c9d0-1e2f-3a4b-567890123456', 5, 'Absolutely stunning property with incredible views. The host was attentive and the amenities were top-notch. Will definitely return!'),
('a5b6c7d8-e9f0-1a2b-3c4d-567890123456', 'e1f2a3b4-c5d6-7e8f-9a0b-123456789012', 'f6a7b8c9-d0e1-2f3a-4b5c-678901234567', 4, 'Great location and stylish space. The only downside was some noise from the street at night.'),
('b6c7d8e9-f0a1-2b3c-4d5e-678901234567', 'f2a3b4c5-d6e7-8f9a-0b1c-234567890123', 'a7b8c9d0-e1f2-3a4b-5c6d-789012345678', 5, 'The perfect mountain getaway! Cozy, clean, and exactly as described. We loved the fireplace and proximity to trails.');

-- Messages
INSERT INTO MESSAGE (message_id, sender_id, recipient_id, message_body)
VALUES
('c7d8e9f0-a1b2-3c4d-5e6f-789012345678', 'e5f6a7b8-c9d0-1e2f-3a4b-567890123456', 'b2c3d4e5-f6a7-8b9c-0d1e-234567890123', 'Hi Sarah, I was wondering if early check-in would be possible for our upcoming stay?'),
('d8e9f0a1-b2c3-4d5e-6f7a-890123456789', 'b2c3d4e5-f6a7-8b9c-0d1e-234567890123', 'e5f6a7b8-c9d0-1e2f-3a4b-567890123456', 'Hello James! Yes, early check-in should be fine. You can arrive anytime after 1pm.'),
('e9f0a1b2-c3d4-5e6f-7a8b-901234567890', 'f6a7b8c9-d0e1-2f3a-4b5c-678901234567', 'b2c3d4e5-f6a7-8b9c-0d1e-234567890123', 'Is parking available at the Downtown Loft?'),
('f0a1b2c3-d4e5-6f7a-8b9c-012345678901', 'b2c3d4e5-f6a7-8b9c-0d1e-234567890123', 'f6a7b8c9-d0e1-2f3a-4b5c-678901234567', 'There\'s a public garage next door that costs $25 per day. I can also provide a street parking pass for $10 per day if you prefer.'),
('a1b2c3d4-e5f6-7a8b-9c0d-123456789013', 'a7b8c9d0-e1f2-3a4b-5c6d-789012345678', 'c3d4e5f6-a7b8-9c0d-1e2f-345678901234', 'Do you provide additional blankets? We tend to get cold at night.'),
('b2c3d4e5-f6a7-8b9c-0d1e-234567890124', 'c3d4e5f6-a7b8-9c0d-1e2f-345678901234', 'a7b8c9d0-e1f2-3a4b-5c6d-789012345678', 'Absolutely! You\'ll find extra blankets in the closet, and I can provide more if needed.');