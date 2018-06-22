# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
#5.times do |i|
#    Product.create(name: "Product ##{i}", description: "A product.")
#end
msk = RailwayStation.create(name: "Москва")
spb = RailwayStation.create(name: "Санкт-Петербург")
nv  = RailwayStation.create(name: "Нижневартовск")
srg = RailwayStation.create(name: "Сургут")

r1 = Route.create(name: "Москва-Сургут-Нижневартовск")
r1.railway_stations << msk << srg << nv

t1 = Train.new
t1.number = 1234
t1.current_station = msk
t1.route = r1
t1.save