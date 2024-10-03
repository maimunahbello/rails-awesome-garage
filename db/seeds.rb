# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
Car.destroy_all
Owner.destroy_all
Review.destroy_all

owner1 = Owner.create!(nickname: 'CarLover')
owner2 = Owner.create!(nickname: 'AutoFanatic')

Car.create!(
  brand: 'Tesla',
  model: 'Model S',
  year: 2022,
  fuel: 'Electric',
  owner: owner1
)

Car.create!(
  brand: 'Ford',
  model: 'Mustang',
  year: 2020,
  fuel: 'Gasoline',
  owner: owner2
)
