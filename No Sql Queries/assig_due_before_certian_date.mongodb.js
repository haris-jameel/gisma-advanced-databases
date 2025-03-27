use("monge")

db.assignments.find({ due_date: { $lt: "2025-04-18" } });