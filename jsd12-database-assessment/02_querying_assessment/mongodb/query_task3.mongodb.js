// Task 3: Stock Replenishment Check
// Before placing the weekly supply order, the manager wants to avoid over-ordering ingredients
// that are already well-stocked. They need a list of every ingredient with a stock level
// of 100 or more so those can be deprioritised in this week's order.
//
// Hint: Write a query to find all ingredients in the ingredients collection that have a stock_level of 100.00 or more.

// Bonus: The dataset is identical in the PostgreSQL database, meaning the same business insight can be retrieved.
// Write the equivalent query for PostgreSQL. See query_task3_bonus.sql

// ---------------------------------------------------------------
// Your thinking process (required)
/*
1 ผม re-use code จากข้อ (1)
code จาก ข้อ 1

use("chrome-burger-db")
db.menu_items.find({
  $expr: {
    $lt: ["$price", NumberDecimal("10.00")]
  }
});

2 ผมเปลี่ยน menu_items เป็น ingredients
3 ผมเปลี่ยน price เป็น stock_level
4 ผมเปลี่ยน 10.00 เป็น 100.00
5 ผม recheck output จาก query ถูกต้อง (ไปที่ db indredient) แล้ว eyes scanning

use("chrome-burger-db")
db.ingredients.find({
  $expr: {
    $lt: ["$stock_level", NumberDecimal("100.00")]
  }
});

6 code ด้านบน คือคำตอบครับ

หมายเหตุ ผมจะใช้เวลาเสาร์ อาทิตย์นี้ ทำความเข้าใจว่า 

$expr: {
    $lt: ["$stock_level", NumberDecimal("100.00")]
  }
});

ทำงานอย่างไีร เพราะนี่เป็น query ที่ generate จาก ai มา
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
db.ingredients.find({
  $expr: {
    $lt: ["$stock_level", NumberDecimal("100.00")]
  }
});