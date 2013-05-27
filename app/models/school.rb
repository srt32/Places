class School < ActiveRecord::Base
  attr_accessible :gmaps, :latitude, :location, :longitude, :name

  acts_as_gmappable

  def gmaps4rails_address
  	"#{self.name}, #{self.location}"
  end
end
