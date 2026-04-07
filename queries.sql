USE credit_analysis;

-- =====================================================
-- Loan Application Workflow Analysis
-- Project: Loan Application Workflow Analysis
-- Description: SQL queries used to validate and analyze
-- a simulated loan application funnel dataset
-- =====================================================

-- 1. Data Validation
-- =====================================================

-- Preview all data in the table
SELECT *
FROM loan_workflow_data;

-- Count total rows in the dataset
SELECT COUNT(*) AS total_rows
FROM loan_workflow_data;


-- 2. Outcome Distribution Analysis
-- =====================================================

-- Count total applications by decision status
SELECT decision_status, COUNT(*) AS total_count
FROM loan_workflow_data
GROUP BY decision_status;

-- Count total applications by drop-off stage
SELECT drop_off_stage, COUNT(*) AS total_count
FROM loan_workflow_data
GROUP BY drop_off_stage;

-- Count total occurrences across funded status and decision status
SELECT funded_status, decision_status, COUNT(*) AS total_count
FROM loan_workflow_data
GROUP BY funded_status, decision_status
ORDER BY total_count DESC;


-- 3. Timing Analysis by Loan Type
-- =====================================================

-- Calculate average processing times by loan type
SELECT 
    loan_type, 
    ROUND(AVG(days_to_docs), 2) AS avg_d2doc,
    ROUND(AVG(days_to_review), 2) AS avg_d2rev,
    ROUND(AVG(days_to_decision), 2) AS avg_d2dec,
    ROUND(AVG(total_processing_days), 2) AS avg_tot_prc_days
FROM loan_workflow_data
GROUP BY loan_type
ORDER BY avg_tot_prc_days DESC;


-- 4. Timing Analysis by Customer Segment
-- =====================================================

-- Calculate average processing times by customer segment
SELECT 
    customer_segment, 
    ROUND(AVG(days_to_docs), 2) AS avg_d2doc,
    ROUND(AVG(days_to_review), 2) AS avg_d2rev,
    ROUND(AVG(days_to_decision), 2) AS avg_d2dec,
    ROUND(AVG(total_processing_days), 2) AS avg_tot_prc_days
FROM loan_workflow_data
GROUP BY customer_segment
ORDER BY avg_tot_prc_days DESC;


-- 5. Post-Approval Leakage Analysis
-- =====================================================

-- Count approved applications that did not fully convert post-approval
SELECT 
    decision_status, 
    funded_status,
    drop_off_stage,
    COUNT(*) AS total_accounts
FROM loan_workflow_data
WHERE decision_status = 'Approved' 
  AND drop_off_stage != 'None'
GROUP BY decision_status, funded_status, drop_off_stage;


-- 6. Average Processing Time by Drop-Off Stage
-- =====================================================

-- Compare average processing time across non-completion stages
SELECT 
    drop_off_stage, 
    ROUND(AVG(total_processing_days), 2) AS avg_tot_proc_days
FROM loan_workflow_data
WHERE drop_off_stage != 'None'
GROUP BY drop_off_stage
ORDER BY avg_tot_proc_days DESC;
