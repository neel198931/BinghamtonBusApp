class LocationController < ApplicationController
  def new
  end

  def create
    curlong = params[:longitude]
    curlat  = params[:latitude]
    destlong = params[:destlongitude]
    destlat = params[:destlatitude]
    
    @curstops = Stop.where("longitude = ? AND latitude = ?", curlong, curlat)
    @deststops = Stop.where("longitude = ? AND latitude = ?",destlong, destlat)

    current_Stop = @curstops[0].id
    destination_Stop = @deststops[0].id


   # Get Schedule id of all buses for the two stop ids
    @possible_buses = Schedule.where(stop_id: [current_Stop, destination_Stop]).where("stop_id = ?",current_Stop).pluck(:bus_id)
    @possible_buses_times = Schedule.where(stop_id: [current_Stop, destination_Stop]).where("stop_id = ?",current_Stop).pluck(:id) 
    
    #store bus ids of all the possible buses to take
    @buses = Array.new
    @possible_buses.each do |bus|
    	temp = Bus.find(bus)
    	@buses.push(temp.name)
    end
    # store the arrival time of each possible buses to take
    @times = Array.new
    @possible_buses_times.each do|sched|
    	temp = Schedule.find(sched)
    	@times.push(temp.arrival_time)
    end

   
   @size = @buses.length    

    
    

      render :index
  end
  

  def index
  end
  
end
