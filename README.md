# Product A/B Testing Analysis for Conversion Optimization

## Overview

This project analyzes a simulated product experiment to determine whether a **new checkout page improves conversion rate and revenue**.
Users were randomly assigned to either a **control group (old checkout page)** or a **treatment group (new checkout page)**.

The analysis uses **Python, SQL, and Power BI** to evaluate experiment performance and provide a data-driven business recommendation.

---

## Business Problem

A company introduced a new checkout page and ran an **A/B experiment** to test whether the new design improves key business metrics.

**Goal:**
Evaluate whether the new checkout page increases:

* Conversion Rate
* Revenue per User
* Overall Revenue

---

## Dataset

A synthetic dataset containing **10,000 user sessions** was generated to simulate real product experiment data.

| Column           | Description                            |
| ---------------- | -------------------------------------- |
| user_id          | Unique identifier for each user        |
| experiment_group | Control or Treatment group             |
| session_date     | Timestamp of user session              |
| clicks           | Number of clicks during session        |
| time_spent       | Time spent on page                     |
| add_to_cart      | Indicator if product was added to cart |
| purchase         | Conversion indicator (0 or 1)          |
| order_value      | Revenue generated from purchase        |

---

## Tools & Technologies

* Python
* Pandas
* NumPy
* Matplotlib
* Seaborn
* SQL
* Power BI

---

## Project Workflow

### 1. Data Generation

A dataset of 10,000 user sessions was generated using Python to simulate real ecommerce behavior and experiment conditions.

### 2. Exploratory Data Analysis

Data quality checks were performed to validate:

* dataset structure
* data types
* missing values

The dataset contained **no missing values**, allowing for direct analysis.

### 3. Conversion Rate Analysis

Conversion rates were calculated for both experiment groups.

| Group     | Conversion Rate |
| --------- | --------------- |
| Control   | 9.93%           |
| Treatment | 12.25%          |

The treatment group achieved a **2.32 percentage point improvement**.

---

### 4. Revenue Analysis

| Metric           | Control | Treatment |
| ---------------- | ------- | --------- |
| Total Revenue    | 39,592  | 48,661    |
| Revenue per User | 7.90    | 9.76      |

The treatment group generated **higher revenue per user**, indicating positive business impact.

---

### 5. Statistical Hypothesis Testing

A **two-sample t-test** was conducted to determine whether the observed improvement was statistically significant.

**Hypotheses**

H0: The new checkout page does not improve conversion rate.
H1: The new checkout page improves conversion rate.

| Metric      | Value   |
| ----------- | ------- |
| T-statistic | 3.69    |
| P-value     | 0.00022 |

Since **p-value < 0.05**, the result is **statistically significant**.

---

## Data Visualizations

Visualizations were created to communicate experiment performance:

* Conversion Rate Comparison
* Revenue Comparison
* Purchase Distribution
* Experiment Performance Over Time

---

## SQL Analysis

SQL queries were used to calculate key experiment metrics directly from the database:

* total users per group
* total purchases
* conversion rate
* average order value
* revenue per user
* daily experiment performance

---

## Dashboard

An interactive dashboard was built in Power BI to present experiment insights visually.

Dashboard features:

* KPI summary (Users, Revenue, Conversion Rate)
* Conversion comparison between groups
* Revenue comparison
* Experiment trend over time
* Conversion funnel

---

## Key Insights

* Conversion rate increased from **9.93% to 12.25%**.
* Revenue per user increased from **7.90 to 9.76**.
* Statistical testing confirmed the improvement is **significant (p = 0.00022)**.

---

## Business Recommendation

The new checkout page significantly improves **conversion rate and revenue per user**.

**Recommendation:**
Roll out the new checkout experience to all users.

---

## Dashboard Preview

<p align="center">
  <img src="Dashboard%20preview1.png" width="700">
</p>


---


## Skills Demonstrated

* A/B testing analysis
* Product analytics
* SQL KPI analysis
* Python data analysis
* Statistical hypothesis testing
* Data visualization
* Dashboard development
