/* ============================================================
   DAY 7 – WHERE vs HAVING
   SQL Data Analytics From Scratch (30 Days)

   Goal:
   Understand the difference between filtering
   raw data (WHERE) and filtered groups (HAVING).
   ============================================================ */

/* ------------------------------------------------------------
   Step 1: Reminder – Raw data view
   ------------------------------------------------------------ */
SELECT *
FROM people
LIMIT 10;

/* ------------------------------------------------------------
   Step 2: WHERE filters rows BEFORE grouping
   Question: Count people per city where age > 25
   ------------------------------------------------------------ */
SELECT city, COUNT(*) AS people_count
FROM people
WHERE age > 25
GROUP BY city;

/* ------------------------------------------------------------
   Step 3: HAVING filters AFTER grouping
   Question: Show only cities with more than 5 people
   ------------------------------------------------------------ */
SELECT city, COUNT(*) AS people_count
FROM people
GROUP BY city
HAVING COUNT(*) > 5;

/* ------------------------------------------------------------
   Step 4: WHERE + HAVING together (real-world usage)
   Question:
   - Consider only people older than 25
   - Show cities having more than 3 such people
   ------------------------------------------------------------ */
SELECT city, COUNT(*) AS people_count
FROM people
WHERE age > 25
GROUP BY city
HAVING COUNT(*) > 3;

/* ------------------------------------------------------------
   Step 5: HAVING with aggregate conditions
   Question: Cities where average age is above 30
   ------------------------------------------------------------ */
SELECT city, AVG(age) AS avg_age
FROM people
GROUP BY city
HAVING AVG(age) > 30;

/* ------------------------------------------------------------
   Step 6: WRONG usage example (for learning)
   This will fail because aggregate functions
   cannot be used in WHERE
   ------------------------------------------------------------ */
-- SELECT city, COUNT(*) 
-- FROM people
-- WHERE COUNT(*) > 3
-- GROUP BY city;

/* ------------------------------------------------------------
   Key Takeaway:
   WHERE filters rows before aggregation.
   HAVING filters grouped results after aggregation.
   ------------------------------------------------------------ */
