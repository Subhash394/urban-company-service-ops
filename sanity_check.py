sample_bookings = [
    {"booking_id": "B0005", "category": "AC Repair & Service", "amount_inr": 1316},
    {"booking_id": "B0019", "category": "AC Repair & Service", "amount_inr": 538},
    {"booking_id": "B0027", "category": "AC Repair & Service", "amount_inr": 1016},
    {"booking_id": "B0055", "category": "AC Repair & Service", "amount_inr": 1505},
    {"booking_id": "B0001", "category": "Plumbing", "amount_inr": 1369},
    {"booking_id": "B0003", "category": "Plumbing", "amount_inr": 772},
    {"booking_id": "B0004", "category": "Plumbing", "amount_inr": 1133},
    {"booking_id": "B0006", "category": "Plumbing", "amount_inr": 805},
    {"booking_id": "B0018", "category": "Salon for Men", "amount_inr": 1414},
    {"booking_id": "B0024", "category": "Salon for Men", "amount_inr": 1176},
    {"booking_id": "B0029", "category": "Salon for Men", "amount_inr": 858},
    {"booking_id": "B0032", "category": "Salon for Men", "amount_inr": 638},
]

# Manual accumulation: no sum()/len() shortcuts. Build running totals and
# running counts per category using only a dict, a loop, and conditionals.
category_counts = {}
category_totals = {}

for booking in sample_bookings:
    cat = booking["category"]
    amt = booking["amount_inr"]

    if cat not in category_counts:
        category_counts[cat] = 0
        category_totals[cat] = 0

    category_counts[cat] = category_counts[cat] + 1
    category_totals[cat] = category_totals[cat] + amt

for cat in category_counts:
    print(f"{cat}: count = {category_counts[cat]}, total = {category_totals[cat]}")

# Cross-check SQL query (run against urban_service.db):
#
# SELECT category, COUNT(*), SUM(amount_inr)
# FROM bookings
# WHERE booking_id IN ('B0005','B0019','B0027','B0055',
#                       'B0001','B0003','B0004','B0006',
#                       'B0018','B0024','B0029','B0032')
# GROUP BY category;
#
# Result confirmed to match the pure-Python computation above exactly for
# all three categories: AC Repair & Service -> count 4, total 4375;
# Plumbing -> count 4, total 4079; Salon for Men -> count 4, total 4086.
