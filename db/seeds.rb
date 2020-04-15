# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

  50.times do
    User.create!(email: Faker::Internet.email, password: Faker::Internet.password, points: rand(1..1000))
  end

  100.times do
    q = Question.create!(name: Faker::Food.vegetables, user_id: User.all.sample.id, created_at: Faker::Date)
    Answer.create!(question_id: q.id, name: "vegetable", correct: true)
    Answer.create!(question_id: q.id, name: "dish", correct: false)
    Answer.create!(question_id: q.id, name: "fruit", correct: false)
  end

  100.times do
    q = Question.create!(name: Faker::Food.dish, user_id: User.all.sample.id, created_at: Faker::Date)
    Answer.create!(question_id: q.id, name: "dish", correct: true)
    Answer.create!(question_id: q.id, name: "fruit", correct: false)
    Answer.create!(question_id: q.id, name: "vegetable", correct: false)
  end

  100.times do
    q = Question.create!(name: Faker::Food.fruits, user_id: User.all.sample.id, created_at: Faker::Date)
    Answer.create!(question_id: q.id, name: "fruit", correct: true)
    Answer.create!(question_id: q.id, name: "dish", correct: false)
    Answer.create!(question_id: q.id, name: "vegetable", correct: false)
  end
