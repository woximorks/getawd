Task.create!(
  task_name: "Buy running shoes",
  description: "Get a decent pair for training.",
  due_date: Date.today + 1,
  estimated_time: 60,
  actual_time: 60,
  status: 3,
  goal: $goal_run,
  completion_date: Date.today
)

Task.create!(
  task_name: "Outline book chapters",
  description: "Break autobiography into parts.",
  due_date: Date.today + 3,
  estimated_time: 120,
  actual_time: 90,
  status: 2,
  goal: $goal_project
)

Task.create!(
  task_name: "Read 3 chapters",
  description: "Finish the second half of the book.",
  due_date: Date.today + 1,
  estimated_time: 90,
  actual_time: 100,
  status: 3,
  goal: $goal_book,
  completion_date: Date.today - 1
)
