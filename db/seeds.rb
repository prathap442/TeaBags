# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


#Dude please keep this in mind that we will get root node when we mention parent during the root creation
# women = Page.create(name: 'Subscription1',content:"star wars")
# binding.pry
# puts women
# women_bags = Page.create(name: 'Bags', parent: women)
# puts women_bags
# women_clothes = Page.create(name: 'Clothes', parent: women)
# puts women_clothes


100.times do 
    Product.create(name: Faker::Name.first_name,price: Random.rand(27187..3827837),variant_id: Random.rand(111..999))
end