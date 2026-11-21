-- Q1 + Q2
SELECT sum(Sales) as total_sales, sum(Profit) as total_profit, round(sum(Profit) / sum(Sales) * 100.0 , 2) as margin
FROM superstore;

-- Q3
SELECT Region, sum(sales) as total_sales
FROM superstore
group by Region
order by total_sales DESC
LIMIT 1;

-- Q4: category dengan profit margin terendah
SELECT Category, round(sum(Profit) * 100.0 / sum(Sales), 2) as margin
FROM superstore
group by Category
order by margin ASC
limit 1;

--Q5: tiga sub category dengan total profit terendah
SELECT "Sub-Category", sum(Profit) as profit_terendah
FROM superstore
group by "Sub-Category"
order by profit_terendah ASC
LIMIT 3;

--Q6: total sales per tahun, dan paling atas tertinggi
select tahun, sum(sales) as total_sales
from superstore
group by tahun
order by total_sales DESC;

--Q7: bulan dengan total sales tertinggi di tahun terakhir
SELECT strftime('%m', "order date") as bulan, sum(sales) as total_sales
FROM superstore
WHERE  strftime('%Y', "order date") = '2017'
group by bulan
order by total_sales DESC
LIMIT 1;

--Q8: jumlah order unik
SELECT count(DISTINCT "order id")
FROM superstore;

-- Q9: menghitung AOV
SELECT sum(Sales) / count(distinct "order id") as AOV
FROM superstore;

-- Q10: rata-rata lama pengiriman
SELECT "ship mode", AVG(julianday("ship date") - julianday("order date")) as rata_rata_pengiriman
from superstore
group by "ship mode";

--Q11: customer dengan sales tertinggi
SELECT "customer id", "customer name", sum(sales) as total_sales
from superstore
group by "customer id", "customer name"
order by total_sales DESC
limit 1;

--Q12: rata-rata profit per baris dengan diskon >20% vs 0%
SELECT avg(Profit) as profit_20_discount
FROM superstore
WHERE Discount > 0.2;

SELECT avg(Profit) as profit_0_discount
FROM superstore
WHERE Discount = 0;
