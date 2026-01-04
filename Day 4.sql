/* ============================================================
   DAY 4 – SORTING & LIMITING DATA
   SQL Data Analytics From Scratch (30 Days)

   Goal:
   Learn how Data Analysts rank data and
   focus only on the most important records.
   ============================================================ */

/* ------------------------------------------------------------
   Step 1: View sample data for context
   ------------------------------------------------------------ */
SELECT *
FROM people
LIMIT 10;

/* ------------------------------------------------------------
   Step 2: Sort data by age (youngest to oldest)
   ORDER BY defaults to ASC
   ------------------------------------------------------------ */
SELECT name, age, city
FROM people
ORDER BY age;

/* ------------------------------------------------------------
   Step 3: Sort data by age (oldest to youngest)
   DESC = descending order
   ------------------------------------------------------------ */
SELECT name, age, city
FROM people
ORDER BY age DESC;

/* ------------------------------------------------------------
   Step 4: Find top 5 oldest people
   This is a very common interview-style query
   ------------------------------------------------------------ */
SELECT name, age, city
FROM people
ORDER BY age DESC
LIMIT 5;

/* ------------------------------------------------------------
   Step 5: Find top 5 youngest people
   ------------------------------------------------------------ */
SELECT name, age, city
FROM people
ORDER BY age ASC
LIMIT 5;

/* ------------------------------------------------------------
   Step 6: Sort using multiple columns
   First by city, then by age (descending)
   ------------------------------------------------------------ */
SELECT name, age, city
FROM people
ORDER BY city ASC, age DESC;

/* ------------------------------------------------------------
   Step 7: Combine filtering + sorting + limiting
   Real analyst thinking in one query
   ------------------------------------------------------------ */
SELECT name, age, city
FROM people
WHERE city IN ('Hyderabad', 'Bangalore')
ORDER BY age DESC
LIMIT 3;

/* ------------------------------------------------------------
   Step 8: Identify oldest person in each city (basic approach)
   ------------------------------------------------------------ */
SELECT city, MAX(age) AS max_age
FROM people
GROUP BY city;

/* ------------------------------------------------------------
   Key Takeaway:
   Sorting helps prioritize data.
   LIMIT helps focus on what matters most.
   Together, they save time and drive insights.
   ------------------------------------------------------------ */
