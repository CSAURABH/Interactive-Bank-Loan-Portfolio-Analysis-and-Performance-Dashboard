SELECT
	*
FROM bank_loan_data;

SELECT
	(COUNT(CASE WHEN loan_status = 'Fully Paid' OR loan_status = 'Current' THEN id END) * 100)
	/
	COUNT(id) AS Good_loan_percentage
FROM bank_loan_data;

SELECT
	COUNT(id) AS Good_loan_Applications
FROM bank_loan_data
WHERE loan_status = 'Fully Paid' OR loan_status = 'Current';

SELECT
	SUM(loan_amount) AS Good_loan_Funded_Amount
FROM bank_loan_data
WHERE loan_status = 'Fully Paid' OR loan_status = 'Current';

SELECT
	SUM(total_payment) AS Good_loan_Received_Amount
FROM bank_loan_data
WHERE loan_status = 'Fully Paid' OR loan_status = 'Current';