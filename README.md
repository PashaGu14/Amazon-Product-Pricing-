# Amazon Product Pricing and Customer Engagement Analysis

## Overview

This analysis examines Amazon marketplace product data to assess how pricing strategy, discounting practices, and customer engagement influence overall product performance.

Using Python and SQL, the analysis evaluates patterns in pricing, category-level performance, review activity, and customer ratings to identify meaningful relationships across the marketplace.

The goal of the project is to translate marketplace data into clear, decision-relevant insights that can inform pricing strategy, product positioning, and category management.

**Full Analysis Report**
`Reports/Amazon product pricing.html`

# Key Business Questions

This analysis explores several questions relevant to product analytics and marketplace strategy:

* Does discount depth influence customer ratings?
* Which product categories demonstrate the strongest performance?
* How does review engagement relate to rating outcomes?
* Are higher-priced products rated differently from lower-priced products?
* Can product ratings be predicted using pricing variables?

---

# Key Insights

### Discounting does not strongly correlate with higher ratings

Products with moderate or minimal discounts often achieve ratings comparable to those with deeper price reductions.

### Customer engagement appears concentrated among a subset of products

Listings with higher review counts tend to maintain stable ratings and stronger marketplace visibility.

### Price tier differences show minimal impact on average ratings

Customer satisfaction appears more closely tied to **perceived value rather than absolute price level**.

---

# Predictive Modeling

To extend the analysis, a **predictive model** was developed to estimate rating performance using pricing-related variables.

**Model inputs included:**

* Actual price
* Discounted price
* Discount percentage
* Rating count

A regression model was trained to estimate rating outcomes and evaluate the predictive strength of pricing features.

Results suggest that pricing variables alone provide **limited explanatory power**, indicating that additional factors such as product quality, brand strength, and customer sentiment likely play a larger role in rating outcomes.

---

# Technology Stack

| Tool                 | Purpose                          |
| -------------------- | -------------------------------- |
| Python               | Data analysis and modeling       |
| Pandas               | Data cleaning and transformation |
| NumPy                | Numerical computation            |
| Matplotlib / Seaborn | Data visualization               |
| SQL (SQLite)         | Data querying                    |
| Scikit-learn         | Predictive modeling              |
| Jupyter Notebook     | Analysis workflow                |

---
## How to Run

### 1. Clone the repository

git clone https://github.com/PashaGu14/Amazon-product-pricing-analysis-.git
cd Amazon-product-pricing-analysis

### 2. Set up the Python environment

- python -m venv venv
- source venv/bin/activate   
- On Windows use `venv\Scripts\activate`
- pip install -r requirements.txt

### 3. Prepare the data

* Place amazon.csv in the data/ folder.

* If using SQL, load the CSV into SQLite or your database of choice.

### 4. Run the notebook

* Open notebooks/amazon_product_pricing.ipynb in Jupyter Notebook or VS Code.

* Execute cells sequentially to reproduce the analysis and visualizations.

### 5. View the HTML report

Open `Reports/Amazon product pricing.html` in any browser for the full formatted analysis.
# Repository Structure

```
Amazon-product-pricing-analysis
│
├── Data
│   └── amazon.csv
│
├── Notebooks
│   └── amazon_product_pricing.ipynb
│
├── Reports
│   └── amazon_analysis_report.html
│
├── SQL
│   └── amazon_queries.sql
│
├── Visuals
│   └── charts
│
└── README.md
```

---

# Skills Demonstrated

* SQL querying and data exploration
* Data cleaning and preprocessing
* Feature engineering
* Exploratory data analysis
* Predictive modeling
* Data visualization
* Translating analysis into business insights

# Data Source
Dataset:
Amazon Sales Dataset
[https://www.kaggle.com/datasets/karkavelrajaj/amazon-sales-dataset](https://www.kaggle.com/datasets/karkavelrajaj/amazon-sales-dataset)

