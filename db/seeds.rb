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

t1 = Train.create(number: 1234, current_station: msk, route: r1)
t2 = Train.create(number: 9876, current_station: msk, route: r2)

r3 = Route.create(name: "Москва - Нижневартовск")
r3.railway_stations << msk << nv
#set staiton_position manual
r3_msk = RailwayStationsRoute.where(route: r3).where(railway_station: msk)
r3_msk.update(position: 1)
r3_msk.update(depart_hour: 3)
r3_msk.update(depart_minute: 45)
r3_nv = RailwayStationsRoute.where(route: r3).where(railway_station: nv)
r3_nv.update(position: 2)
r3_nv.update(arrive_hour: 14)
r3_nv.update(arrive_minute: 55)

t3 = Train.create(number: 4412, current_station: msk, route: r3)
t4 = Train.create(number: 4509, current_station: nv, route: r3)
