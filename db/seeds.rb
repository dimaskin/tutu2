msk = RailwayStation.create(name: "Москва")
spb = RailwayStation.create(name: "Санкт-Петербург")
nv  = RailwayStation.create(name: "Нижневартовск")
srg = RailwayStation.create(name: "Сургут")
 
r1 = Route.new(name: "Москва - Сургут - Нижневартовск")
r1.railway_stations << msk << srg << nv
r1.save
msk.update_position(r1,1)
msk.update_arrive_time(r1,11,45)
srg.update_position(r1,2)
srg.update_depart_time(r1,18,15)
srg.update_arrive_time(r1,4,0)
nv.update_position(r1,3)
nv.update_depart_time(r1,23,55)

r2 = Route.new(name: "Москва - Санкт-Петербург")
r2.railway_stations << msk << spb
r2.save
msk.update_position(r2,1)
msk.update_arrive_time(r2,1,14)
spb.update_position(r2,2)
spb.update_depart_time(r2,07,25)

t1 = Train.create(number: 1234, current_station: msk, route: r1)
c1 = t1.carriages.create(type: 'CompartmentCarriage')
c2 = t1.carriages.create(type: 'CompartmentCarriage')

t2 = Train.create(number: 9876, current_station: msk, route: r2)

r3 = Route.new(name: "Москва - Нижневартовск")
r3.railway_stations << msk << nv
r3.save
msk.update_position(r3,1)
msk.update_arrive_time(r3,15,10)
nv.update_position(r3,2)
nv.update_depart_time(r3,04,21)

t3 = Train.create(number: 4412, current_station: msk, route: r3)
t4 = Train.create(number: 4509, current_station: nv, route: r3)



#u_admin = User.create(email: "dd@mb-s.ru", password: "111111111", password_confirmation: "111111111", admin: true)