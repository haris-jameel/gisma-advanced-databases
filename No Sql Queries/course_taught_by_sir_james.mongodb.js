use("monge")

// get all course taught by sir james
db.courses.aggregate([
    { $lookup: { from: "teachers", localField: "teacher_id", foreignField: "_id", as: "teacher" } },
    { $unwind: "$teacher" },
    { $match: { "teacher.name": "Dr. James" } },
    { $project: { name: 1 } }
]);