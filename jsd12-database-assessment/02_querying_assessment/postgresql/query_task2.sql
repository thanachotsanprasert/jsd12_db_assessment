-- Task 2: Kitchen Staff Contact List
-- The manager has a last-minute change to the kitchen prep schedule and needs to notify
-- all cooks as soon as possible. They need the full names of every staff member
-- whose role is 'Cook' so they can be contacted directly.
--
-- Hint: Write a query to list the first_name and last_name of all staff members whose role is 'Cook'.

-- Bonus: The dataset is identical in the MongoDB database, meaning the same business insight can be retrieved.
-- Write the equivalent query for MongoDB. See query_task2_bonus.mongodb.js

-- ---------------------------------------------------------------
-- Your thinking process (required)
/*
1 โจทย์ให้หารายชื่อของพนักงาน (ชื่อจริง และชื่อเล่น)
2 เรียกตาราง staff ทั้งหมดมาดูก่อน ใช้ SELECT * FROM Staff
3 หลังจากได้ตารางทั้งหมดแล้ว จะเห็นว่ามี cook อยู่ 2 คน
4 ใช้ WHERE filter cook โดย WHERE role = 'Cook'
5 SELECT * FROM Staff WHERE role = 'Cook' คือคำตอบ
*/
-- ---------------------------------------------------------------
-- Before writing your query, explain in your own words how you
-- interpreted the task, what data you need, which table(s) are
-- involved, and what SQL concepts you plan to use.
-- Write in English or Thai. Do not skip this step.
--
-- Your thinking:
--
SELECT * FROM Staff WHERE role = 'Cook'