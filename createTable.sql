create table products(
	ProductID varchar(100),
	ProductCategory varchar(150),
	Price double precision,
	supplier varchar(100),
	ProductionCost double precision
)

copy products from 'D:\Data-Analyst9\SQL\assistment\products.csv' DELIMITER ',' csv header 

select * from products	

create table inventory(
	ProductID varchar(50),
	Region varchar(150),
	StockLevel int,
	ReorderPoint int,
	LeadTime int
)

copy inventory from 'D:\Data-Analyst9\SQL\assistment\inventory.csv' DELIMITER ',' csv header

select * from inventory

create table sales_data (
	OrderID varchar(50),
	Region varchar(100),
	Date TIMEStamp,
	Revenue double precision,
	ProductCategory varchar(100),
	UnitsSold int,
	DiscountApplied double precision
)

copy sales_data from 'D:\Data-Analyst9\SQL\assistment\sales_data.csv' DELIMITER ',' csv header

create table customer_behavior(
	CustomerID varchar(50),
	Region varchar(100),
	SatisfactionScore int,
	PurchaseFrequency double precision,
	AverageSpend double precision,
	ChurnRisk varchar(50),
	ReferralCount int
)

copy customer_behavior from 'D:\Data-Analyst9\SQL\assistment\customer_behavior.csv' DELIMITER ',' csv header









