# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Cat.destroy_all

cat1 = Cat.create!(birthdate: "2015/01/01", color:"black", name: "Midnight", sex: "M", description: "Serene as the night")
cat2 = Cat.create!(birthdate: "2021/02/25", color:"white", name: "Olivia", sex: "F", description: "Fiesty as a tiger")
cat3 = Cat.create!(birthdate: "2011/02/25", color:"purple", name: "Yogurt", sex: "F", description: "Part of a healthy breakfast")
cat4 = Cat.create!(birthdate: "2016/02/25", color:"orange", name: "Garfield", sex: "M", description: "Give me Lasagna")
cat5 = Cat.create!(birthdate: "2014/02/25", color:"brown", name: "Odie", sex: "M", description: "Actually a dog in disguise")
cat6 = Cat.create!(birthdate: "2014/02/25", color:"black", name: "Kitty", sex: "F", description: "Meow meow meow meow =(^*^)=")