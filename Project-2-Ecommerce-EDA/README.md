📊 Project 2: E-Commerce Outlier Detection & Revenue Drivers


Statistical EDA on 1,200 e-commerce orders to detect outliers using IQR and Z-Score methods, uncover revenue drivers, and translate findings into a customer segmentation recommendation.



🎯 Business Problem

Not all "unusual" orders are data errors — some represent real, high-value customer behavior worth acting on. This project investigates a 1,200-order e-commerce dataset to distinguish genuine outliers from noise, understand what actually drives revenue (price vs. volume), and turn the findings into a concrete business recommendation.

🛠️ Tools & Skills

Python · Pandas · NumPy · SciPy · Seaborn · Matplotlib · Outlier Detection (IQR & Z-Score) · Correlation Analysis · Data Storytelling

🗂️ Dataset

1,200 orders across 14 columns (order details, customer, product, payment, fulfillment status, and revenue), spanning Feb–Mar 2026. The only missing data was in CouponCode (309 nulls, expected for non-coupon orders) — all other fields were complete.

🔍 Methodology


Data Loading & Quality Check — Inspected shape, types, and missing values across 1,200 orders.
Outlier Detection — IQR vs. Z-Score — Compared two statistical methods on TotalPrice and UnitPrice to determine which technique was actually reliable on this dataset.
Visual Analysis — Used boxplots and histograms to confirm distribution shape and visualize the IQR fence.
Correlation & Revenue Analysis — Built a correlation heatmap and ranked products by total revenue contribution.


💡 Key Insights

1. A genuine VIP segment exists — and only the IQR method caught it.
The IQR method flagged 8 outlier orders above Rs 3,330.41 (e.g., Printer – Rs 3,353.75, Laptop – Rs 3,352.40, Tablet – Rs 3,370.20), concentrated in Laptop, Printer, and Tablet — consistent with bulk B2B purchases. The Z-Score method flagged 0 outliers on the same data, because the distribution was right-skewed and Z-Score assumes normality — a clear example of why method choice matters for skewed data.

2. Revenue is driven by volume, not price.
TotalPrice correlated with Quantity at 0.62 and with ItemsInCart at 0.72, but only at 0.015 with UnitPrice. This means bulk purchasing — not expensive individual items — is the real revenue driver.

3. Top revenue products align with the VIP outliers.

ProductTotal RevenueChairRs 195,620.11PrinterRs 195,612.61LaptopRs 192,126.56TabletRs 186,568.95MonitorRs 175,651.41

These top 5 products are in the same categories that drive the 8 high-value outlier orders, reinforcing that these aren't data anomalies but rather a distinct, identifiable customer segment.

✅ Business Recommendations


Create a dedicated "Enterprise" segment for the 8 high-value orders and assign them an account manager.
Introduce bulk discounts on laptops, printers, and tablets to encourage more B2B-style volume orders.
Confirmed these outliers are legitimate customers, not pricing errors — no data correction needed, only a segmentation strategy.


📁 Repository Contents


Project_2.ipynb — full analysis notebook (data audit, outlier detection, visualization, insights)
Project2_EDA_AleezaSheikh.html — exported report view
