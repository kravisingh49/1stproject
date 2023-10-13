USE test;
select* from housing_train;
## Retrieve the first 10 records from the dataset.

select * from housing_train limit 10;

##Count the total number of records in the dataset.

select count(*) as total_record from housing_train;

##Find the average LotArea in the dataset.
select avg(LotArea) as avg_lot_area from housing_train;

##Calculate the maximum and minimum SalePrice values.
select max(SalePrice) as max_price, min(SalePrice) as min_price from housing_train;

##Retrieve the records of houses with a "PoolArea" greater than 0.
select Id, PoolArea from housing_train
where PoolArea>'0';

##Find the number of houses in each "MSZoning" category.
select MSZoning, count(*) as total_house from housing_train
group by MSZoning;

##Retrieve the records of houses with a "GarageType" of "Attached" and "GarageFinish" of "Fin".
select * from housing_train
where GarageType= "Attchd" and GarageFinish= "Fin";

##Calculate the average SalePrice for houses built in the 21st century (YearBuilt >= 2000).
select avg(SalePrice) as avg_price from housing_train
where YearBuilt>='2000';

##Group the data by "Neighborhood" and find the neighborhood with the highest average SalePrice.
SELECT Neighborhood, AVG(SalePrice) AS AverageSalePrice
FROM housing_train
GROUP BY Neighborhood
ORDER BY AverageSalePrice DESC;

##Count the number of houses with "FireplaceQu" values that are not NULL.
SELECT FireplaceQu, COUNT(*)
FROM housing_train
WHERE FireplaceQu IS NOT NULL
group by FireplaceQu;

##Retrieve the records of houses with a "Fence" value of "MnPrv" or "GdPrv."
SELECT *
FROM housing_train
WHERE Fence IN ('MnPrv', 'GdPrv');




