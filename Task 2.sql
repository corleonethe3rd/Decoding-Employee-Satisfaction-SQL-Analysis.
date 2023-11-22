select * from employee_review;

-- Check for null values in either work_life_balance or salary_benefits columns
SELECT *
FROM employee_review
WHERE work_life_balance IS NULL OR salary_and_benefits IS NULL;

-- Replace null values in work_life_balance column with the average
UPDATE employee_review
SET work_life_balance = (SELECT AVG(work_life_balance) FROM employee_review WHERE work_life_balance IS NOT NULL)
WHERE work_life_balance IS NULL;

-- Replace null values in salary_benefits column with the average
UPDATE employee_review
SET salary_and_benefits = (SELECT AVG(salary_and_benefits) FROM employee_review WHERE salary_and_benefits IS NOT NULL)
WHERE salary_and_benefits IS NULL;


-- Show job title in department of software development  that have a work life balance rating greater than 4 and
-- a salary and benefits rating greater than 4.5.
5SELECT Department,Title,work_life_balance ,salary_and_benefits
FROM Employee_review
WHERE department LIKE 'Software Development%'
    AND work_life_balance > 4
    AND salary_and_benefits > 4.5;



-- Adding qualification column
ALTER TABLE employee_review
ADD Qualification VARCHAR(100); 

-- Claasification of qualification
UPDATE Employee_review
SET Qualification = 
    CASE
        WHEN overall_rating > 4
            AND work_life_balance > 4
            AND salary_and_benefits > 4
            AND skill_development > 4
            AND career_growth > 4
            AND job_security > 4
            AND work_satisfaction > 4 THEN 'Excellent'
        WHEN (
            CASE
                WHEN overall_rating > 3 THEN 1 ELSE 0
            END +
            CASE
                WHEN work_life_balance > 3 THEN 1 ELSE 0
            END +
            CASE
                WHEN salary_and_benefits > 3 THEN 1 ELSE 0
            END +
            CASE
                WHEN skill_development > 3 THEN 1 ELSE 0
            END +
            CASE
                WHEN career_growth > 3 THEN 1 ELSE 0
            END +
            CASE
                WHEN job_security > 3 THEN 1 ELSE 0
            END +
            CASE
                WHEN work_satisfaction > 3 THEN 1 ELSE 0
            END
        ) >= 3 THEN 'Good'
        ELSE 'Poor'
    END;

