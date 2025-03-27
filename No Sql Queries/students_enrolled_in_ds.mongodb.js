use("monge")

db.students.aggregate([
    { $lookup: { from: "enrollments", localField: "_id", foreignField: "student_id", as: "enrollments" } },
    { $unwind: "$enrollments" },
    { $lookup: { from: "courses", localField: "enrollments.course_id", foreignField: "_id", as: "course" } },
    { $unwind: "$course" },
    { $match: { "course.name": "Data Structures" } },
    { $project: { name: 1, email: 1, major: 1 } }
]);