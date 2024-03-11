SELECT CustomerID,
       MAX(PurchaseDate) AS LastPurchaseDate,
       DATE_DIFF(CURRENT_DATE(), MAX(PurchaseDate), DAY) AS Recency
FROM `jeetcourseracourse.RFM.RFM_data`
GROUP BY CustomerID;