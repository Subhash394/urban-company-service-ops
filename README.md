# Urban Company Service-Ops Diagnostic & AI-Augmented Reporting Toolkit

A single, connected analytics pipeline for Urban Company's home-services marketplace: a seeded SQLite
database, reconciled SQL/spreadsheet numbers, a public Tableau dashboard, and an AI-assisted reporting
and complaint-triage prompt pack — all traceable to the rupee across every stage.

## Live Dashboard

**Tableau Public:** https://public.tableau.com/app/profile/kavya.k7486/viz/Urban_Company_Service_Ops/Dashboard1

## Repository Contents

**Part A — Data Setup, Python Sanity-Check & SQL Diagnostic**
- `generate_data.py` — deterministic dataset generator (seed 2604)
- `urban_service.db` — SQLite database (categories, partners_import, partners, bookings)
- `cities.csv`, `categories.csv`, `partners_import.csv`, `bookings.csv` — raw generated exports
- `verify_output.txt` — row-count verification
- `sanity_check.py` — pure-Python vs. SQL cross-check
- `01_dedup_and_joins.sql` — partner deduplication and join diagnostics
- `02_insert_delete.sql` — booking delete/insert and LIKE query
- `city_category_summary.csv` — reconciled city × category summary (fixed input to Parts B & C)
- `bookings_reconciled.csv` — *(extra, not in original required list)* booking-level export with
  `booking_date`, taken after Part A's delete/insert reconciliation, used only to power the Month
  Focus parameter in the Tableau dashboard (`city_category_summary.csv` has no date column)

**Part B — Spreadsheet Cross-Check & KPI Workbook**
- `Part_B_KPI_Summary.xlsx` — City-Category Data, Category Reference, Pivot Table, and KPI Summary
  sheets, reconciled to Part A's SQL totals to the rupee

**Part C — Tableau Dashboard & Stakeholder Storytelling**
- Live dashboard link above
- `DASHBOARD_STORY.md` — two Headline → Evidence → Implication narratives (City Ops Lead and
  Category Lead)

**Part D — AI-Augmented Reporting**
- `prompt_pack.md` — 3 labeled prompts plus a critic-and-refine pass
- `escalation_agent_spec.md` — rule-based complaint-triage specification with an 8-row hand-traced
  decision log

## Key Reconciled Numbers

- Total Revenue: ₹10,47,973
- Total Bookings: 600
- Network-wide SLA Breach Rate: 13.17%

These figures are identical across the SQL database, the spreadsheet, and the Tableau dashboard.
