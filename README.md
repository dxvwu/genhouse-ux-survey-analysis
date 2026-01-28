# Genhouse UX Survey Analysis
SQL + Google Sheets dashboard analysis of early-career UX designer survey data for Genhouse, focused on career challenges, mentorship demand, and pricing insights.

## Project Overview
This project analyzes UX survey data collected by the Genhouse UX team to understand
junior designers’ career challenges, confidence levels, and interest in mentored real-world projects.

The goal of this analysis was to transform raw survey responses into actionable insights
that can inform Genhouse’s product, mentorship, and community strategy.

---

## Business Context
Genhouse aims to support early-career UX designers by offering structured projects,
mentorship, and career guidance. The UX team conducted a survey to better understand:

- Barriers to job applications  
- Portfolio confidence gaps  
- Demand for real-world UX experience  
- Willingness to pay for mentored project platforms  

This analysis was conducted to support data-informed decision making.

---

## Tools Used
- Google Forms (survey collection)
- Google Sheets (data cleaning & visualization)
- SQLite (data storage)
- SQL (data analysis)

---

## Dataset
- Source: Genhouse UX Team Survey
- Records: UX designers at student, junior, and career-switcher levels
- Format: CSV exported from Google Sheets

---

## Dataset Privacy Note

The full survey dataset is not shared publicly to protect participant privacy.  
This repository includes a small anonymized sample dataset in `/data/` for demonstration purposes.

---

## Key Questions Explored
- What are the biggest challenges preventing designers from applying to jobs?
- How confident are junior designers in their portfolios?

---

## Key Questions Explored
- What are the biggest challenges preventing designers from applying to jobs?
- How confident are junior designers in their portfolios?
- Is there demand for NGO or real-world UX projects?
- What pricing range feels reasonable for mentored platforms?
- How valuable is mentorship for early UX careers?

---

## Key Insights
- Imposter syndrome and lack of real-world experience are the top blockers to job applications.
- Designers with no paid UX experience show the highest interest in NGO-based projects.
- Mentorship is rated as extremely valuable by early-career designers.
- Affordable pricing tiers ($11–$25) show the strongest demand.

---

## Business Implications
- There is a strong opportunity for structured, mentored UX projects targeted at junior designers.
- Genhouse can differentiate by offering low-pressure, real-world experience with guidance.
- Pricing strategy should prioritize accessibility for early-career designers.

---

## SQL Analysis
All SQL queries used for analysis can be found here:
- `/sql/ux_survey_analysis.sql`

---

## Visualizations
Key insights were visualized using Google Sheets charts.
Screenshots of charts can be found in:
- `/dashboards/`

---

## Next Steps
- Segment users by experience level for personalized offerings
- Validate pricing through A/B testing
- Track confidence improvement over time with repeat surveys
