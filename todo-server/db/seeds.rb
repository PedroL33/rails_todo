# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
user = User.create(username: "Peter", password: "password")

todos = Todo.create([
  {
    title: "First",
    priority: 1,
    completed: false,
    user: user
  },{
    title: "Second",
    priority: 2,
    completed: false,
    user: user
  },{
    title: "Third",
    priority: 3,
    completed: false,
    user: user
  },{
    title: "Fourth",
    priority: 4,
    completed: false,
    user: user
  },{
    title: "Fifth",
    priority: 5,
    completed: false,
    user: user
  }
])