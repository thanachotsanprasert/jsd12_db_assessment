// Task 1: Budget Meal Deal
// The owner wants to introduce a budget-friendly meal deal promotion and needs to identify
// which menu items could be included. To qualify, an item must be priced under $10.00,
// so they can offer good value without cutting too deep into margins.
//
// Hint: Write a query to find all menu items in the menu_items collection that have a price less than 10.00.

// Bonus: The dataset is identical in the PostgreSQL database, meaning the same business insight can be retrieved.
// Write the equivalent query for PostgreSQL. See query_task1_bonus.sql

// ---------------------------------------------------------------
// Your thinking process (required)
/*
1 ร้านต้องการให้เรา filter เมนูที่มีราคาต่ำกว่า 10.00 เท่ากับต้อง filter less then 10 (equal to 10 ไม่ได้)
2 เริ่มจาก

use("chrome-burger-db")
db.menu_items.find({});

เราจะได้เมนูทั้งหมดมา ซึ่งจะสังเกตุได้ว่าทุกเมนูมี price: numberdecimal ('xx.xx')
3 ต้องการ filter เลยใช้ $lt และ price: { $lt: NumberDecimal("10.00") }
});

***เข้าใจ $lt แต่ไม่เข้าใจ price: { $lt: NumberDecimal("10.00") } เลย code นี้ถาม AI มา่

แต่ทั้งนี้ในความเข้าใจพื้นฐาน เราต้องการคำสั่ง ที่ filter ข้อมูลจาก menu_items ที่ price: less then 10.00

พอไปเปิด menu item เช็คแล้วพบว่า price โชว์ Decimal128 แต่เวลา query มาโชว์ NumberDecimal

เลยไป input ai อีกครั้งและขอคำสั่งที่เราสามรถ filter ทั้งสองแบบ Decimal128 และ NumberDecimal จึงได้ query 

use("chrome-burger-db")
db.menu_items.find({
  $expr: {
    $lt: ["$price", NumberDecimal("10.00")]
  }
});

ส่วนที่เข้าใจ 

use("chrome-burger-db")
db.menu_items.find({})

ในส่วน

$expr: {
    $lt: ["$price", NumberDecimal("10.00")]
  }
});

ไม่เข้าใจ

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
db.menu_items.find({
  $expr: {
    $lt: ["$price", NumberDecimal("10.00")]
  }
});