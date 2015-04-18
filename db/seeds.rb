# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
bus_list = ["LRS", "Oakdale", "WS", "RES", "DCR"]

bus_list.each do |bus|
		Bus.create( name: bus)
	end

# Generate test values for Stop Table
stop_list = ["Downtown", "Resident", "Dilingers", "Price Chopper", "Walmart"]
long = 123
lat = 456
stop_list.each do |stop|
		Stop.create(name: stop, longitude: long, latitude: lat)
		long += 50
		lat += 50
end

#Generate test values for Schedule table

arrival_list = ["2:00:00", "3:00:00", "4:00:00"]
arrival_list1= ["2:30:00","3:30:00", "4:30:00"]
arrival_list2= ["3:00:00", "4:00:00", "5:00:00"]
arrival_list3= ["3:30:00","4:30:00","5:30:00"]

busId = 1
stopId = 1
arrival_list.each do |time|
	sched = Schedule.new
	sched.arrival = time
    bus = Bus.find(busId)
    stop = Stop.find(stopId)
    bus.schedules << sched
    stop.schedules << sched
end



busId = 2
stopId = 1
arrival_list1.each do |time|
	sched = Schedule.new
	sched.arrival = time
    bus = Bus.find(busId)
    stop = Stop.find(stopId)
    bus.schedules << sched
    stop.schedules << sched
end

busId = 1
stopId = 3
arrival_list2.each do |time|
	sched = Schedule.new
	sched.arrival = time
    bus = Bus.find(busId)
    stop = Stop.find(stopId)
    bus.schedules << sched
    stop.schedules << sched
end

busId = 2
stopId = 3
arrival_list3.each do |time|
	sched = Schedule.new
	sched.arrival = time
    bus = Bus.find(busId)
    stop = Stop.find(stopId)
    bus.schedules << sched
    stop.schedules << sched
end
