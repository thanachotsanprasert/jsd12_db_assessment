-- Task 3: Staff Performance Review
-- At the end of the month, the owner wants to reward the hardest-working cashiers.
-- To decide fairly, they want to see how many orders each staff member has processed,
-- with the busiest staff member appearing at the top of the list.
--
-- Hint: Write a query to find the total number of orders processed by each staff member.
-- The result should show the staff member's full name (concatenated) and their total order count,
-- ordered by the count in descending order.

-- Bonus: The dataset is identical in the MongoDB database, meaning the same business insight can be retrieved.
-- Write the equivalent query for MongoDB. See query_task3_bonus.mongodb.js

-- ---------------------------------------------------------------
-- Your thinking process (required)
/*
1 คำถามต้องการให้เราหาพนักงานที่มี Order มากที่สุด โดย sort จากมากไปน้อย
2 ชื่อของพนักงานอยู่ที่ db staff และรายการ order ที่มี staff process อยู่ที่ order db
3 เราจะเอา order db เป็นหลักก่อน และดึงชื่อ staff เข้ามา โดยใช้ staff id โดยการ join
4 เราจะใช้ Primary key ของ staff db ใน column staff_id ในการ join
5 
SELECT 
o.order_id,
o.staff_id,
s.first_name,
s.last_name
FROM Orders o
JOIN Staff s USING (staff_id);

เราจะได้ total ของ staff ที่เสริฟ ทั้งหมด
ุ6 ต่อไปเราจะนับ order ที่ staff แต่ละคน process โดยใข้ COUNT และ GROUP BY
โดยในการใช้ COUNT และ GROUP BY ต้องเอา o.order_id เพราะ GROUP BY รวม staff id, ชื่อ และนามสกุล สามารถทำให้ค่าทั้ง 3 เป็น unique ได้
แต่ไม่สามรถเลือกได้ว่า o.order_id ที่ไม่ได้ group จะทำยัง หรือไม่สามารถทำให้ unique ได้
ุุึ7 
SELECT 
o.staff_id,
s.first_name,
s.last_name,
COUNT(*) AS total_order
FROM Orders o
JOIN Staff s USING (staff_id)
GROUP BY o.staff_id, s.first_name, s.last_name;

8 จาก code ด้านบน result จะเรียง total order จากมากไปน้อยอยู่แล้วแต่
กำหนดด้วยการใช้ ORDER BY และ DESE

9 ดังนั้น code ด้านล่าง คือคำตอบ

SELECT 
o.staff_id,
s.first_name,
s.last_name,
COUNT(*) AS total_order
FROM Orders o
JOIN Staff s USING (staff_id)
GROUP BY o.staff_id, s.first_name, s.last_name
ORDER BY total_order DESC;

*/
-- ---------------------------------------------------------------
-- Before writing your query, explain in your own words how you
-- interpreted the task, what data you need, which table(s) are
-- involved, and what SQL concepts you plan to use.
-- Write in English or Thai. Do not skip this step.
--
-- Your thinking:
--

SELECT 
o.staff_id,
s.first_name,
s.last_name,
COUNT(*) AS total_order
FROM Orders o
JOIN Staff s USING (staff_id)
GROUP BY o.staff_id, s.first_name, s.last_name
ORDER BY total_order DESC;