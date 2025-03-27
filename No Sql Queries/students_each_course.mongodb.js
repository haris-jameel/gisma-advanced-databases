use("monge")

db.enrollments.aggregate([
    { $group: { _id: "$course_id", total_students: { $sum: 1 } } },
    { $lookup: { from: "courses", localField: "_id", foreignField: "_id", as: "course" } },
    { $unwind: "$course" },
    { $project: { course_name: "$course.name", total_students: 1 } }
]);