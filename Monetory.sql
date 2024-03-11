SELECT CustomerID, SUM(TransactionAmount)AS Monetory
FROM `jeetcourseracourse.RFM.RFM_data`
GROUP BY CustomerID