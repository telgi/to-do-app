# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

terry = User.create(username: 'telgi', password: 'scooby')
joe = User.create(username: 'jogi', password: 'scrappy')

terry.tasks.create([
  {title: "Drop it like it's hot", details: "This shit is lit!"},
  {title: "Go to bed", details: "Sleepy times"},
  {title: "Take to the skies", details: "Holiday time"}
])

joe.tasks.create([
  {title: "Trim some fat", details: "No more junk food"},
  {title: "Get up for work", details: "Being a teacher is exhausting"},
  {title: "Play some footie", details: "Score some screamers"}
])
