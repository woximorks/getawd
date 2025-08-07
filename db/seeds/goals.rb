fitness = Idea.find_or_create_by!(title: "Fitness")
career  = Idea.find_or_create_by!(title: "Career")
social  = Idea.find_or_create_by!(title: "Social")
travel  = Idea.find_or_create_by!(title: "Travel")
learning = Idea.find_or_create_by!(title: "Learning")

Goal.create!(
  title: "Run a 5K",
  description: "Train for and complete a 5K run.",
  due_date: Date.today + 5,
  priority: 4,
  category: "Health",
  status: 2,
  completed_at: nil,
  idea: fitness
)

Goal.create!(
  title: "Complete Project Proposal",
  description: "Draft and finalize the proposal document for the new project.",
  due_date: Date.today + 14,
  priority: 1,
  category: "Work",
  status: 1,
  completed_at: nil,
  idea: career
)

Goal.create!(
  title: "Read a New Book",
  description: "Finish reading 'Atomic Habits' and take notes.",
  due_date: Date.today + 3,
  priority: 5,
  category: "Learning",
  status: 2,
  completed_at: nil,
  idea: learning
)