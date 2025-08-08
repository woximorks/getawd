fitness  = Idea.find_or_create_by!(title: "Fitness")
career   = Idea.find_or_create_by!(title: "Career")
social   = Idea.find_or_create_by!(title: "Social")
travel   = Idea.find_or_create_by!(title: "Travel")
learning = Idea.find_or_create_by!(title: "Learning")

# Use variables so tasks.rb won't explode
$goal_run = Goal.create!(
  title: "100 Pushups",
  description: "Train for and complete 100 pushups.",
  due_date: Date.today + 9,
  priority: 4,
  category: "Workout",
  status: 2,
  completed_at: nil,
  idea: fitness
)

$goal_project = Goal.create!(
  title: "Complete Autobiography",
  description: "Draft and finalize the autobio.",
  due_date: Date.today + 11,
  priority: 1,
  category: "Work",
  status: 1,
  completed_at: nil,
  idea: career
)

$goal_book = Goal.create!(
  title: "If you scared go to church",
  description: "Cubed Ice",
  due_date: Date.today + 21,
  priority: 5,
  category: "Development",
  status: 2,
  completed_at: nil,
  idea: learning
)
