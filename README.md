# Urban Company Service Operations – AI-Augmented Reporting Toolkit

## Project Overview

This project is an AI-augmented analytics and reporting toolkit for analyzing Urban Company-style service operations data.

The project combines operational data analysis, SQL-based processing, KPI reporting, Excel outputs, stakeholder narratives, and AI-assisted decision support.

## Objectives

- Analyze service bookings and operational performance.
- Measure revenue, bookings, and SLA-breach performance.
- Compare performance across cities and service categories.
- Create KPI summaries for operational decision-making.
- Support evidence-based stakeholder reporting.
- Define structured AI prompts for reporting and refund-escalation decisions.

## Key Metrics

The verified dataset contains:

- **600 completed bookings**
- **Overall network revenue:** ₹10,47,973
- **Overall SLA breach rate:** 13.2%
- **SLA breaches:** 79

### City-level highlights

- **Pune:** ₹2,28,727 — highest revenue market.
- **Bengaluru:** ₹1,79,835 — lowest SLA breach rate at 9.5%.
- **Chennai:** ₹1,75,572.
- **Hyderabad:** ₹1,71,638.

## Dashboard

View the interactive Tableau dashboard:

[**Urban Company Service Operations Dashboard**](https://public.tableau.com/views/Urban_Company_Service_Ops_dashboard/Dashboard1?:language=en-US&publish=yes&:sid=&:redirect=auth&:display_count=n&:origin=viz_share_link)

## Project Workflow

1. Load and validate the operational dataset.
2. Analyze bookings, revenue, cities, categories, and SLA performance.
3. Generate city and category-level summaries.
4. Create KPI outputs in Excel.
5. Develop stakeholder-focused operational narratives.
6. Use AI prompts for executive reporting and operational decision support.
7. Apply guardrails and human review requirements to AI-generated decisions.

## Repository Files

### `Urbancompany.ipynb`

Main project notebook containing the analysis, processing, calculations, and generated outputs.

### `city_category_summary.xlsx`

Excel summary containing city-category level operational metrics.

### `urban_company_metrics.xlsx`

Excel workbook containing the project's KPI and operational metrics.

### `README.md`

Project documentation, objectives, workflow, technology, and dashboard link.

## Technology Used

- Python
- Pandas
- SQL
- Excel
- Google Colab
- Tableau
- AI-assisted analytics and reporting

## AI Safety and Governance

The decision-support framework includes:

- Verification of numerical claims against the source dataset.
- Separation of facts, interpretations, and hypotheses.
- Prompt-injection prevention.
- Protection of original booking records.
- Strict rule evaluation order.
- Data-sanity checks.
- Logging of agent decisions.
- Human escalation for exceptions and invalid data.

## Conclusion

The toolkit provides a structured approach to converting operational service data into verified KPIs, stakeholder narratives, and governed AI-assisted decision support.

All numerical claims and operational conclusions should be validated against the source data before being used for business decisions.
