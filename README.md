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

### 1. The largest non-completion drop-off points occur during Underwriting Review and Document Collection stages
The 120-row dataset shows that the most significant non-completion stages are **Underwriting Review** and **Document Collection**; this implies that friction has occured in both before formal review begins and during the review process itself. This suggests the funnel is losing applicants both early and mid-process, making these stages the strongest candidates for workflow improvement.

### 2. Post-approval leakage is meaningful and should not be ignored
Out of the 64 applications that reached approval, **11 were not converted as funded loans**, representing **~17.19% post-approval loss**. This indicates that approval alone does not guarantee conversion to a funded loan, and that friction continues even after credit decisions are complete.

### 3. Small Business Loans are the slowest-moving product in the funnel
**Small Business Loans continue to show the highest average total processing time**, making them the slowest loan product in the workflow. Document collection appears to be the longest stage across all three loan products, but it remains significantly longer for Small Business Loans. Underwriting review is also higher for Small Business Loans than for Auto or Personal Loans, suggesting that both stages are contributing to slower throughput.

### 4. Workflow friction differs by customer segment
New customers experience the longest delays in **document collection**, while Returning customers face more moderate delays across both **document collection** and **underwriting review**. Existing Customers move through the funnel much faster overall, suggesting a lower-friction process and a more efficient path to decision.


### Data Visualization

## Recommendations

1. Improve underwriting review efficiency
Since Underwriting Review was one of the largest non-completion drop-off points in our pre-approval process, this stage should be reviewed for workflow inefficiencies. Here are some potential improvement actions: 

- Reassessing team capacity
- Refining review handoff procedures
- Optimizing review steps
- Providing retraining where process inconsistency exists

The exact solution would be dependent on the staffing structure, operating models, and budget constraints, but the underwriting stage should be treated as a priority for workflow optimization

2. Investigate post-approval leakage deeper
This application funnel analysis revealed that 17.19% of approved applications are not converting to funded loans, this shows that there is meaningful friction in the post approval stage of the loan application funnel. A follow up analysis should be conducted, focusing on specifically post-approval metrics to gain a better understanding on why applicants are failing to convert into funded loans. This could consist of reviewing:

- Applicant communication after approval
- Time it takes to fund the applicant
- Documentation or verification steps still required after the approval
- Customer abandonment after approval

This would help us to be able to further investigate whether the issue is operational, communication-based, or related to process complexity after approval.

3. Perform a deeper workflow analysis of Small Business Loan product
Small business loans were found to have the longest average total processing time and higher delays in both the documentation collection and underwriting review stages of the funnel. This suggests that the Small Business Loan workflow may contain more points of friction or complexity than other products we are offering. 

A deeper product specific analysis should be done to further understand the following:

- Whether document requirements are excessive or unclear
- Whether underwriting review should be more automated to increase time sensitivity
- Whether workflow steps can be simplified without risking compliance or policy violations
- This could help reduce the turn-around time while maintaining appropriate lending policies and expectations.

4. Investigate segment-specific friction for New and Returning customers
The analysis showed that New customers face the longest delays in the document collection stage, while Returning customers experience slower underwriting review than Existing Customers. This suggests that workflow friction differs by customer segment and could require more targeted process improvements.

A follow-up analysis should be conducted to analyze:

- Whether New Customers need clearer document instructions or onboarding support
- Whether returning customers are being routed into slower review paths
- Whether Existing Customers retain workflow efficiencies that could be applied to other segments to match velocity

Improving the onboarding process and review stages for New and Returning customers may assist in reducing delays and improve conversion.

## Limitations

This analysis is exploratory in nature and should not be relied on to come to any strong conclusions in a live production environment. This project was conducted on a simulated loan application workflow dataset containing a sample size of 120 records which is sufficient for demonstrating funnel analysis, stage-level delay patterns, and process-friction trends, but not large enough to support high-confidence operational conclusions.

This analysis was conducted to identify workflow trends using the sample size and metrics available. A deeper analysis using a larger dataset should be conducted to reveal any additional workflow inefficiencies, points of friction, and validate whether these trends apply at an enterprise level scale, and isolate more precise root causes behind applicant drop off and delay. 

This project focuses primarily on pre-approval workflows stages, a deeper investigation on a larger dataset with metrics for the post approval stage and individual stages should be conducted to find more precise points of friction. 

## Skills Demonstrated



