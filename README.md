# Finance Data Analysis Project

## Project Overview

This is an end-to-end Finance Data Analysis project created using Excel, Power Query, SQL, DAX, and Power BI.

The project focuses on analyzing customers, accounts, transactions, branches, employees, and loans to identify business trends, performance, and risk-related insights.

The dataset covers the period from 2023 to 2026.

---

## Business Objective

The main objective of this project is to answer important business questions such as:

- How is the bank performing in terms of customers, accounts, and transactions?
- Which customer segment holds the highest balance?
- Which account type is most common?
- Which branches contribute the highest transaction amount?
- Which transaction type contributes the highest transaction amount?
- Which loan type contributes the highest loan amount?
- What is the loan approval and default situation?
- Which loan type has the highest default rate?
- How do customer segments contribute to the loan portfolio?

---

## Tools & Technologies

- Excel
- Power Query
- SQL
- Power BI
- DAX

---

## Dataset Tables

The project contains the following tables:

- Customers
- Accounts
- Transactions
- Loans
- Branches
- Employees

### Customers

Contains customer details such as customer ID, customer segment, age, and location.

### Accounts

Contains account details such as account ID, account type, account status, and current balance.

### Transactions

Contains transaction details such as transaction ID, transaction date, transaction type, channel, status, and amount.

### Loans

Contains loan details such as loan ID, loan type, loan amount, loan status, customer segment, and branch.

### Branches

Contains branch and regional information.

### Employees

Contains employee and branch-related information.

---

## Data Cleaning & Preparation

The data was cleaned and prepared using Excel and Power Query.

Main cleaning activities included:

- Removing duplicate records
- Handling blank and missing values
- Correcting inconsistent spellings
- Splitting date and time where required
- Standardizing data for analysis
- Preparing cleaned tables for SQL import

After cleaning, the prepared tables were imported into SQL for analysis.

---

## SQL Analysis

SQL was used to answer 25 business questions related to:

- Customer analysis
- Account analysis
- Transaction analysis
- Branch analysis
- Loan analysis
- Employee and branch analysis

The SQL analysis included:

- Total customers and accounts
- Total transaction amount
- Year-wise transaction performance
- Transaction analysis by type and channel
- Customer segment analysis
- Account status analysis
- Loan portfolio analysis
- Loan status and default analysis
- Branch-level performance

---

## Power BI Dashboard

The Power BI report contains four analytical pages.

### Page 1: Bank Performance Overview

- Total Customers
- Total Accounts
- Total Transaction Amount
- Total Loan Amount
- Total Transactions
- Year-wise Transaction Amount
- Monthly Transaction Trend
- Customer Segment-wise Balance
- Transaction Amount by Region
- Loan Amount by Loan Type

### Page 2: Customer & Account Analysis

- Customers by Customer Segment
- Balance by Customer Segment
- Accounts by Account Type
- Customers by Branch
- Account Status Analysis
- Average Balance by Account Type

### Page 3: Transaction Analysis

- Monthly Transaction Amount
- Year-wise Transaction Amount
- Transaction Amount by Transaction Type
- Branch-wise Transaction Amount
- Transaction Status Analysis
- Total Transactions by Channel

### Page 4: Loan Risk & Operations Analysis

- Total Loan Amount
- Total Approved Loans
- Loan Approval Rate
- Total Defaulted Loans
- Loan Default Rate
- Loan Amount by Loan Type
- Loan Count by Loan Type
- Loan Status Analysis
- Default Rate by Loan Type
- Defaulted Loan Amount by Customer Segment
- Loan Amount by Branch
- Customers vs Employees by Branch
- Loan Amount by Customer Segment & Loan Type

---

## Key Findings

- The dataset contains 3,000 customer records.
- The distinct customer ID count is 2,257.
- The project contains approximately 4.2K accounts.
- The project contains approximately 24K transactions.
- Total transaction amount is approximately ₹338.45M.
- Total loan amount is approximately ₹2.98B.
- Transaction amount increased from 2023 to 2024 and slightly decreased in 2025.
- October recorded the highest monthly transaction amount.
- February recorded the lowest monthly transaction amount.
- West contributed the highest regional transaction amount.
- East contributed the lowest regional transaction amount.
- Mass is the largest customer segment by customer count and balance.
- Savings accounts are the most common account type.
- Delhi has the highest customer presence by branch.
- Kolkata has the lowest customer presence in the analyzed view.
- Deposit transactions contributed the highest transaction amount.
- Transfer transactions contributed the lowest transaction amount.
- Home Loans contributed the highest loan amount.
- Personal Loans had the highest loan count.
- Education Loans had the lowest loan count.
- Active loans formed the largest loan-status group.
- Education Loans showed the highest default rate.
- Home Loans showed the lowest default rate.
- Mass customer segment with Auto Loans contributed a significant loan amount.

---

## Business Insights

The analysis shows that the bank has a broad customer and account base with substantial transaction and lending activity.

Customer activity is concentrated in the Mass segment, while Savings accounts form a major part of the account base.

Transaction activity varies by month, region, branch, transaction type, and channel.

The loan portfolio is strongly influenced by Home Loans in terms of loan amount, while Personal Loans have higher loan volume.

Default rates vary across loan types, which indicates that loan performance should be monitored at the product level.

---

## Recommendations

- Regularly monitor customer, account, transaction, and loan KPIs.
- Investigate months and regions with lower transaction activity.
- Identify customer engagement opportunities in lower-performing branches.
- Continue monitoring the Savings account base.
- Identify opportunities for Current account growth.
- Closely monitor the Home Loan portfolio.
- Monitor Education Loan repayment and default patterns.
- Analyze transaction type and channel usage.
- Track loan performance by customer segment and loan type.
- Use dashboard insights to support better business decisions.

---

## Skills Demonstrated

- Data Cleaning
- Excel
- Power Query
- SQL
- DAX
- Power BI
- Data Visualization
- Business Analysis
- KPI Analysis
- Customer Analysis
- Account Analysis
- Transaction Analysis
- Loan Risk Analysis
- Insight Generation
- Business Recommendations

---

## Conclusion

This project demonstrates an end-to-end Data Analyst workflow:

1. Cleaning and preparing financial data
2. Analyzing business problems using SQL
3. Creating analytical measures using DAX
4. Building interactive Power BI dashboards
5. Generating business insights and recommendations

The project helped convert raw finance data into meaningful business findings that can support customer, account, transaction, branch, and loan portfolio analysis.
