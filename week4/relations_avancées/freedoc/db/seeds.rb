# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


require 'faker'

20.times do
    d = Doctor.create!(first_name: Faker::Artist.name, last_name: Faker::DcComics.name, specialty: "General")
end

20.times do
    p = Patient.create!(first_name: Faker::Artist.name, last_name: Faker::DcComics.name)
end

20.times do
    a = Appointment.create!(doctor_id: Faker::Number.between(1, 20), patient_id: Faker::Number.between(1, 20), date: '11/05/2019')
end


