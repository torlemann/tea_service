# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
customer_1 = Customer.create!(first_name: "Ralph", last_name: "Piccarro", email: "shmoly@shmomail.com", street_address: "1400 Dis Street")
tea_1 = Tea.create!(title: "Lapsang Souchong", description: "dark and smokey", temperature: 180, brew_time: 5)

