# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

10.times do
  Department.create(
    name: Faker::Job.field
  )
end

100.times do |i|
  Doctor.create(
    name: Faker::FunnyName.name,
    email: Faker::Internet.email,
    specialty: "Sex",
    department_id: Random.rand(1..10),
    password: "helloworld"
  )
end
