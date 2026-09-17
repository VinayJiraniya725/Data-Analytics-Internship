
# Project 2: Exploratory Data Analysis (EDA) 📊

## Goal
Analyze the cleaned dataset from Project 1 to understand patterns, trends, and distributions in the orders data.

## Dataset
Uses `Cleaned_Dataset_DA1.xlsx` (output of Project 1) — 1200 orders, 17 columns.

## Steps Performed
1. **Dataset Overview** — reviewed shape, columns, data types, and general info.
2. **Missing & Duplicate Check** — confirmed no missing values or duplicates remained after cleaning.
3. **Basic Statistics** — calculated mean, median, and count for all numerical columns.
4. **Numerical Analysis** — examined descriptive statistics for `Quantity`, `UnitPrice`, `ItemsInCart`, and `TotalPrice`.
5. **Distribution Analysis** — plotted histograms (with KDE) for numerical columns to see their distributions.
6. **Outlier Detection** — used boxplots to spot potential outliers in numerical columns.
7. **Categorical Analysis** — analyzed and charted:
   - Product-wise order counts and total sales
   - Payment method distribution
   - Order status distribution
   - Coupon code usage
   - Referral source distribution
8. **Time-based Analysis**
   - Year-wise total sales
   - Month-wise sales trend (line chart)
   - Day-of-week order distribution
9. **Correlation Analysis** — computed and visualized a correlation heatmap between numerical columns.
10. **Relationship Analysis** — scatter plots for Quantity vs TotalPrice and UnitPrice vs TotalPrice.
11. **Top Performers** — identified top 5 products by total sales.
12. **Sales Summary** — calculated highest, lowest, average, and median order value.

## Key Observations
- The dataset contains 1,200 orders across 17 columns, spanning 2023–2025.
- `TotalPrice` is positively related to both `UnitPrice` and `Quantity`.
- Product-wise sales show clear differences in performance across products.
- Payment methods and order statuses (delivered, shipped, pending, returned, cancelled) show varied distributions.
- Monthly trends reveal how sales fluctuate across the year.
- Boxplots helped flag potential outliers in numerical fields.

## Tools & Skills
Python (Pandas, NumPy, Matplotlib, Seaborn) — descriptive statistics, data visualization, outlier detection, correlation analysis.
