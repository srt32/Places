class Trip < ActiveRecord::Base
  attr_accessible :date_end, :date_start, :name, :notes, :user_id, :stops_attributes
  validates :name, :date_end, :date_start, :presence => :true

  belongs_to :user
  has_many :schools, :through => :stops

  has_many :stops, :dependent => :destroy
  accepts_nested_attributes_for :stops, :reject_if => lambda { |a| a[:school_id].blank? }, :allow_destroy => true
end
