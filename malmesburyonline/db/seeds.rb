# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

w = Walk.first_or_create!(name: "From Court House to St. John's", description: 'A nice walk from ye ole Court House to St. Johns')

WalkSection.create!(name: 'Go This Way', image: 'IMG_8844.JPG', walk: w)
WalkSection.create!(name: 'Than This Way', image: 'IMG_8845.JPG', walk: w)
WalkSection.create!(name: 'Round Corner', image: 'IMG_8846.JPG', walk: w)
