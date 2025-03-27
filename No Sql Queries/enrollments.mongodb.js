
use("monge")

// db.enrollments.insertMany([
//     { student_id: ObjectId("66000001a1b2c3d4e5f67890"), course_id: ObjectId("67e4e06d96e34d84278111f2") },
//     { student_id: ObjectId("66000002a1b2c3d4e5f67891"), course_id: ObjectId("67e4e06d96e34d84278111f2") },
//     { student_id: ObjectId("66000003a1b2c3d4e5f67892"), course_id: ObjectId("67e4e06d96e34d84278111f3") }
// ]);

db.enrollments.find().pretty()
// db.getCollectionNames()