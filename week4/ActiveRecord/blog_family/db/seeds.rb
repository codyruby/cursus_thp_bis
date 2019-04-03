# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'

20.times do
  user = User.create!(first_name: Faker::Artist.name, last_name: Faker::DcComics.name, email: Faker::Internet.email)
end

20.times do
    g = Article.create!(user_id: Faker::Number.between(1, 20), title: Faker::Lorem.paragraphs, content: Faker::Internet.email)
end

5.times do
    v = Category.create!(article_id: Faker::Number.between(1, 20), name: Faker::Educator.subject)
end

