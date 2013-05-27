class Stop < ActiveRecord::Base
  attr_accessible :school_id, :trip_id
  belongs_to :trip
  belongs_to :school
end
