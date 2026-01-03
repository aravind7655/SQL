/* ============================================================
   DAY 3 – FILTERING DATA USING WHERE
   SQL Data Analytics From Scratch (30 Days)

   Goal:
   Learn how Data Analysts FILTER data
   to answer specific business questions.
   ============================================================ */

/* ------------------------------------------------------------
   Step 1: View sample data again (context refresh)
   ------------------------------------------------------------ */
SELECT *
FROM people
LIMIT 10;

/* ------------------------------------------------------------
   Step 2: Filter data using WHERE
   Question: Who are all the people older than 25?
   ------------------------------------------------------------ */
SELECT name, age, city
FROM people
WHERE age > 25;

/* ------------------------------------------------------------
   Step 3: Using AND condition
   Question: People older than 25 AND living in a specific city
   ------------------------------------------------------------ */
SELECT name, age, city
FROM people
WHERE age > 25
  AND city = 'Hyderabad';

/* ------------------------------------------------------------
   Step 4: Using OR condition
   Question: People from Hyderabad OR Bangalore
   ------------------------------------------------------------ */
SELECT name, age, city
FROM people
WHERE city = 'Hyderabad'
   OR city = 'Bangalore';

/* ------------------------------------------------------------
   Step 5: Using IN (cleaner & more professional)
   Same question, better syntax
   ------------------------------------------------------------ */
SELECT name, age, city
FROM people
WHERE city IN ('Hyderabad', 'Bangalore');

/* ------------------------------------------------------------
   Step 6: Using BETWEEN
   Question: People aged between 20 and 30
   ------------------------------------------------------------ */
SELECT name, age, city
FROM people
WHERE age BETWEEN 20 AND 30;

/* ------------------------------------------------------------
   Step 7: Using LIKE for pattern matching
   Question: Names that start with letter 'A'
   ------------------------------------------------------------ */
SELECT name, age, city
FROM people
WHERE name LIKE 'A%';

/* ------------------------------------------------------------
   Step 8: Names that contain letter 'a' anywhere
   ------------------------------------------------------------ */
SELECT name, age, city
FROM people
WHERE name LIKE '%a%';

/* ------------------------------------------------------------
   Step 9: Combine multiple filters
   Real analyst-style thinking
   ------------------------------------------------------------ */
SELECT name, age, city
FROM people
WHERE age BETWEEN 22 AND 30
  AND city IN ('Hyderabad', 'Bangalore')
  AND name LIKE '%a%';

/* ------------------------------------------------------------
   Key Takeaway:
   Data Analysts rarely look at full data.
   They FILTER aggressively to get insights faster.
   ------------------------------------------------------------ */
