
use("monge")

db.assignments.insertMany([
    { course_id: ObjectId("67e4e06d96e34d84278111f2"), title: "Binary Trees", due_date: "2025-04-15" },
    { course_id: ObjectId("67e4e06d96e34d84278111f3"), title: "Matrix Multiplication", due_date: "2025-04-20" }
]);

// db.courses.find().pretty()