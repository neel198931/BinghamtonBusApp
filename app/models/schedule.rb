class Schedule < ActiveRecord::Base
  # attr_accessible :title, :body
  belongs_to :bus
  belongs_to :stop  
end
