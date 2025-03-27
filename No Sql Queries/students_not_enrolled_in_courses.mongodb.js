use("monge")

db.students.aggregate([
    { $lookup: { from: "enrollments", localField: "_id", foreignField: "student_id", as: "enrollment" } },
    { $match: { "enrollment": { $size: 0 } } },
    { $project: { name: 1, email: 1 } }
]);