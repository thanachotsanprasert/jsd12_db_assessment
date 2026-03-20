-- Task 4: Supplier Dependency Check
-- The manager has just heard that 'Freshest Farm Produce' may be delayed on their next delivery.
-- Before deciding whether to source from an alternative supplier, they need to know exactly
-- which ingredients depend on that supplier, so they can assess the impact on the menu.
--
-- Hint: Write a query to find the names of all ingredients supplied by 'Freshest Farm Produce'.

-- Bonus: The dataset is identical in the MongoDB database, meaning the same business insight can be retrieved.
-- Write the equivalent query for MongoDB. See query_task4_bonus.mongodb.js

-- ---------------------------------------------------------------
-- Your thinking process (required)
/*
1 โจทย์ให้เราหาว่าถ้า Freshest Farm Produce ไม่มาส่งของ
2 เราต้องดึงข้อมูล ingredients ออกมาดูก่อน ว่า Freshest Farm Produce ส่งอะไรให้เราบ้าง

SELECT *
FROM Ingredients

3 จากด้านบนเราจะได้ ingredients ที่มี supplier_id เราจะ JOIN ตารางกับ supplier db

SELECT 
  i.name AS ingredient_name, ** เราจะเป็นต้องเปลี่ยนชื่อเพราะ column มีชื่อเดียวกัน
  s.name AS supplier_name ** เราจะเป็นต้องเปลี่ยนชื่อเพราะ column มีชื่อเดียวกัน
FROM Ingredients i
JOIN Suppliers s USING (supplier_id);

จะเห็นได้ว่าจาก * ต้องเปลี่ยนเป็นการสั่งตารางเฉพาะ เพราะเป็นการสั่งให้ sql นำตารางไหน มารวมกัน

4 จาก code ด้านบนเราจะ filter ตารางโดยใข้ WHERE (เพิ่ม WHERE s.name = 'Freshest Farm Produce';)

SELECT 
  i.name AS ingredient_name,
  s.name AS supplier_name
FROM Ingredients i
JOIN Suppliers s USING (supplier_id)
WHERE s.name = 'Freshest Farm Produce';

5 code ด้านจะบอกเราว่า Freshest Farm Produce ขายอะไรให้เราบ้าง แล้วนี่คือคำตอบ

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
  i.name AS ingredient_name,
  s.name AS supplier_name
FROM Ingredients i
JOIN Suppliers s USING (supplier_id)
WHERE s.name = 'Freshest Farm Produce';