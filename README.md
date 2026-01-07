# Product Activation Funnel Analysis

## Problem
User activation is a critical growth metric for product-led platforms.  
This project analyzes a **multi-step activation funnel** to identify drop-offs and actions that strongly predict successful activation.

---

## Funnel Definition
1. Sign-up
2. First session
3. Key product action
4. Activation (value moment)

---

## Analysis Performed
- Funnel step conversion rates
- Drop-off analysis at each stage
- Activation rate calculation
- Regression analysis to identify activation drivers

---

## Tools Used
- SQL (PostgreSQL)
- Python (Pandas, NumPy)
- Jupyter Notebook

---

## Key Insights
- Users completing the **key product action within first session** were **2× more likely** to activate
- Largest drop-off occurred between **first session → key action**
- Incomplete event logging affected accuracy of step 3 measurement

---

## Product Recommendations
- Reduce friction before the key action
- Add in-product guidance during onboarding
- Improve telemetry for key events
