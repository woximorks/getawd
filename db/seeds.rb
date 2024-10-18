# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

BlogPost.create!(
  title: "My First Blog Post",
  body: "This content can be edited in the seed file",
  description: "Some short description, editable in the seed file.",
  image: "image1" #referenced image filename within app/assets/images(do not include .png or other filetype)
)

Project.create!(
  title: "My First Project",
  description: "This content can be edited in the seed file",
  image: "image1", #referenced image filename within app/assets/images(do not include .png or other filetype)
  url: "someurltotheproject.com"
)

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

Video.create!(
  title: "Some Video Title",
  description: "Some video description, editable in the seed.rb file",
  youtube_id: "T5fi5Bkn5qk?si=bUJDUXuGRnWHW9Fk" # See readme
)