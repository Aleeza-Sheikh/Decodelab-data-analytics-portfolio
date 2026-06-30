📊 Project 3: E-Commerce SQL Analysis


SQL-based exploration of e-commerce order data to answer key business questions around revenue, fulfillment, and customer payment behavior.



🎯 Business Problem

Raw order-level data needs to be queried effectively to answer operational and revenue questions a business actually asks: What's shipping right now? What are our highest-value orders? Where is our revenue coming from? This project designs a relational schema for e-commerce orders and writes a set of SQL queries to extract these insights.

🛠️ Tools & Skills

SQL · Relational Database Design · Aggregation (SUM, COUNT, GROUP BY) · Filtering & Sorting · Business Querying

🗂️ Schema

A single Orders table was designed to capture the full lifecycle of an e-commerce transaction:

sqlCREATE TABLE Orders (
  OrderID VARCHAR(20),
  OrderDate DATE,
  CustomerID VARCHAR(20),
  Product VARCHAR(50),
  Quantity INT,
  UnitPrice DECIMAL(10,2),
  ShippingAddress VARCHAR(100),
  PaymentMethod VARCHAR(20),
  OrderStatus VARCHAR(20),
  TrackingNumber VARCHAR(20),
  ItemsInCart INT,
  CouponCode VARCHAR(20),
  ReferralSource VARCHAR(20),
  TotalPrice DECIMAL(10,2)
);

🔍 Key Queries & Insights

QueryPurposeResultSelect all ordersBaseline data checkFull order table reviewedFilter shipped ordersOperational trackingIsolated in-transit ordersTop 3 highest-value ordersIdentify high-value transactionsMonitor (Rs 2,853.10), Tablet (Rs 2,753.40), Printer (Rs 2,504.04)Total revenueOverall sales performanceRs 8,686.43 across sample ordersOrders by payment methodUnderstand payment preferencesDebit Card and Online tied as most usedHigh quantity + high price filterFlag bulk, high-value purchasesIdentified Monitor, Tablet, and Printer as bulk high-ticket items

✅ Results


Designed a normalized schema covering customer, product, payment, and fulfillment data in one query-ready table.
Wrote 6 targeted SQL queries answering real business questions (revenue, fulfillment status, payment trends, high-value orders).
Demonstrated core SQL skills: WHERE, ORDER BY, LIMIT, GROUP BY, and aggregate functions.


💡 Key Takeaways


Practiced translating business questions ("what's our most valuable order?") directly into SQL logic.
Reinforced how schema design choices (e.g., storing TotalPrice directly) simplify downstream queries.
Built comfort with aggregation and grouping for summarizing transactional data.


📁 Repository Contents


schema.sql — table definition and sample data
queries.sql — all business queries used in the analysis
