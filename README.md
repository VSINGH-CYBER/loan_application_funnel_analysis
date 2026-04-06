# Loan Application Funnel Analysis

## Project Overview
Analyzed a simulated loan application workflow dataset to identify points of applicant drop-offs, stage-level bottlenecks, and process inefficiencies. Using SQL, the analysis focuses on where applications are delayed or lost in the funnel and what workflow refinements may increase loan conversions and improve operational workflow.

## Business Problem
Financial institutions need to understand where applicants stall, drop off, or experience delays in the loan application process. Without visibility into funnel performance, lenders run a higher risk of losing qualified applicants, slowing down approvals, and creating inefficiencies in underwriting operations.

## Objective
The objective of this analysis was to:

* identify where the largest drop-offs occur in the application funnel
* evaluate which stages create the most delay
* compare approval and abandonment outcomes across loan types and customer segments
* translate workflow findings into process improvement recommendations

## Dataset Approach
This project uses a simulated loan application workflow dataset that is designed to reflect a realistic lending funnel. The dataset presents key stages including submission, document collection, underwriting review, decisioning, and funding. A simulated dataset was used so the analysis could focus on funnel drop-off, stage delays, and workflow optimization opportunities in a controlled business scenario.

## Workflow Design
This project is modeling a simplified loan application funnel analysis, the dataset used is tailored to reflect a realistic lending workflow. Each application in this dataset begins in the submission stage, moving through documentation collection, underwriting review, decisioning, and funding. Depending on the applicant’s stage of progression, the application will have been approved, denied, withdrawn, actively pending, or failed to convert after an approval. 

These are the workflow stages used in the dataset:

* Application Submission Status
* Documents Requested (Requested / Not Requested)
* Documents Received (Received / Not Received)
* Underwriting Review Status (Not Started, Pending, or Completed)
* Decision Outcome (Approved, Denied, Withdrawn, or Pending)
* Funding Outcome (Funded, Not Funded, or N/A)

With this dataset structure we are able to thoroughly analyze our conversion loss rates post approval and what stage the drop off occurred at.

## Key Business Questions
- What stage shows the most applicant drop offs in the loan application funnel?
- Which loan products are experiencing the longest processing times?
- Which customer segments are showing the longest delays during the application process?
- How much application leakage is occurring in between approval and funding?
- Which workflow stages could we refine to improve the conversion rate in our application process?

## SQL Analsis Process
The SQL analysis began with basic data validation, this is where I confirmed that the dataset was correctly imported, row count met expectations, and that the column fields contained realistic and internally consistent values. Once I validated the structure of the dataset, the analysis was conducted to focus on outcome distribution, stage level drop offs, application/funding conversion, and patterns in timing.

The workflow was analyzed by grouping applications across key workflow fields such as:

- Decision outcome
- Drop-off stage
- Loan type
- Customer segment
- Funding status

Average timing metrics were then gathered to compare across products and customer segments to find trends in stages that were leading to the delays in the processing of an application. Conditional logic and grouped aggregations were used to evaluate where the funnel was losing applications and what workflow paths were causing delays. 

Core SQL techniques used: 

- SELECT
- COUNT
- AVG
- ROUND
- GROUP BY
- ORDER BY
- CASE WHEN
- Status-based filtering and segmentation

## Findings

### Data Visualization

## Recommendations

## Limitations

## Skills Demonstrated

