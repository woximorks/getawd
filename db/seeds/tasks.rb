Task.create!(
  task_name: "Edit this task",
  description: "Navigate to seeds.rb file, you'll find me :D.",
  status: 0,
  priority: 2,
  start_date: Date.today,
  due_date: Date.today + 7,
  completion_date: nil,
  assigned_to: "Alice",
  estimated_time: 4,
  actual_time: nil
)

Task.create!(
  task_name: "Seed the database with some starter tasks",
  description: "Just run rails db:seed in the terminal",
  status: 1,
  priority: 1,
  start_date: Date.today - 2,
  due_date: Date.today + 5,
  completion_date: nil,
  assigned_to: "Bob",
  estimated_time: 3,
  actual_time: nil
)

Task.create!(
  task_name: "Learn postgreSQL",
  description: "Update this content in the database directly.",
  status: 0,
  priority: 3,
  start_date: Date.today - 1,
  due_date: Date.today + 3,
  completion_date: nil,
  assigned_to: "Charlie",
  estimated_time: 2,
  actual_time: nil
)