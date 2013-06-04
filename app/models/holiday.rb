class Holiday < ActiveRecord::Base
  attr_accessible :end_date, :notes, :school_id, :start_date

  validates :end_date, :start_date, :notes, :presence => :true

  belongs_to :school
end
