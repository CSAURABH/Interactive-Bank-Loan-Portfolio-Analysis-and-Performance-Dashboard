SELECT 
	* 
FROM bank_loan_data;

SELECT
	SUM(total_payment) AS Total_Amount_Received
FROM bank_loan_data;

SELECT
	SUM(total_payment) AS MTD_Total_Amount_Received
FROM bank_loan_data
WHERE MONTH(issue_date) = 12 AND YEAR(issue_date) = 2021;

SELECT
	SUM(total_payment) AS PMTD_Total_Amount_Received
FROM bank_loan_data
WHERE MONTH(issue_date) = 11 AND YEAR(issue_date) = 2021;