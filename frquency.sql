SELECT CustomerID, COUNT(*) AS Frequency
FROM `jeetcourseracourse.RFM.RFM_data`
GROUP BY CustomerID;