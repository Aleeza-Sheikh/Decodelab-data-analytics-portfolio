## 📊 Project 2: E-Commerce Outlier Detection & Revenue Drivers

Statistical EDA on 1,200 e-commerce orders to detect outliers using IQR and Z-Score methods, uncover revenue drivers, and translate findings into a customer segmentation recommendation.

### 🎯 Business Problem
Not all "unusual" orders are data errors — some represent real, high-value customer behavior worth acting on. This project investigates a 1,200-order e-commerce dataset to distinguish genuine outliers from noise, understand what actually drives revenue (price vs. quantity), and turn the findings into a concrete business recommendation.

### 🛠️ Tools & Skills
Python · Pandas · NumPy · SciPy · Seaborn · Matplotlib · Outlier Detection (IQR & Z-Score) · Correlation Analysis · Data Storytelling

### 🗂️ Dataset
1,200 orders across 14 columns (order details, customer, product, payment, fulfillment status, and revenue), spanning Jan 2023 – Jun 2025. The only missing data was in CouponCode (309 nulls, expected for non-coupon orders) — all other fields were complete.

### 🔍 Methodology
- **Data Loading & Quality Check** — Inspected shape, types, and missing values across 1,200 orders.
- **Outlier Detection — IQR vs. Z-Score** — Compared two statistical methods on TotalPrice and UnitPrice to determine which technique was actually reliable on this dataset.
- **Visual Analysis** — Used boxplots and histograms to confirm distribution shape and visualize the IQR fence.
- **Correlation & Revenue Analysis** — Built a correlation heatmap and ranked products by total revenue contribution.

### 💡 Key Insights

**1. A genuine high-value segment exists — and only the IQR method caught it.**
The IQR method flagged 8 outlier orders above Rs 3,330.41 (e.g., Printer – Rs 3,353.75, Laptop – Rs 3,352.40, Tablet – Rs 3,370.20), spread across the top-5 revenue products (Printer 2, Laptop 2, Tablet 2, Chair 1, Monitor 1). All 8 combine the maximum quantity (5) with high unit prices (Rs 667–691). The Z-Score method flagged 0 outliers on the same data (max z = 2.93), because the right-skewed distribution inflates the standard deviation — a clear example of why method choice matters for skewed data.

**2. Revenue is driven by both price and quantity.**
TotalPrice correlates 0.72 with UnitPrice and 0.62 with Quantity, while Quantity and UnitPrice are almost uncorrelated (0.015). Each factor contributes to revenue independently.

**3. Top revenue products align with the high-value outliers.**

| Product | Total Revenue |
|---|---|
| Chair | Rs 195,620.11 |
| Printer | Rs 195,612.61 |
| Laptop | Rs 192,126.56 |
| Tablet | Rs 186,568.95 |
| Monitor | Rs 175,651.41 |

All 8 outlier orders come from exactly these 5 products, reinforcing that they aren't data anomalies but a distinct, identifiable customer segment.

### ✅ Business Recommendations
- Create a dedicated "Enterprise" segment for the 8 high-value orders and assign them an account manager.
- Introduce bulk-purchase incentives on the top revenue products to encourage more high-quantity orders.
- Confirmed these outliers are legitimate orders, not pricing errors — no data correction needed, only a segmentation strategy.

### 📁 Repository Contents
- `Project_2.ipynb` — full analysis notebook (data audit, outlier detection, visualization, insights)
- `Project2_EDA_AleezaSheikh.html` — exported report view
