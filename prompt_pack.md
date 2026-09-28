# Prompt Pack — Urban Company Service-Ops Reporting


## Prompt 1 — Weekly Ops Summary Email

**Prompt:**
> Act as a service-operations analyst at Urban Company. Draft a weekly ops update email to leadership using only the figures below — do not invent any numbers.
>
> - Total Revenue: ₹10,47,973
> - Total Bookings: 600
> - Network-wide SLA Breach Rate: 13.17%
> - Highest-revenue city: Pune (₹2,28,727)
> - Lowest-revenue city: Delhi NCR (₹1,40,771)
> - Highest SLA breach rate: Bengaluru (15.89%)
> - Lowest SLA breach rate: Delhi NCR (7.23%)
> - Highest-revenue category: Deep Home Cleaning (₹5,08,964 from 176 bookings)
> - Lowest-revenue category: Salon for Men (₹73,563 from 78 bookings)
>
> Structure: a subject line naming the reporting period, one opening sentence summarizing overall performance, 3–4 bullet points with key metrics by city, 2 bullet points on positive highlights, and 2 bullet points on issues/challenges with a solution-oriented remark for each. 200–300 words total, professional tone, no informal language.

*(See the Critic-and-Refine Pass below for the first draft/output, critique, refined prompt, and refined output for this prompt.)*

---

## Prompt 2 — Stakeholder Narrative Draft

**Prompt:**
> Act as a data analyst turning dashboard findings into a stakeholder-ready narrative. Using only the numbers below, write the City Ops Lead narrative in a strict Headline → Evidence → Implication structure (one short paragraph per section).
>
> - Bengaluru SLA breach rate: 15.89% (17 breaches / 107 bookings) — highest of all 6 cities
> - Delhi NCR SLA breach rate: 7.23% (6 breaches / 83 bookings) — lowest of all 6 cities
> - Network-wide average SLA Breach Rate: 13.17%
> - Other cities for context: Hyderabad 14.29%, Mumbai 14.13%, Chennai 13.27%, Pune 13.08%
>
> Headline should state the finding in one sentence. Evidence should cite the specific numbers above. Implication should explain what this means operationally for the City Ops Lead. Do not invent numbers beyond what's given.

---

## Prompt 3 — Complaint Triage Prompt

**Prompt:**
> Act as a customer-complaint triage assistant for Urban Company. You will be given a single raw customer complaint description. Extract only the following fields into a short structured summary, using exactly this format:
>
> - Booking amount (INR): [value or "not stated"]
> - SLA breach involved: [Yes / No / not stated]
> - Partner rating: [value or "not stated"]
> - One-line complaint summary: [neutral restatement of the issue, under 20 words]
>
> Do not make a refund/escalation decision yourself — only extract these fields. If a field isn't mentioned in the complaint, write "not stated" rather than guessing. Here is the complaint: [insert raw complaint text here]

---

## Critic-and-Refine Pass (on Prompt 1)

### (a) First-draft prompt
> Write a weekly ops summary email for Urban Company using our booking data.

### (a) First output (from the AI assistant)
> Subject: Weekly Update
>
> Hi team, here's how things went this week. Revenue was decent and bookings were okay overall. A few cities did better than others, and we had some SLA issues here and there. Deep cleaning services did well. Salon services for men were a bit slow. Let us know if you have questions.

### (b) Critique against the four quality criteria
- **Specificity:** Fails — no actual numbers are used anywhere (no revenue figure, no booking count, no SLA rate, no city names). "Decent," "okay," "a few cities," "here and there" are all vague placeholders.
- **Audience Fit:** Fails — too casual for a leadership-facing report; reads like an internal chat message, not a structured ops update.
- **Completeness:** Fails — missing the required structure entirely (no subject line naming the period, no bullet points, no explicit highlights/issues split, no word count in range).
- **Actionability:** Fails — the "issues" mentioned (SLA issues, slow salon-for-men bookings) have no proposed solution or next step attached, so a reader can't act on them.

**Concrete gap:** The biggest issue is Specificity — without real numbers, this email is not usable as an actual leadership report; it would need to be rewritten from scratch rather than lightly edited.

### (c) Refined prompt
*(This is Prompt 1 above, in its final form — the explicit list of real numbers plus the exact structural requirements is what fixes all four gaps at once.)*

### (d) Refined output (from the AI assistant)
> **Subject: Weekly Ops Summary — Week of [Insert Date Range]**
>
> This week, Urban Company recorded ₹10,47,973 in total revenue across 600 bookings, with a network-wide SLA breach rate of 13.17%.
>
> **Key metrics by city:**
> - Pune led all cities in revenue at ₹2,28,727.
> - Delhi NCR recorded the lowest city revenue at ₹1,40,771, though also the lowest SLA breach rate at 7.23%.
> - Bengaluru posted the highest SLA breach rate at 15.89%, well above the network average.
> - Overall city performance remains uneven, with a roughly ₹88,000 gap between our top and bottom revenue cities.
>
> **Highlights:**
> - Deep Home Cleaning remains our strongest category, generating ₹5,08,964 from 176 bookings — nearly half of total company revenue.
> - Delhi NCR's SLA performance (7.23% breach rate) is a strong internal benchmark other cities could learn from.
>
> **Issues and next steps:**
> - Bengaluru's SLA breach rate (15.89%) is significantly above target; we recommend a focused review of partner scheduling and dispatch capacity in that city over the next two weeks.
> - Salon for Men remains our lowest-revenue category at ₹73,563 despite 78 bookings; we recommend testing bundled upsell offers rather than assuming low demand, since booking volume is comparable to higher-revenue categories.
>
> Please reach out with any questions ahead of next week's review.

---

*All figures above are traceable to `city_category_summary.csv` and the SQL/spreadsheet reconciliation performed in Parts A and B of this project.*
