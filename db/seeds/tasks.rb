# Create Ideas
fitness  = Idea.find_or_create_by!(title: "Fitness")
career   = Idea.find_or_create_by!(title: "Career")
social   = Idea.find_or_create_by!(title: "Social")
travel   = Idea.find_or_create_by!(title: "Travel")
learning = Idea.find_or_create_by!(title: "Learning")

# Create Goals
goal_run = Goal.create!(
  title: "Run a 5K",
  description: "Train for and complete a 5K run.",
  due_date: Date.today + 5,
  priority: 4,
  category: "Health",
  status: 2,
  completed_at: nil,
  idea: fitness
)

goal_project = Goal.create!(
  title: "Complete Project Proposal",
  description: "Draft and finalize the proposal document for the new project.",
  due_date: Date.today + 14,
  priority: 1,
  category: "Work",
  status: 1,
  completed_at: nil,
  idea: career
)

goal_book = Goal.create!(
  title: "Read a New Book",
  description: "Finish reading 'Atomic Habits' and take notes.",
  due_date: Date.today + 3,
  priority: 5,
  category: "Learning",
  status: 2,
  completed_at: nil,
  idea: learning
)

# Create Tasks tied to each Goal
Task.create!(
  task_name: "Buy running shoes",
  description: "Get a decent pair for training.",
  due_date: Date.today + 1,
  estimated_time: 60,
  actual_time: 60,
  status: 3,
  goal: goal_run,
  completion_date: Date.today
)

Task.create!(
  task_name: "Outline key proposal sections",
  description: "Break project into main deliverables.",
  due_date: Date.today + 3,
  estimated_time: 120,
  actual_time: 90,
  status: 2,
  goal: goal_project
)

Task.create!(
  task_name: "Finish last 3 chapters",
  description: "Wrap up the reading.",
  due_date: Date.today + 1,
  estimated_time: 90,
  actual_time: 100,
  status: 3,
  goal: goal_book,
  completion_date: Date.today - 1
)