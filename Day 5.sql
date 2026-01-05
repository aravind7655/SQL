/* ============================================================
   DAY 5 – AGGREGATE FUNCTIONS
   SQL Data Analytics From Scratch (30 Days)

   Goal:
   Learn how Data Analysts summarize data
   and convert rows into meaningful metrics.
   ============================================================ */

/* ------------------------------------------------------------
   Step 1: Understand dataset size
   Question: How many people are there in total?
   ------------------------------------------------------------ */
SELECT COUNT(*) AS total_people
FROM people;

/* ------------------------------------------------------------
   Step 2: Basic aggregation on a column
   Question: What is the average age of people?
   ------------------------------------------------------------ */
SELECT AVG(age) AS average_age
FROM people;

/* ------------------------------------------------------------
   Step 3: Find minimum and maximum values
   Question: Who is the youngest and oldest?
   ------------------------------------------------------------ */
SELECT 
    MIN(age) AS youngest_age,
    MAX(age) AS oldest_age
FROM people;

/* ------------------------------------------------------------
   Step 4: Aggregation with filtering
   Question: Average age of people in Hyderabad
   ------------------------------------------------------------ */
SELECT AVG(age) AS avg_age_hyderabad
FROM people
WHERE city = 'Hyderabad';

/* ------------------------------------------------------------
   Step 5: Count with condition
   Question: How many people are older than 30?
   ------------------------------------------------------------ */
SELECT COUNT(*) AS people_above_30
FROM people
WHERE age > 30;

/* ------------------------------------------------------------
   Step 6: Count distinct values
   Question: How many unique cities are present?
   ------------------------------------------------------------ */
SELECT COUNT(DISTINCT city) AS unique_cities
FROM people;

/* ------------------------------------------------------------
   Step 7: Combine multiple metrics in one query
   Real analyst-style summary
   ------------------------------------------------------------ */
SELECT
    COUNT(*) AS total_people,
    AVG(age) AS average_age,
    MIN(age) AS youngest_age,
    MAX(age) AS oldest_age
FROM people;

/* ------------------------------------------------------------
   Key Takeaway:
   Aggregations transform raw data into insights.
   Metrics are the language of analytics.
   ------------------------------------------------------------ */
