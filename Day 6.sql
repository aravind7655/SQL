/* ============================================================
   DAY 6 – GROUP BY
   SQL Data Analytics From Scratch (30 Days)

   Goal:
   Learn how Data Analysts group data
   to compare metrics across categories.
   ============================================================ */

/* ------------------------------------------------------------
   Step 1: Understand the structure
   ------------------------------------------------------------ */
SELECT *
FROM people
LIMIT 10;

/* ------------------------------------------------------------
   Step 2: Count people per city
   Question: How many people belong to each city?
   ------------------------------------------------------------ */
SELECT city, COUNT(*) AS people_count
FROM people
GROUP BY city;

/* ------------------------------------------------------------
   Step 3: Average age per city
   Question: What is the average age in each city?
   ------------------------------------------------------------ */
SELECT city, AVG(age) AS avg_age
FROM people
GROUP BY city;

/* ------------------------------------------------------------
   Step 4: Find youngest and oldest person per city
   ------------------------------------------------------------ */
SELECT
    city,
    MIN(age) AS youngest_age,
    MAX(age) AS oldest_age
FROM people
GROUP BY city;

/* ------------------------------------------------------------
   Step 5: Group by multiple columns
   Question: How many people of each age exist in each city?
   ------------------------------------------------------------ */
SELECT city, age, COUNT(*) AS people_count
FROM people
GROUP BY city, age
ORDER BY city, age;

/* ------------------------------------------------------------
   Step 6: Combine WHERE + GROUP BY
   Filter first, then group
   ------------------------------------------------------------ */
SELECT city, COUNT(*) AS people_count
FROM people
WHERE age > 25
GROUP BY city;

/* ------------------------------------------------------------
   Step 7: Analytical summary
   ------------------------------------------------------------ */
SELECT
    city,
    COUNT(*) AS total_people,
    AVG(age) AS average_age
FROM people
GROUP BY city;

/* ------------------------------------------------------------
   Key Takeaway:
   GROUP BY is used to compare metrics
   across different categories.
   ------------------------------------------------------------ */
