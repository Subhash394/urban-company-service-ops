-- =====================================================================
-- Part A, Task 6: Insert and delete
-- =====================================================================

-- (a) Remove the 3 dummy/test rows seeded by the generator.
DELETE FROM bookings WHERE is_test = 1;

-- (b) Insert 3 new real bookings.
--
-- NOTE ON SCHEMA: the brief's literal INSERT template lists 11 values per
-- row (including a 'status' text field and a customer_rating field), but
-- the actual `bookings` table created by generate_data.py only has 9
-- columns: booking_id, partner_id, city, category, booking_date,
-- amount_inr, complaint_flag, sla_breach_flag, is_test. generate_data.py's
-- own comments confirm status/customer_rating are computed but
-- deliberately never written to the bookings table. The two fields have
-- therefore been dropped here to match the real 9-column schema, keeping
-- the trailing complaint_flag/sla_breach_flag/is_test values as given
-- (0, 0, 0 for all three new rows).
INSERT INTO bookings VALUES
    ('B9001','P009','Mumbai','Deep Home Cleaning','2026-03-31',3200,0,0,0),
    ('B9002','P041','Chennai','Plumbing','2026-03-31',640,0,0,0),
    ('B9003','P035','Hyderabad','Electrical Repair','2026-03-31',980,0,0,0);

-- Verification, run immediately after both statements above.
-- Expected result: 600 rows, SUM(amount_inr) = 1047973 (Rs. 10,47,973).
SELECT COUNT(*) AS row_count, SUM(amount_inr) AS total_amount_inr
FROM bookings;

-- =====================================================================
-- Part A, Task 7: LIKE query
-- =====================================================================

-- Every partner (on the clean partners table) whose primary_category
-- starts with "Salon".
-- Expected result: exactly 12 partners.
SELECT partner_id, city, primary_category
FROM partners
WHERE primary_category LIKE 'Salon%';
