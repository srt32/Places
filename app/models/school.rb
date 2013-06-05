class School < ActiveRecord::Base
  validates :name, :location, :presence => :true

  attr_accessible :gmaps, :latitude, :location, :longitude, :name
  has_many :stops, :dependent => :destroy
  has_many :trips, :through => :stops
  has_many :holidays, :dependent => :destroy
  has_many :tours, :dependent => :destroy

  geocoded_by :schoolNameLocation
  after_validation :geocode, :if => :location_changed?

  acts_as_gmappable

  def gmaps4rails_address
  	"#{self.schoolNameLocation}"
  end

  def schoolNameLocation
  	"#{self.name}, #{self.location}"
  end
end
