use("monge")

db.courses.insertMany([
    { _id: ObjectId("88000001c1d2e3f4g5h67890"), name: "Data Structures", teacher_id: ObjectId("77000001b1c2d3e4f5g67890") },
    { _id: ObjectId("88000002c1d2e3f4g5h67891"), name: "Linear Algebra", teacher_id: ObjectId("77000002b1c2d3e4f5g67891") }
]);