SELECT 
	* 
FROM bank_loan_data;

SELECT
	COUNT(id) AS Total_Loan_Applications
FROM bank_loan_data;

SELECT
	COUNT(id) AS MTD_Total_Loan_Applications
FROM bank_loan_data
WHERE MONTH(issue_date) = 12 AND YEAR(issue_date) = 2021;

SELECT
	COUNT(id) AS PMTD_Total_Loan_Applications
FROM bank_loan_data
WHERE MONTH(issue_date) = 11 AND YEAR(issue_date) = 2021;