# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'

User.destroy_all
Day.destroy_all

user = User.create(username: "leigha", email: "leigha@me.me", password: "1234")

days =  []
5.times do 
    date = Time.now 
    title = Faker::Hipster.sentence
    content = Faker::Hipster.paragraph
    favorite = true 
    user_id = 1
    day = Day.create(date: date, title: title, content: content, favorite: favorite, user_id: user.id)
    days << day
end