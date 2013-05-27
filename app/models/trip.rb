class Trip < ActiveRecord::Base
  attr_accessible :date_end, :date_start, :name, :notes, :user_id, :stops_attributes
  belongs_to :user

  has_many :stops, :dependent => :destroy
  accepts_nested_attributes_for :stops, :reject_if => lambda { |a| a[:school_id].blank? }, :allow_destroy => true

  has_many :schools, :through => :stops
end
