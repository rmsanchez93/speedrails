# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# destroy all models
SpeedRail.destroy_all
Product.destroy_all
SpeedRailProduct.destroy_all
Bartender.destroy_all


# create speedrail
sr1 = SpeedRail.create!(location: 'speed rail 1')
sr2 = SpeedRail.create!(location: 'speed rail 2')
sr3 = SpeedRail.create!(location: 'speed rail 3')

# create products (I want 10)

jd = Product.create!(name:"Jack Daniels", size: 'L', par:75, size_in_oz:750)
rum = Product.create!(name:"Captain Morgan's Spiced Rum", size: 'L', par:50, size_in_oz:750)
t = Product.create!(name:"Don Julio Anejo", size: 'M', par:45, size_in_oz:500)
v = Product.create!(name:"Deep Eddy Vodka", size: 'L', par:65, size_in_oz:750)
g = Product.create!(name:"Gray Whale", size: 'M', par:36, size_in_oz:450)
t2 = Product.create!(name:"Jose Cuervo", size: 'L', par:80, size_in_oz:750)
s = Product.create!(name:"Smirnoff", size: 'L', par:75, size_in_oz:750)
m = Product.create!(name:"Malibu Rum", size: 'L', par:70, size_in_oz:750)
h = Product.create!(name:"Lame hypnotiq", size: 'L', par:60, size_in_oz:750)
l = Product.create!(name:"bad liquor", size: 'L', par:40, size_in_oz:750)

# hire some bartenders to work

r = Bartender.create!(name: "raul", email: 'raulsg93@gmail.com', password: 'tacos', age: 27, speed_rail_id: sr1.id)
i = Bartender.create!(name: "israel", email: 'israel@gmail.com', password: 'alsotacos', age: 25, speed_rail_id: sr2.id)
g = Bartender.create!(name: "gadi", email: 'gadi@gmail.com', password: 'nottacos', age: 29, speed_rail_id: sr3.id)


# add product to each speedrail 
SpeedRail.all.each do | sr |
    puts "we are in speedrail : #{sr.location}"
    Product.all.sample(10).each do | p |
        puts "we are working on product : #{p.name}"
        random_number = rand(5...10)
        SpeedRailProduct.create!(speed_rail_id: sr.id, product_id: p.id, qty: random_number)
    end
end


puts 'this is the end of our seed file'