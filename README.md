# 📊 RFM Analysis with SQL

**RFM (Recency, Frequency, Monetary) Analysis** is a customer segmentation technique used in marketing analytics to identify a company’s most valuable customers based on their purchasing behavior.

This project demonstrates how to perform **RFM Analysis using SQL** step by step — from raw transactional data to actionable customer segments.

---

## 🧠 What is RFM?

- **Recency (R)** — How recently a customer made a purchase  
- **Frequency (F)** — How often they purchase  
- **Monetary (M)** — How much money they spend

---

## 🔧 Tech Stack

- SQL (PostgreSQL / MySQL compatible)
- Raw transaction data (`.csv`)
- RFM metric generation through individual SQL scripts

---

## 🗂️ Project Structure

| File Name           | Description                                      |
|---------------------|--------------------------------------------------|
| `recency.sql`       | SQL query to calculate Recency for each customer |
| `frquency.sql`      | SQL query to calculate Frequency of purchases     |
| `Monetory.sql`      | SQL query to compute Monetary value spent         |
| `JoinedTable.sql`   | Combines Recency, Frequency, Monetary into RFM    |
| `FinalRFM.sql`      | Final scoring logic to assign RFM scores          |
| `rfm_data.csv`      | Sample customer transaction data                  |
| `Final_Results.csv` | Output with calculated RFM segments               |

---

## 🚀 How to Run the Project

1. **Prepare your SQL environment**  
   Load your database with `rfm_data.csv` and ensure fields like `CustomerID`, `PurchaseDate`, and `Amount` are properly formatted.

2. **Run SQL Scripts in Order:**
   - `recency.sql`
   - `frquency.sql`
   - `Monetory.sql`
   - `JoinedTable.sql`
   - `FinalRFM.sql`

3. **Analyze Segments**  
   Use `Final_Results.csv` to explore RFM scores and create targeted customer segments for marketing.

---

## 📌 Use Cases

- 📈 Identify loyal and high-spending customers
- 🧪 Design targeted marketing campaigns
- 🔍 Detect churn risks based on recency
- 💰 Maximize retention and revenue

---

## 📎 Sample Output

| CustomerID | Recency | Frequency | Monetary | RFM Score |
|------------|---------|-----------|----------|-----------|
| 12345      | 10      | 5         | $1200    | 555       |
| 54321      | 90      | 1         | $50      | 111       |

---

## 🙌 Contributions

Pull requests are welcome. Feel free to suggest improvements or new segmenting strategies!

---

## 📚 Acknowledgments

- Inspired by marketing analytics best practices
- Powered entirely by SQL — no external tools required

