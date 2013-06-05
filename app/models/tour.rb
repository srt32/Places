class Tour < ActiveRecord::Base
  attr_accessible :description, :end_time, :f, :m, :name, :r, :sa, :school_id, :start_time, :su, :t, :w
  validates :name, :start_time, :end_time, :presence => :true

  belongs_to :school
end
