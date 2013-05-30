class School < ActiveRecord::Base
  validates :name, :location, :presence => :true

  attr_accessible :gmaps, :latitude, :location, :longitude, :name
  has_many :stops, :dependent => :destroy
  has_many :trips, :through => :stops

  acts_as_gmappable
  def gmaps4rails_address
  	"#{self.name}, #{self.location}"
  end
end
