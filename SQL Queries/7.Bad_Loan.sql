SELECT
	*
FROM bank_loan_data;

SELECT
	(COUNT(CASE WHEN loan_status = 'Charged Off' THEN id END) * 100)
	/
	COUNT(id) AS Bad_loan_percentage
FROM bank_loan_data;

SELECT
	COUNT(id) AS Bad_loan_Applications
FROM bank_loan_data
WHERE loan_status = 'Charged Off';

SELECT
	SUM(loan_amount) AS Bad_loan_Funded_Amount
FROM bank_loan_data
WHERE loan_status = 'Charged Off';

SELECT
	SUM(total_payment) AS Bad_loan_Received_Amount
FROM bank_loan_data
WHERE loan_status = 'Charged Off';