use("monge")

db.assignments.aggregate([
    { $group: { _id: "$course_id", total_assignments: { $sum: 1 } } },
    { $lookup: { from: "courses", localField: "_id", foreignField: "_id", as: "course" } },
    { $unwind: "$course" },
    { $project: { "course.name": 1, total_assignments: 1 } }
])