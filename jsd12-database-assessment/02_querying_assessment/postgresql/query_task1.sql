-- Task 1: Sides Menu Board
-- The owner wants to update the printed menu board that displays only the side dishes.
-- They need a list of every item in the 'Side' category along with its current price,
-- so the designer can produce an accurate board without having to check each item manually.
--
-- Hint: Write a query to find the name and price of all menu items that are in the 'Side' category.

-- Bonus: The dataset is identical in the MongoDB database, meaning the same business insight can be retrieved.
-- Write the equivalent query for MongoDB. See query_task1_bonus.mongodb.js

-- ---------------------------------------------------------------
-- Your thinking process (required)
/* 1. โจทย์ให้หาเมนูที่อยู่ใน category side
2. เราอยากเรียกตาราง menu ทั้งหมดมาดูก่อน SELECT * FROM MenuItems;
3. มี side 2 รายการ 
4. ใช้ WHERE ในการ filter category = Side
5. SELECT * FROM MenuItems WHERE category = "Side";
6. เราก็จะได้ row ที่มีข้อมูลทั้งหมด แต่โจทย์ต้องการเฉพาะ name + price
7. เราสามารถเลือก column ที่จะแสดงได้จาก SELECT
8. จากด้านบน SELECT * คือการเรียกตารางทั้งหมด
9. เปลี่ยน * เป็น name, price
10. SELECT name, price FROM MenuItems WHERE category = 'Side'; คือคำตอบ
*/

-- ---------------------------------------------------------------
-- Before writing your query, explain in your own words how you
-- interpreted the task, what data you need, which table(s) are
-- involved, and what SQL concepts you plan to use.
-- Write in English or Thai. Do not skip this step.
--
-- Your thinking:
--

SELECT name, price FROM MenuItems WHERE category = 'Side';