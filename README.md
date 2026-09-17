# Data-Analytics-Internship

# Project 1: Data Cleaning & Preparation 🧹

## Goal
Clean a raw e-commerce/orders dataset by handling missing values, duplicates, and incorrect data formats.

## Dataset
Raw dataset: `Dataset for Data Analytics.xlsx` — 1200 orders, 17 columns (OrderID, Date, CustomerID, Product, Quantity, UnitPrice, ShippingAddress, PaymentMethod, OrderStatus, TrackingNumber, ItemsInCart, CouponCode, ReferralSource, TotalPrice).

## Steps Performed
1. **Initial Inspection** — checked shape, columns, data types, and summary statistics (`.shape`, `.info()`, `.dtypes`, `.describe()`).
2. **Missing Values** — identified null values with `.isnull().sum()`; found nulls in `CouponCode` and filled them with `'No Coupon'`.
3. **Duplicates** — checked and removed duplicate rows using `.duplicated()` and `.drop_duplicates()`.
4. **Date Formatting** — converted the `Date` column to proper datetime format using `pd.to_datetime()`.
5. **Feature Extraction** — derived new columns from `Date`: `Year`, `Month` (month name), and `Day` (day name).
6. **Data Validation** — checked for invalid/negative or zero values in `Quantity`, `UnitPrice`, and `TotalPrice`.
7. **Text Cleaning** — stripped extra whitespace from text columns (`Product`, `PaymentMethod`, `OrderStatus`, `CouponCode`, `ReferralSource`) and reviewed unique values for consistency.
8. **Final Check** — re-verified no missing values or duplicates remained.
9. **Export** — saved the cleaned data as `Cleaned_Dataset_DA1.xlsx`.

## Tools & Skills
Python, Pandas — data cleaning, handling missing data, deduplication, date/time processing, data validation.

## Output
`Cleaned_Dataset_DA1.xlsx` — 1200 clean rows, ready for analysis in Project 2 and Project 3.
