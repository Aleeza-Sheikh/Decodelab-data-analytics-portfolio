CREATE TABLE Orders (
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

INSERT INTO Orders VALUES
('ORD20000', '2026-01-15', 'C72649', 'Monitor', 5, 570.62, '928 Main St', 'Debit Card', 'Shipped', 'TRK379479', 7, 'SAVE10', 'Instagram', 2853.10),
('ORD20000', '2026-01-15', 'C75739', 'Phone', 2, 151.35, '823 Main St', 'Online', 'Shipped', 'TRK91186', 3, 'SAVE10', 'Referral', 302.70),
('ORD20000', '2026-01-15', 'C81728', 'Tablet', 5, 550.68, '512 Main St', 'Credit Card', 'Cancelled', 'TRK42903', 8, 'FREESHIP', 'Email', 2753.40),
('ORD20000', '2026-01-15', 'C33540', 'Chair', 1, 273.19, '275 Main St', 'Debit Card', 'Returned', 'TRK62788', 5, 'SAVE10', 'Facebook', 273.19),
('ORD20000', '2026-01-15', 'C81840', 'Printer', 4, 626.01, '668 Main St', 'Online', 'Delivered', 'TRK29241', 8, 'SAVE10', 'Email', 2504.04);
