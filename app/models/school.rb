class School < ActiveRecord::Base
  attr_accessible :gmaps, :latitude, :location, :longitude, :name
end
