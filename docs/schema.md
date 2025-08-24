# 📋 Schema: loan_data table

This table contains data about loan applications.

| Column Name | Data Type | Description |
| :--- | :--- | :--- |
| `Loan_ID` | text | A unique ID for each loan application (e.g., LP001002) |
| `Gender` | text | Applicant's gender (Male/Female) |
| `Married` | text | Is the applicant married? (Yes/No) |
| `Dependents` | text | Number of dependents (0, 1, 2, 3+) |
| `Education` | text | Applicant's education level (Graduate/Not Graduate) |
| `Self_Employed` | text | Is the applicant self-employed? (Yes/No) |
| `Applicant_Income` | integer | Income of the applicant |
| `Coapplicant_Income` | integer | Income of a co-applicant |
| `Loan_Amount` | integer | The amount of loan requested (in thousands) |
| `Loan_Amount_Term` | integer | The term of the loan (in days, e.g., 360) |
| `Credit_History` | integer | Meets credit guidelines? (1=Yes, 0=No) |
| `Property_Area` | text | Location of property (Urban/Semiurban/Rural) |
| `Loan_Status` | text | Was the loan approved? (Y/N) |
