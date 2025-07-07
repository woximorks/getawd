Goal.create!(
  title: "Complete Project Proposal",
  description: "Draft and finalize the proposal document for the new project.",
  due_date: Date.today + 14,
  priority: 1,
  category: "Work",
  status: 1,
  completed_at: nil
)

Goal.create!(
  title: "Plan Weekend Trip",
  description: "Research destinations and book accommodations for the weekend getaway.",
  due_date: Date.today + 10,
  priority: 3,
  category: "Personal",
  status: 2,
  completed_at: nil
)

Goal.create!(
  title: "Read a New Book",
  description: "Finish reading 'Atomic Habits' and take notes.",
  due_date: Date.today + 3,
  priority: 5,
  category: "Learning",
  status: 2,
  completed_at: nil
)

Goal.create!(
  title: "Submit Tax Documents",
  description: "Gather and submit all required tax documents before the deadline.",
  due_date: Date.today + 2,
  priority: 2,
  category: "Finance",
  status: 2,
  completed_at: nil
)

Goal.create!(
  title: "Run a 5K",
  description: "Train for and complete a 5K run.",
  due_date: Date.today + 5,
  priority: 4,
  category: "Health",
  status: 2,
  completed_at: nil
)