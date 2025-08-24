
SELECT
    -- Group loans into small, medium, and large amounts
    CASE
        WHEN "Loan_Amount" < 100 THEN 'Small Loan (<100)'
        WHEN "Loan_Amount" BETWEEN 100 AND 200 THEN 'Medium Loan (100-200)'
        ELSE 'Large Loan (>200)'
    END AS loan_size_bucket,
    
    -- Count the total number of loans in each bucket
    COUNT(*) AS total_loans,
    
    -- Count how many loans in each bucket had a bad credit history (our proxy for delinquency)
    COUNT(CASE WHEN "Credit_History" = 0 THEN 1 END) AS number_of_risky_loans,
    
    -- Calculate the % of risky loans in each bucket
    ROUND(
        (COUNT(CASE WHEN "Credit_History" = 0 THEN 1 END) * 100.0 / COUNT(*)),
        2
    ) AS percent_risky
FROM loan_data
-- Group the results by our new loan size buckets
GROUP BY loan_size_bucket
-- Order the results from smallest to largest loan bucket
ORDER BY MIN("Loan_Amount");
