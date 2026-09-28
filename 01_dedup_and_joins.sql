-- =====================================================================
-- Part A, Task 4: Detect and remove duplicate partner rows
-- =====================================================================

-- (a) List every duplicated partner_id in the raw import.
-- Expected result: P003, P017, P031 -- each with a count of 2.
SELECT partner_id, COUNT(*) AS n
FROM partners_import
GROUP BY partner_id
HAVING COUNT(*) > 1;

-- (b) Build a clean partners table. Grouping on every column collapses
-- each exact-duplicate pair into a single row without dropping any
-- genuinely distinct partner.
-- Expected result: 49 rows (52 raw rows - 3 duplicate rows).
CREATE TABLE partners AS
SELECT partner_id, city, primary_category, rating, active, days_since_onboarding
FROM partners_import
GROUP BY partner_id, city, primary_category, rating, active, days_since_onboarding;

-- =====================================================================
-- Part A, Task 5: Join diagnostics
-- =====================================================================

-- (a) INNER JOIN bookings to the clean partners table on partner_id,
-- confirming every booking resolves to a real partner.
-- Expected result: 600 (every booking matches a real partner).
SELECT COUNT(*) AS bookings_with_real_partner
FROM bookings b
INNER JOIN partners p ON b.partner_id = p.partner_id;

-- (b) LEFT JOIN categories to bookings on category, to find any category
-- that has never received a single booking.
-- Expected result: 'Pest Control' (the held-out category).
SELECT c.category
FROM categories c
LEFT JOIN bookings b ON c.category = b.category
WHERE b.booking_id IS NULL;

-- (c) LEFT JOIN clean partners to bookings on partner_id, to find any
-- partner who has never received a single booking.
-- Expected result: 'P049' (the deliberately idle, newly onboarded partner).
SELECT p.partner_id
FROM partners p
LEFT JOIN bookings b ON p.partner_id = b.partner_id
WHERE b.booking_id IS NULL;

-- (d) On the same category LEFT JOIN from (b), compute both COUNT(*) and
-- COUNT(b.booking_id) per category in one GROUP BY query.
--
-- Why the two counts differ for Pest Control specifically:
-- COUNT(*) counts the joined row itself -- including the single all-NULL
-- unmatched row produced by the LEFT JOIN for Pest Control -- so it reads 1.
-- COUNT(b.booking_id) only counts rows where a real booking matched (it
-- skips NULLs), so for Pest Control it reads 0. Every other category has
-- at least one real booking, so its two counts are equal to each other.
SELECT c.category, COUNT(*) AS count_star, COUNT(b.booking_id) AS count_booking_id
FROM categories c
LEFT JOIN bookings b ON c.category = b.category
GROUP BY c.category;
