msk = RailwayStation.create(name: "Москва")
spb = RailwayStation.create(name: "Санкт-Петербург")
nv  = RailwayStation.create(name: "Нижневартовск")
srg = RailwayStation.create(name: "Сургут")

r1 = Route.create(name: "Москва - Сургут - Нижневартовск")
r1.railway_stations << msk << srg << nv
#set staiton_position manual
RailwayStationsRoute.where(route: r1).where(railway_station: msk).update(station_position: 1)
RailwayStationsRoute.where(route: r1).where(railway_station: srg).update(station_position: 2)
RailwayStationsRoute.where(route: r1).where(railway_station: nv).update(station_position: 3)

r2 = Route.create(name: "Москва - Санкт-Петербург")
r2.railway_stations << msk << spb
#set staiton_position manual
RailwayStationsRoute.where(route: r2).where(railway_station: msk).update(station_position: 1)
RailwayStationsRoute.where(route: r2).where(railway_station: spb).update(station_position: 2)

t1 = Train.new
t1.number = 1234
t1.current_station = msk
t1.route = r1
t1.save

t2 = Train.new
t1.number = 9876
t1.current_station = msk
t1.route = r2
t1.save
