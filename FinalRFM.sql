SELECT CustomerID,
       CASE
           WHEN Recency <= 30 THEN 'High'
           WHEN Recency BETWEEN 31 AND 60 THEN 'Medium'
           ELSE 'Low'
       END AS RecencyScore,
       CASE
           WHEN Frequency >= 10 THEN 'High'
           WHEN Frequency BETWEEN 5 AND 9 THEN 'Medium'
           ELSE 'Low'
       END AS FrequencyScore,
       CASE
           WHEN Monetary >= 500 THEN 'High'
           WHEN Monetary BETWEEN 200 AND 499 THEN 'Medium'
           ELSE 'Low'
       END AS MonetaryScore
FROM jeetcourseracourse.RFM.CombinedRFMTable;