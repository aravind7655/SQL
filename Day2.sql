/* ============================================================
   DAY 2 – UNDERSTANDING TABLES & EXPLORING DATA
   SQL Data Analytics From Scratch (30 Days)

   Goal:
   Learn how a Data Analyst starts by EXPLORING data,
   not by jumping into complex queries.
   ============================================================ */

/* ------------------------------------------------------------
   Step 1: Check which database we are currently working in
   ------------------------------------------------------------ */
SELECT DATABASE();

/* ------------------------------------------------------------
   Step 2: List all tables inside the current database
   This helps understand what data is available
   ------------------------------------------------------------ */
SHOW TABLES;

/* ------------------------------------------------------------
   Step 3: Explore table structure before querying data
   A good analyst NEVER starts with SELECT *
   ------------------------------------------------------------ */
DESCRIBE people;

/* ------------------------------------------------------------
   Step 4: View sample data (first look at the dataset)
   LIMIT is used to avoid loading unnecessary data
   ------------------------------------------------------------ */
SELECT *
FROM people
LIMIT 10;

/* ------------------------------------------------------------
   Step 5: Select only required columns
   Analysts focus on relevant fields, not everything
   ------------------------------------------------------------ */
SELECT name, age, city
FROM people
LIMIT 10;

/* ------------------------------------------------------------
   Step 6: Count total number of records
   This gives a sense of dataset size
   ------------------------------------------------------------ */
SELECT COUNT(*) AS total_people
FROM people;

/* ------------------------------------------------------------
   Step 7: Identify unique values
   Helps understand categories in data
   ------------------------------------------------------------ */
SELECT DISTINCT city
FROM people;

/* ------------------------------------------------------------
   Step 8: Basic analytical question
   How many people belong to each city?
   ------------------------------------------------------------ */
SELECT city, COUNT(*) AS people_count
FROM people
GROUP BY city;

/* ------------------------------------------------------------
   Key Takeaway:
   Data analysis starts with understanding structure,
   volume, and distribution — not complex queries.
   ------------------------------------------------------------ */
