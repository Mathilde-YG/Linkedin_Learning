CREATE VIEW TEST.TEST.PRODUC_PERF AS
SELECT 
    p.PRODUCT_ID        AS Product_ID,
    p.PRODUCTNAME     AS Product_Name,
    p.PRODUCTCATEGORY  AS Product_Category,
    p.PRICE           AS Product_Price,
    SUM(o.Quantity)    AS Total_Product_Sold,
    COUNT(o.Order_Id)  AS Total_Product_Orders,
    count(distinct c.state) as Total_States
FROM TEST.TEST.PRODUCT as p
JOIN TEST.TEST."ORDER" as o
    ON o.ProductID = p.PRODUCT_ID
join TEST.TEST.CUSTOMERS as c
    on c.cust_id = o.cust_id
GROUP BY 
    p.PRODUCT_ID,
    p.PRODUCTNAME,
    p.PRODUCTCATEGORY,
    p.PRICE;

select * from TEST.TEST.PRODUC_PERF

