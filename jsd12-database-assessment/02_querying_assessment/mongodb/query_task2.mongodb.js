// Task 2: Shift Activity Report
// Jane Doe has an upcoming performance review and the manager wants to look at her order history
// ahead of the meeting. They only need to see when each order was placed and what it was worth —
// no other details are required for this particular review.
//
// Hint: Write a query to find all orders handled by the staff member "Jane Doe".
// Your query should only return the order_date and total_price fields for these orders.

// Bonus: The dataset is identical in the PostgreSQL database, meaning the same business insight can be retrieved.
// Write the equivalent query for PostgreSQL. See query_task2_bonus.sql

// ---------------------------------------------------------------
// Your thinking process (required)
/*
1 เราจะ filter ใน order เพื่อหา staff ชื่อ jane นามสกุล doe

use("chrome-burger-db")
db.orders.find({});

2 โครงสร้างของ staff first name and last name เก็บ แบบด้านล่าง ดูจาก mock data order

first_name: "Jane",
last_name: "Doe",

3 จึงเอา format ชื่อ และ นามสกุล มาใส่ใน ({})

ก็จะได้ code 

use("chrome-burger-db")
db.orders.find({
  "staff.first_name": "Jane",
  "staff.last_name": "Doe",
});

เป็นคำตอบ

*/

// ---------------------------------------------------------------
// Before writing your query, explain in your own words how you
// interpreted the task, what data you need, which collection(s)
// are involved, and what MongoDB concepts you plan to use.
// Write in English or Thai. Do not skip this step.
//
// Your thinking:
//

use("chrome-burger-db")
db.orders.find({
  "staff.first_name": "Jane",
  "staff.last_name": "Doe",
});

