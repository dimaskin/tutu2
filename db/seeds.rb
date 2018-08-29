msk = RailwayStation.create(name: "Москва")
spb = RailwayStation.create(name: "Санкт-Петербург")
nv  = RailwayStation.create(name: "Нижневартовск")
srg = RailwayStation.create(name: "Сургут")

r1 = Route.create(name: "Москва - Сургут - Нижневартовск")
r1.railway_stations << msk << srg << nv
#set staiton_position manual
r1_msk = RailwayStationsRoute.where(route: r1).where(railway_station: msk)
r1_msk.update(position: 1)
r1_msk.update(depart_hour: 11)
r1_msk.update(depart_minute: 45)
r1_srg = RailwayStationsRoute.where(route: r1).where(railway_station: srg)
r1_srg.update(position: 2)
r1_srg.update(arrive_hour: 4)
r1_srg.update(arrive_minute: 0)
r1_srg.update(depart_hour: 18)
r1_srg.update(depart_minute: 15)
r1_nv = RailwayStationsRoute.where(route: r1).where(railway_station: nv)
r1_nv.update(position: 3)
r1_nv.update(arrive_hour: 23)
r1_nv.update(arrive_minute: 55)

r2 = Route.create(name: "Москва - Санкт-Петербург")
r2.railway_stations << msk << spb
#set staiton_position manual
RailwayStationsRoute.where(route: r2).where(railway_station: msk).update(position: 1)
RailwayStationsRoute.where(route: r2).where(railway_station: spb).update(position: 2)

t1 = Train.new
t1.number = 1234
t1.current_station = msk
t1.route = r1
t1.save

c1 = SvCarriage.new(bottom_seats: 20)
c1.train = t1
c1.save
c2 = SvCarriage.new(bottom_seats: 30)
c2.train = t1
c2.save
c3 = EconomyCarriage.new(bottom_seats: 40)
c3.train = t1
c3.save

t2 = Train.new
t2.number = 9876
t2.current_station = msk
t2.route = r2
t2.save