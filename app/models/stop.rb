class Stop < ActiveRecord::Base
  attr_accessible :latitude, :longitude, :name
  has_many :schedules
end
