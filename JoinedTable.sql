CREATE TABLE jeetcourseracourse.RFM.CombinedRFMTable AS
SELECT
  R.CustomerID,
  R.Recency,
  F.Frequency,
  M.Monetary
FROM (
  SELECT
    CustomerID,
    DATE_DIFF(CAST(CURRENT_DATE() AS DATE), MAX(PurchaseDate), DAY) AS Recency
  FROM
    `jeetcourseracourse.RFM.RFM_data`
  GROUP BY
    CustomerID ) R
JOIN (
  SELECT
    CustomerID,
    COUNT(*) AS Frequency
  FROM
    `jeetcourseracourse.RFM.RFM_data`
  GROUP BY
    CustomerID ) F
  ON
  R.CustomerID = F.CustomerID
JOIN (
  SELECT
    CustomerID,
    SUM(TransactionAmount) AS Monetary
  FROM
    `jeetcourseracourse.RFM.RFM_data`
  GROUP BY
    CustomerID ) M
  ON
  R.CustomerID = M.CustomerID;