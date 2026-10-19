📊 Project 4: E-Commerce Sales Performance Analysis


Exploratory data analysis of e-commerce order data to uncover product, marketing, and operational performance insights — including a critical fulfillment issue.



🎯 Business Problem

A growing e-commerce business needs to understand what's actually driving (and draining) revenue: which products sell, which marketing channels convert, and whether orders are reaching customers successfully. This project analyzes order-level data to surface actionable insights for inventory, marketing, and operations teams.

🛠️ Tools & Skills

Python · Pandas · Matplotlib · Exploratory Data Analysis · Data Visualization · Business Insight Generation

🔍 Analysis & Insights

1. Most Sold Products

Printer (181), Tablet (179) and Chair (178) are the most ordered products, while Phone is the least at 156. Order volume is fairly evenly spread, so inventory should be prioritized for the top three.

2. Sales by Referral Source

Instagram is the top referral source at 21.6%, followed by Email at 20.8% and Google at 20.1%. Facebook (19.0%) and Referral (18.5%) are lowest. Differences are small, so marketing spend can be tested on Instagram and Email first.

3. Total Revenue by Product

Chair and Printer generate the highest revenue (~Rs 196K each), while Phone generates the lowest (~Rs 152K).

4. Order Status Breakdown — ⚠️ Most Important

Order Status Breakdown [Most Important]
Cancelled (250) and Returned (247) orders each exceed Delivered (231). Together they make up 41.4% of all 1,200 orders, a fulfillment or product-quality issue worth investigating.

✅ Results


Identified Instagram and Email as the top-performing referral channels for marketing focus.
Flagged a critical order fulfillment problem: cancellations and returns outpace successful deliveries.
Surfaced inventory priorities by combining order volume and revenue-per-product analysis.


💡 Key Takeaways


Learned to look past surface-level metrics (order volume) to compare them against revenue and fulfillment outcomes for a fuller picture.
Practiced communicating findings as business recommendations (e.g., "investigate return policy") rather than just chart descriptions.
Reinforced that EDA's value lies in flagging what should be investigated next, not just describing what happened.


📁 Repository Contents


Project-4-Ecommerce-Sales/ — analysis notebook
Ecommerce-Sales.ipynb / .pdf — full analysis with charts and insights
