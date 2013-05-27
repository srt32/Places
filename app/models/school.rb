class School < ActiveRecord::Base
  attr_accessible :gmaps, :latitude, :location, :longitude, :name
  has_many :stops
  has_many :trips, :through => :stops

  acts_as_gmappable
  def gmaps4rails_address
  	"#{self.name}, #{self.location}"
  end
end
